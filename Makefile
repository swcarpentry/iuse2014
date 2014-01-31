LATEX = xelatex
BIBTEX = bibtex

all : proposal.pdf summary.pdf

proposal.pdf : proposal.tex proposal.bib
	${LATEX} proposal
	${BIBTEX} proposal
	${LATEX} proposal
	${LATEX} proposal

summary.pdf : summary.tex
	${LATEX} summary
	${LATEX} summary

clean :
	@rm -f *~ *.aux *.bbl *.blg *.log *.out
