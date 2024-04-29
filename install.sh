#!/bin/bash
set -e
set -x

# install package
python -m pip install ./project

# override version
python write_version $RELEASE_VERSION ./project/rclocalanalysis/_version.py
