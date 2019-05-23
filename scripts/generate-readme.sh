#!/bin/sh

dir="$1"

if [[ $# != 1 ]]; then
    echo "Usage: $0 [path]"
    exit 1
fi

if ! [[ -d ${dir} ]]; then
    echo "${dir} is not a directory"
    exit 1
fi

echo "# Cheat Sheets"
echo

for md in ${dir}/*.md; do
    name=$(basename ${md})
    url="https://github.com/gabriel376/cheatsheets/blob/master/cheatsheets/${name}.md"
    echo "* [${name%.md}](${url})"
done
