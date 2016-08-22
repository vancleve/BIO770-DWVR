#!/bin/bash

PANDOC=/usr/local/bin/pandoc

cat syllabus_main.md syllabus_classes.md syllabus_policies.md > syllabus.md
$PANDOC syllabus.md -t markdown_github -o README.md
$PANDOC syllabus.md -s -o syllabus.html
$PANDOC syllabus.md --latex-engine=xelatex -V geometry:"margin=1in" -V fontsize:"10pt" -s -o syllabus.tex
#$PANDOC syllabus.md --latex-engine=xelatex -V geometry:"margin=1in" -V fontsize:"10pt" -o syllabus.pdf
