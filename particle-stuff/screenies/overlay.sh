#!/bin/sh

mkdir -p mine/overlay
mkdir -p soleily/overlay

for i in mine/*; do
	name="$(basename -- "${i}")"
	magick "${i}" overlay_mine.png -composite "mine/overlay/${name}"
done

for i in mine/overlay/*.png; do
	magick "${i}" "${i}.jpg"
done

for i in soleily/*; do
	name="$(basename -- "${i}")"
	magick "${i}" overlay_soleily.png -composite "soleily/overlay/${name}"
done

for i in soleily/overlay/*.png; do
	magick "${i}" "${i}.jpg"
done





