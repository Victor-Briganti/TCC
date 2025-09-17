AUXFILE = *.acn* *.acr* *.alg* *.bbl *.glg *.glo *.gls *.ist *.loge *.mw \
		   *.nlo *.nls *.gz *.xmpi *.aux *.toc *.idx *.ilg *.lot *.log *.ind \
		   *.blg *.fls *fdb_latexmk

all:
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

clean:
	@rm -rf $(AUXFILE)
	@rm -rf ./PreTexto/*.aux
	@rm -rf ./PosTexto/*.aux
	@rm -rf ./capitulos/*.aux
