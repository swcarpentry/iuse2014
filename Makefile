LATEX = xelatex
BIBTEX = bibtex

all : proposal.pdf

proposal.pdf : proposal.tex
	${LATEX} proposal
	${BIBTEX} proposal
	${LATEX} proposal
	${LATEX} proposal

clean :
	@rm -f *~ *.aux *.bbl *.blg *.log *.out
