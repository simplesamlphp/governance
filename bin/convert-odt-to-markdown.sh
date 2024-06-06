#!/bin/bash

if=${1:?Please supply the path to the odt file to convert as arg1};
bname=$(basename "${if%%.odt}")
of="$bname.md"
ofpics="$bname.images"

echo "converting supplied odt file to md file and pictures directory in current directory"
echo "input  $if"
echo "output $of"
pandoc -t gfm -o "$of" --extract-media="$ofpics" "$if"
