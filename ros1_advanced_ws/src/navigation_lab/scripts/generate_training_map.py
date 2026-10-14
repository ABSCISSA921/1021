#!/usr/bin/env python3
"""Rasterize learning_room's static box collisions into a known (not SLAM) map."""

import argparse
from pathlib import Path
import subprocess
import xml.etree.ElementTree as ET

RESOLUTION = 0.05
ORIGIN = (-4.5, -4.5)
SIZE = 180


def pose(element):
    values = [float(v) for v in element.findtext("pose", "0 0 0 0 0 0").split()]
    if len(values) != 6 or any(abs(v) > 1e-9 for v in values[3:]):
        raise ValueError("The training-map generator supports only axis-aligned boxes")
    return values[:3]


def collision_bounds(world):
    boxes = []
    for model in ET.parse(world).getroot().findall(".//world/model"):
        if model.findtext("static", "false").lower() not in ("true", "1"):
            continue
        model_xyz = pose(model)
        for link in model.findall("link"):
            link_xyz = pose(link)
            for collision in link.findall("collision"):
                if collision.find("geometry/plane") is not None:
                    if model.get("name") == "ground":
                        continue
                    raise ValueError("Only the ground may have a plane collision")
                size = collision.findtext("geometry/box/size")
                if size is None:
                    raise ValueError("Expected box collision in training world")
                size = [float(v) for v in size.split()]
                collision_xyz = pose(collision)
                xyz = [sum(axis) for axis in zip(model_xyz, link_xyz, collision_xyz)]
                # The map represents the horizontal laser plane above the floor.
                if xyz[2] - size[2] / 2 <= 0.25 <= xyz[2] + size[2] / 2:
                    boxes.append((xyz[0] - size[0] / 2, xyz[0] + size[0] / 2,
                                  xyz[1] - size[1] / 2, xyz[1] + size[1] / 2))
    if len(boxes) != 6:
        raise ValueError("Expected four walls and two obstacles; review changed world geometry")
    return boxes


def map_bytes(world):
    boxes = collision_bounds(world)
    pixels = bytearray()
    # PGM row zero is the top; ROS origin refers to the bottom-left corner.
    for row in range(SIZE):
        y = ORIGIN[1] + (SIZE - row - 0.5) * RESOLUTION
        for col in range(SIZE):
            x = ORIGIN[0] + (col + 0.5) * RESOLUTION
            pixel = 254 if -4.0 < x < 4.0 and -4.0 < y < 4.0 else 205
            if any(xmin <= x <= xmax and ymin <= y <= ymax
                   for xmin, xmax, ymin, ymax in boxes):
                pixel = 0
            pixels.append(pixel)
    header = "P5\n# Known geometric training map; not measured SLAM data\n180 180\n255\n"
    return header.encode("ascii") + pixels


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--world", type=Path, help="learning_room.world path")
    parser.add_argument("--output-dir", type=Path, required=True,
                        help="output directory; existing map files are never overwritten")
    args = parser.parse_args()
    if args.world is None:
        package = subprocess.check_output(["rospack", "find", "control_lab"], text=True).strip()
        args.world = Path(package) / "worlds" / "learning_room.world"
    data = map_bytes(args.world)
    args.output_dir.mkdir(parents=True, exist_ok=True)
    pgm = args.output_dir / "learning_room.pgm"
    metadata = args.output_dir / "learning_room.yaml"
    if pgm.exists() or metadata.exists():
        parser.error("output map already exists; choose a new output directory")
    with pgm.open("xb") as stream:
        stream.write(data)
    with metadata.open("x", encoding="utf-8") as stream:
        stream.write("# Generated from control_lab/worlds/learning_room.world, not SLAM.\n"
                     "image: learning_room.pgm\nresolution: 0.05\n"
                     "origin: [-4.5, -4.5, 0.0]\nnegate: 0\n"
                     "occupied_thresh: 0.65\nfree_thresh: 0.196\n")
    print(metadata)


if __name__ == "__main__":
    main()
