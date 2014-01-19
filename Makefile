LATEX = pdflatex
BIBTEX = bibtex

all : proposal.pdf
	${LATEX} proposal
	${BIBTEX} proposal
	${LATEX} proposal
	${LATEX} proposal

clean :
	@rm *~
