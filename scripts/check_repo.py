#!/usr/bin/env python3
"""Check owned docs/XML and declared workspace dependencies without ROS."""
import configparser
from pathlib import Path
import re
import subprocess
import sys
import xml.etree.ElementTree as ET
from urllib.parse import unquote, urlsplit

ROOT = Path(__file__).resolve().parents[1]
WORKSPACES = ("ros1_learning_ws", "ros1_advanced_ws", "dx_final")


def main():
    paths = subprocess.check_output(
        ["git", "ls-files", "-z", "--cached", "--others", "--exclude-standard"],
        cwd=ROOT).decode().split("\0")
    files = sorted({ROOT / name for name in paths if name and (ROOT / name).is_file()})
    config = configparser.ConfigParser()
    config.read(ROOT / ".gitmodules")
    modules = [ROOT / config.get(section, "path") for section in config.sections()]
    errors = []
    deferred = set()
    links = 0
    for path in files:
        if path.suffix in (".xml", ".launch", ".test", ".xacro"):
            try:
                ET.parse(path)
            except ET.ParseError as error:
                errors.append(f"{path.relative_to(ROOT)}: invalid XML: {error}")
        if path.suffix != ".md":
            continue
        content = re.sub(r"```.*?```", "", path.read_text(encoding="utf-8"), flags=re.S)
        for match in re.finditer(r"!?\[[^\]]*\]\((<?[^)\s]+>?)(?:\s+\"[^\"]*\")?\)", content):
            raw = match.group(1).strip("<>")
            url = urlsplit(raw)
            if url.scheme or url.netloc or not url.path:
                continue
            links += 1
            target = (path.parent / unquote(url.path)).resolve()
            if target.exists():
                continue
            uninitialized = next((module for module in modules
                                  if not (module / ".git").exists()
                                  and (target == module or module in target.parents)), None)
            if uninitialized:
                deferred.add(str(uninitialized.relative_to(ROOT)))
            else:
                errors.append(f"{path.relative_to(ROOT)}: missing link target: {raw}")

    # Include available third-party package manifests, but not their docs/source.
    packages = {}
    manifests = []
    for workspace in WORKSPACES:
        for path in (ROOT / workspace / "src").rglob("package.xml"):
            try:
                xml = ET.parse(path).getroot()
            except ET.ParseError as error:
                errors.append(f"{path.relative_to(ROOT)}: {error}")
                continue
            name = xml.findtext("name")
            if not name:
                errors.append(f"{path.relative_to(ROOT)}: missing package name")
                continue
            key = (workspace, name)
            if key in packages:
                errors.append(f"{workspace}: duplicate package {name}")
            packages[key] = path
            manifests.append((workspace, path, xml))
    for workspace, path, xml in manifests:
        for child in xml:
            if child.tag != "depend" and not child.tag.endswith("_depend"):
                continue
            dependency = (child.text or "").strip()
            for other in WORKSPACES:
                crosses_project = (workspace == "dx_final") != (other == "dx_final")
                if (crosses_project and packages.get((other, dependency)) in files
                        and (workspace, dependency) not in packages):
                    errors.append(f"{path.relative_to(ROOT)}: cross-project dependency {dependency}")
    for path in files:
        if any(part in path.parts for part in ("ros1_learning_ws", "ros1_advanced_ws")):
            if path.name in ("CMakeLists.txt", "package.xml") or path.suffix == ".launch":
                if "dx_final" in path.read_text(encoding="utf-8"):
                    errors.append(f"{path.relative_to(ROOT)}: references independent project")
    for error in errors:
        print("ERROR:", error)
    if deferred:
        print("Deferred links into uninitialized submodules:", ", ".join(sorted(deferred)))
    print(f"Checked {len(files)} owned files, {links} local links, {len(packages)} package manifests.")
    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
