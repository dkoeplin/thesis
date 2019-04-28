TEX = $(wildcard *.tex text/*.tex)
BIB = references.bib
FIGS = $(wildcard figs/*.pdf figs/*.png graphs/*.pdf graphs/*.png)

.PHONY: all export clean lunch main back delite

all: paper

paper: $(TEX) $(BIB) $(FIGS)
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

back: $(wildcard common.tex 2-background/*.tex) $(BIB) $(FIGS)
	pdflatex 2-background/main

delite: $(wildcard *.tex 3-delite/*.tex) $(BIB) $(FIGS)
	pdflatex 3-delite/main

spatial: $(wildcard *.tex 4-spatial/*.tex) $(BIB) $(FIGS)
		pdflatex 4-spatial/main

clean:
	rm -rf *.aux *.bbl *.blg *.log *.out *.pdf
