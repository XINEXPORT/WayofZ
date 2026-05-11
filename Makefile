LATEX = pdflatex
SOURCES = $(wildcard *.tex)
PDFS = $(SOURCES:.tex=.pdf)

all: $(PDFS)

%.pdf: %.tex
	$(LATEX) $<

clean:
	rm -f *.aux *.log *.out *.toc *.synctex.gz *.fls *.fdb_latexmk *.pdf

.PHONY: all clean