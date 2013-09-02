wc=`detex Thesis| wc -w`
all:
	pdflatex Thesis
	makeindex Thesis.nlo -s nomencl.ist -o Thesis.nls
	bibtex Thesis
	pdflatex Thesis
	pdflatex Thesis
	@echo "Wordcount of Thesis: $(wc)"
	
o: all #Compile and open
	open Thesis.pdf
l:     # print word count
	@echo "Wordcount of Thesis: $(wc)"
s: # Single latex run, Intended to give page count
	pdflatex Thesis
	@echo "Wordcount of Thesis: $(wc)"
