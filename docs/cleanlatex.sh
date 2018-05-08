#!/bin/bash
filename=$(find -iname $1.tex)
filepath=$(dirname "${filename}")
echo $filename
echo $filepath
cd $filepath

exts="aux bbl blg brf idx ilg ind lof log lol lot out toc pdf dvi ps synctex.gz"

for ext in $exts; do
	rm -f $1.$ext
done

