#!/bin/sh

echo "# Cheat Sheets" > README.md
echo >> README.md

for md in cheatsheets/*; do
    name=${md:12:((${#md}-15))}
    url="https://github.com/gabriel376/cheatsheets/blob/master/${name}.md"
    echo "* [${name}](${url})" >> README.md
done
