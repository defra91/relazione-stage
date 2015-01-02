TEX = pdflatex -interaction=nonstopmode -halt-on-error -file-line-error

document:
	$(TEX) tesi.tex
	biber tesi
	$(TEX) tesi.tex
	makeindex -s tesi.ist -t tesi.glg -o tesi.gls tesi.glo
	makeindex -s tesi.ist -t tesi.alg -o tesi.acr tesi.acn
	$(TEX) tesi.tex
	$(TEX) tesi.tex