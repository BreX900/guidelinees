#!/bin/sh

filename="pubspec.yaml"
rootdirectory="$(pwd)"

echo "Finding ..."

for x in $(find . -name $filename); do
    echo "Running \`flutter clean\` in $x" 
    cd "$(dirname $x)" && flutter clean
    cd "$rootdirectory"
done

