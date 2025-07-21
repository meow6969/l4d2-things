#!/bin/sh

mkdir -p sephora/overlay
mkdir -p sephoraplusmeowmeow/overlay

for i in sephora/*.png; do
	name="$(basename -- "${i}")"
	magick "${i}" "sephoraoverlay.png" -composite "sephora/overlay/${name}"
done

for i in sephoraplusmeowmeow/*.png; do
	name="$(basename -- "${i}")"
	magick "${i}" "sephoraplusmeowmeowoverlay.png" -composite "sephoraplusmeowmeow/overlay/${name}"
done

