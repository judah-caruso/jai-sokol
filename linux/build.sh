#!/bin/bash

files=(
	"sokol_app"
	"sokol_gfx"
	"sokol_time"
	"sokol_audio"
	"sokol_fetch"
)

for file in ${files[@]}; do
	echo "Compiling $file..."
	gcc -I../c -c -o "$file.o" "../c/$file.c"
	ar rcs "$file.a" "$file.o"
	rm "$file.o"
done
