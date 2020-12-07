#!/bin/bash
for i in $(find $1 -name "*.png"); do
  size=$(identify -format "%w" $i)
  cp -fv img.png $i
  convert $i -resize $size $i
done
