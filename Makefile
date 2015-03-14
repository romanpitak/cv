
.PHONY: all clean pdf

all: pdf

outdir:
	mkdir -p out

pdf: resume.pdf

resume.pdf: resume.tex outdir
	pdflatex -output-directory out $<

clean:
	rm --recursive --force -- out
