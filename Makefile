LATEX = xelatex
BIBTEX = bibtex

all : proposal.pdf

proposal.pdf : proposal.tex proposal.bib
	${LATEX} proposal
	${BIBTEX} proposal
	${LATEX} proposal
	${LATEX} proposal

clean :
	@rm -f *~ *.aux *.bbl *.blg *.log *.out
