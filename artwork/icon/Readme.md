# convert all .svg files to .png files
```
for pi in *_icon_*.svg; do
    pngname=$(echo $pi | sed 's/.svg/.png/g')
    inkscape $pi -o $pngname
done
```


# Create Windows icon from png files

```
icotool -c rclocalanalysis_icon_*.png -o rclocalanalysis_icon.ico
```
