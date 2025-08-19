#!/bin/bash

mkdir -p mine/overlay
mkdir -p og/overlay

for i in mine/*.png; do
	name="$(basename -- "${i}")"
	name="${name%.*}"
	magick "${i}" "mineoverlay.png" -composite "mine/overlay/${name}.jpg"
done

for i in og/*.png; do
	name="$(basename -- "${i}")"
	name="${name%.*}"
	magick "${i}" "ogoverlay.png" -composite "og/overlay/${name}.jpg"
done

