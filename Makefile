# make -f Makefile_pdflatex

R = thesis
STY = *.cls
FIG = 

pdf: $(R).pdf

$(R).bbl: $(R).bib
	pdflatex $(R)
	bibtex $(R)
	pdflatex $(R)

$(R).pdf: *.tex $(STY) $(FIG) $(R).bbl
	pdflatex $(R)

clean:
	rm -f $(R).log *.aux $(R).bbl $(R).blg $(R).out $(R).lof $(R).lot $(R).toc $(R).pdf
