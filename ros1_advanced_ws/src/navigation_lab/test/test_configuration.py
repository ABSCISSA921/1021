#!/usr/bin/env python3
"""Check sensor-selection and generated-map contracts against the actual world."""

from pathlib import Path
import runpy
import tempfile
import subprocess
import sys
import unittest
import xml.etree.ElementTree as ET

import yaml

PACKAGE = Path(__file__).resolve().parents[1]


def config(name):
    return yaml.safe_load((PACKAGE / "config" / name).read_text())


class ConfigurationTests(unittest.TestCase):
    def test_ekf_uses_independent_measurements_in_body_frame(self):
        ekf = config("ekf.yaml")
        self.assertEqual(ekf["world_frame"], "odom")
        self.assertEqual(ekf["base_link_frame"], "base_footprint")
        self.assertTrue(ekf["two_d_mode"])
        self.assertEqual(len(ekf["odom0_config"]), 15)
        self.assertEqual(len(ekf["imu0_config"]), 15)
        self.assertEqual([i for i, selected in enumerate(ekf["odom0_config"]) if selected], [6, 7, 11])
        self.assertEqual([i for i, selected in enumerate(ekf["imu0_config"]) if selected], [11])

    def test_costmap_frames_and_laser_clearing(self):
        self.assertEqual(config("global_costmap.yaml")["global_frame"], "map")
        self.assertEqual(config("local_costmap.yaml")["global_frame"], "odom")
        common = config("costmap_common.yaml")
        self.assertEqual(common["robot_base_frame"], "base_footprint")
        laser = common["obstacle_layer"]["laser"]
        self.assertTrue(laser["marking"])
        self.assertTrue(laser["clearing"])
        self.assertGreater(laser["raytrace_range"], laser["obstacle_range"])
        self.assertLess(laser["raytrace_range"], 8.0)

    def test_recovery_clears_the_configured_obstacle_layer(self):
        layers = config("move_base.yaml")["clear_obstacles"]["layer_names"]
        self.assertEqual(layers, ["obstacle_layer"])
        for name in ("global_costmap.yaml", "local_costmap.yaml"):
            self.assertTrue(set(layers).issubset({p["name"] for p in config(name)["plugins"]}))

    def test_simulation_has_one_odometry_tf_owner(self):
        launch = ET.parse(PACKAGE / "launch" / "simulation.launch").getroot()
        mobile = next(e for e in launch.findall("include") if "mobile_base.launch" in e.get("file"))
        tf_arg = next(a for a in mobile.findall("arg") if a.get("name") == "enable_odom_tf")
        self.assertEqual(tf_arg.get("value"), "$(eval not arg('use_ekf'))")
        ekf = next(e for e in launch.findall("include") if "ekf.launch" in e.get("file"))
        self.assertEqual(ekf.get("if"), "$(arg use_ekf)")

    def test_bundled_map_matches_static_world_and_axis_orientation(self):
        generator = runpy.run_path(str(PACKAGE / "scripts" / "generate_training_map.py"))
        world = PACKAGE.parent / "control_lab" / "worlds" / "learning_room.world"
        data = generator["map_bytes"](world)
        self.assertEqual(data, (PACKAGE / "maps" / "learning_room.pgm").read_bytes())
        pixels = data.split(b"255\n", 1)[1]
        self.assertEqual(len(pixels), 180 * 180)

        def at(x, y):
            col = int((x + 4.5) / 0.05)
            row = 179 - int((y + 4.5) / 0.05)
            return pixels[row * 180 + col]

        for x, y in ((1.25, 0.85), (-1.5, -1.1), (4.05, 0), (0, -4.05)):
            self.assertEqual(at(x, y), 0)
        for x, y in ((0, 0), (2.5, 0), (1.25, -0.85)):
            self.assertEqual(at(x, y), 254)
        self.assertEqual(at(4.4, 4.4), 205)

    def test_map_generator_preserves_existing_files(self):
        with tempfile.TemporaryDirectory() as target:
            sentinel = Path(target) / "learning_room.yaml"
            sentinel.write_text("user data\n")
            result = subprocess.run([
                sys.executable, str(PACKAGE / "scripts" / "generate_training_map.py"),
                "--world", str(PACKAGE.parent / "control_lab" / "worlds" / "learning_room.world"),
                "--output-dir", target,
            ], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
            self.assertNotEqual(result.returncode, 0)
            self.assertEqual(sentinel.read_text(), "user data\n")
            self.assertFalse((Path(target) / "learning_room.pgm").exists())


if __name__ == "__main__":
    unittest.main()
