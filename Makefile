filename=main

all:
	xelatex -synctex=1 -interaction=nonstopmode ${filename}.tex
	bibtex ${filename}.aux
	makeglossaries ${filename}
	xelatex -synctex=1 -interaction=nonstopmode ${filename}.tex
	xelatex -synctex=1 -interaction=nonstopmode ${filename}.tex
view:
	okular ${filename}.pdf
clean:
	rm -rf ${filename}.{aux,bbl,blg,out,log}
 
