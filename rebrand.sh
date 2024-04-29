#!/bin/bash
# Perform rebranding of Shape-Out2 -> RC Local Analysis
set -e
set -x

# Clone the original repository
git clone --depth 1 https://github.com/ZELLMECHANIK-DRESDEN/ShapeOut2.git project

# replace occurrences of Shape-Out in code
find './project' -name '?*.*' -exec sed -i 's/ZELLMECHANIK-DRESDEN/Rivercyte/g' {} +
find './project' -name '?*.*' -exec sed -i 's/Zellmechanik-Dresden/Rivercyte/g' {} +
find './project' -name '?*.*' -exec sed -i 's/zellmechanik.com/rivercyte.com/g' {} +
find './project' -name '?*.*' -exec sed -i 's/Shape-Out 2/RC-Local-Analysis/g' {} +
find './project' -name '?*.*' -exec sed -i 's/Shape-Out2/RC-Local-Analysis/g' {} +
find './project' -name '?*.*' -exec sed -i 's/Shape-Out/RC-Local-Analysis/g' {} +
find './project' -name '?*.*' -exec sed -i 's/ShapeOut2/RCLocalAnalysis/g' {} +
find './project' -name '?*.*' -exec sed -i 's/ShapeOut/RCLocalAnalysis/g' {} +
find './project' -name '?*.*' -exec sed -i 's/shapeout2/rclocalanalysis/g' {} +
find './project' -name '?*.*' -exec sed -i 's/shapeout/rclocalanalysis/g' {} +

# replace occurrences of Shape-Out in directory and file names
python3 rename_path.py 's/Shape-Out2/RC-Local-Analysis/g' ./project
python3 rename_path.py 's/Shape-Out/RC-Local-Analysis/g' ./project
python3 rename_path.py 's/ShapeOut2/RCLocalAnalysis/g' ./project
python3 rename_path.py 's/ShapeOut/RCLocalAnalysis/g' ./project
python3 rename_path.py 's/shapeout2/rclocalanalysis/g' ./project
python3 rename_path.py 's/shapeout/rclocalanalysis/g' ./project

# replace icons
cp artwork/icon/rclocalanalysis_icon_64.png project/rclocalanalysis/img/icon.png
cp artwork/icon/rclocalanalysis_icon_64.svg project/rclocalanalysis/img/icon.svg
cp artwork/icon/rclocalanalysis_icon.ico project/build-recipes/RCLocalAnalysis.ico
cp artwork/splash/rclocalanalysis_splash.png project/rclocalanalysis/img/splash.png
