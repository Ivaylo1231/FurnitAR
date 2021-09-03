LATEXC=pdflatex
BIBTEXC=bibtex

THESIS=thesis
CITATIONS=citations

LATEXC_OPTIONS=--shell-escape

.SUFFIXES:
.SUFFIXES: .bib .pdf .tex

build: $(THESIS).pdf

$(THESIS).pdf: $(THESIS).bbl $(THESIS).tex
	$(LATEXC) $(LATEXC_OPTIONS) $(THESIS).tex
	$(LATEXC) $(LATEXC_OPTIONS) $(THESIS).tex

$(THESIS).bbl: $(THESIS).aux
	$(BIBTEXC) $(THESIS).aux

$(THESIS).aux: $(CITATIONS).bib
	$(LATEXC) $(LATEXC_OPTIONS) $(THESIS).tex
	$(LATEXC) $(LATEXC_OPTIONS) $(THESIS).tex

clean:
	rm -rf *.aux *.lof *.log *.lot *.toc *.bbl *.blg *.pdf *-blx.bib *.out *.run.xml *.fdb_latexmk *.fls _minted-*
