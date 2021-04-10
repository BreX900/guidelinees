#!/bin/sh

filename="pubspec.yaml"
rootdirectory="$(pwd)"

echo "Finding ..."


DIRECTORIES=$(find . -type f -name $filename)


TOTAL=0
for x in $DIRECTORIES; do
    ((TOTAL=TOTAL+1))
done
echo "Found $TOTAL flutter folders"


COUNT=0
for x in $DIRECTORIES; do
    ((COUNT+=1))
    PROGRESS=$((COUNT*100/TOTAL))
    echo "$PROGRESS%: Running \`flutter clean\` in $x"
    
    cd "$(dirname $x)" && flutter clean
    cd "$rootdirectory"
done
