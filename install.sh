#!/bin/bash
set -e
set -x


# override version from git tags
cd project
git tag -d $RELEASE_VERSION
git commit -a -m "RC Local Analysis release"
git tag -a $RELEASE_VERSION -m "RC Local Analysis release"
cd ..

# install package
python3 -m pip install ./project
