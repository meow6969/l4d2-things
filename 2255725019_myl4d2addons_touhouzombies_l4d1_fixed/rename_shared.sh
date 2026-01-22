#!/bin/sh

in_file="${1}"

if ! [[ -f "${in_file}" ]]; then
	echo "fake"
	exit 1
fi

shared=(
	"face_shader"
	"phong_exp"
	"cartoon_shader"
	"lightwarptexture"
	"normal"
)


for i in "${shared[@]}"; do
	sed -i -E 's/[[:alnum:]\/\\]*\/'"${i}"'\"/shared\/'"${i}"'\"/' "${in_file}" 
done




