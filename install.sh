#!/bin/bash
set -e
set -x


# override version from git tags
rm -rf project/.git
cp -R .git project/

# install package
python3 -m pip install ./project
