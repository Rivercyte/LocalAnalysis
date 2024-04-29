#!/bin/bash
set -e
set -x

# install package
python3 -m pip install ./project

# override version
python3 write_version.py $RELEASE_VERSION ./project/rclocalanalysis/_version.py
