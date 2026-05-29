#!/bin/sh
for i in *.vtf; do
	name="${i%.*}"
	maretf extract "${i}"
	magick "${name}.png" -flop "${name}2.png"
	maretf create "${name}2.png"
	mv "${name}2.vtf" "${i}"
done
