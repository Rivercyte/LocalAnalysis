#!/bin/bash
set -e
set -x


# override version
cd project
git tag -a $RELEASE_VERSION -m "RC Local Analysis deploy"
cd ..

# install package
python3 -m pip install ./project
