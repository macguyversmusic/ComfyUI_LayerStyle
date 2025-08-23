#!/usr/bin/env bash

repair_dependency_txt="$(dirname "$0")/repair_dependency_list.txt"
requirements_txt="$(dirname "$0")/requirements.txt"

echo "Installing requirements..."
pip install -r "$requirements_txt"

echo "Fixing dependencies..."
pip uninstall -y opencv-python opencv-contrib-python opencv-python-headless opencv-contrib-python-headless
pip install -r "$repair_dependency_txt"

echo "Install Finish!"
