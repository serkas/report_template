.PHONY: report.pdf all clean distclean

all: report.pdf

report.pdf: report.tex
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make report.tex

clean:
	latexmk -c

distclean:
	latexmk -C
