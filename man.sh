#!/bin/bash

man_lines=$(man man | wc -l)
ls_lines=$(man ls | wc -l)
find_lines=$(man find | wc -l)

echo "man,$man_lines" > lines.txt
echo "ls,$ls_lines" >> lines.txt
echo "find,$find_lines" >> lines.txt

sort -t, -k2 -g -r lines.txt | while IFS=, read cmd count; do
    echo "$cmd has $count lines"
done

rm lines.txt