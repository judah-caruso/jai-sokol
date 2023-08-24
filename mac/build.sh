#!/bin/bash

files=("sokol_app" "sokol_gfx" "sokol_time" "sokol_audio")

for file in "${files[@]}"; do
    echo "Compiling $file..."
    clang -arch x86_64 -x objective-c -O2 -I../c -g -c ../c/"$file".c -o "$file".o && \
    ar rcs "$file".a "$file".o && \
    rm "$file".o
done