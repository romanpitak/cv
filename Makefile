
.PHONY: all clean pdf

all: pdf

outdir:
	mkdir -p out

pdf: out/resume.pdf

out/resume.pdf: src/resume.tex outdir
	pdflatex -output-directory out $<

clean:
	rm --recursive --force -- out
