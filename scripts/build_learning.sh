#!/usr/bin/env bash
# Build one learning workspace; never install dependencies or update submodules.
set -eo pipefail
repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
usage() {
  echo "Usage: bash scripts/build_learning.sh basics | projects | simulation [package ...] | advanced [package ...]"
}
target="${1:-basics}"
if [[ "$target" == "-h" || "$target" == "--help" ]]; then usage; exit 0; fi
if [[ $# -gt 0 ]]; then shift; fi
case "$target" in
  basics)
    if [[ $# -ne 0 ]]; then usage >&2; exit 2; fi
    workspace=ros1_learning_ws
    packages=(ros_basics)
    ;;
  projects)
    if [[ $# -ne 0 ]]; then usage >&2; exit 2; fi
    workspace=ros1_advanced_ws
    packages=(control_lab navigation_lab)
    ;;
  simulation) workspace=ros1_learning_ws; packages=("$@") ;;
  advanced) workspace=ros1_advanced_ws; packages=("$@") ;;
  *) usage >&2; exit 2 ;;
esac
for package in "${packages[@]}"; do
  if [[ ! "$package" =~ ^[a-zA-Z][a-zA-Z0-9_]*$ ]]; then
    echo "Expected a ROS package name, got: $package" >&2
    exit 2
  fi
done
# A previously sourced workspace can leave Python/plugin paths behind.
for prefix in ${CMAKE_PREFIX_PATH//:/ }; do
  if [[ "$prefix" == */devel || "$prefix" == */install ]]; then
    echo "Open a fresh terminal with only /opt/ros/noetic sourced before building." >&2
    exit 2
  fi
done
if [[ ! -f /opt/ros/noetic/setup.bash ]]; then
  echo "Missing /opt/ros/noetic/setup.bash; see docs/00-环境安装.md" >&2
  exit 1
fi
source /opt/ros/noetic/setup.bash
if ! command -v catkin >/dev/null; then
  echo "catkin-tools is required; see docs/00-环境安装.md" >&2
  exit 1
fi
cd "$repo_root/$workspace"
catkin init
catkin config --extend /opt/ros/noetic
exec catkin build --no-status --summarize "${packages[@]}"
