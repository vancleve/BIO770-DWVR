PANDOC := /usr/local/bin/pandoc
MD_FILES := syllabus_main.md syllabus_classes.md syllabus_policies.md

all: syllabus.md

md: syllabus.md

html: syllabus.html
syllabus.html: syllabus.md
	$(PANDOC) syllabus.md -s -o syllabus.html

tex: syllabus.tex
syllabus.tex: syllabus.md
	$(PANDOC) syllabus.md --pdf-engine=xelatex -V geometry:"margin=1in" -V fontsize:"10pt" -s -o syllabus.tex

pdf: syllabus.pdf
syllabus.pdf: syllabus.md
	$(PANDOC) syllabus.md --pdf-engine=xelatex -V geometry:"margin=1in" -V fontsize:"10pt" -o syllabus.pdf

syllabus.md: syllabus_main.md syllabus_classes.md syllabus_policies.md
	cat syllabus_main.md syllabus_classes.md syllabus_policies.md > syllabus.md
	$(PANDOC) syllabus.md -t gfm -o README.md
