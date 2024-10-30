PREFIX=/usr/local/teTeX/bin/

LATEX=latex
BIBTEX=bibtex
PDFLATEX=pdflatex
DOC=report

SRC= $(DOC).tex intro.tex smart-m3.tex smartscribo.tex integration.tex conclusion.tex \
    style1.tex style2.tex title.tex

FIGS_EPS=

all: $(DOC).pdf

$(DOC).dvi: $(SRC) Makefile $(FIGS_EPS)
	-$(LATEX) $(DOC)
	-$(LATEX) $(DOC)
	-$(LATEX) $(DOC)


$(DOC).pdf: $(DOC).dvi
	dvipdf $(DOC).dvi

clean:
	rm -f *.aux *.dvi *.idx *.ilg *.ind *.log *.toc $(DOC).blg temp.ps $(DOC).ps *.pdf *~ *.png *.bak

