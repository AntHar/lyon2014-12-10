TEX := $(basename $(wildcard *.tex))
#TEX = paper

TEX : $(TEX).bib $(TEX).tex
#    pdflatex $(TEX)
#    bibtex $(TEX)||true
#    pdflatex $(TEX)
#    pdflatex $(TEX)
    pdflatex $(TEX)
    bibtex $(TEX)||true
    pdflatex $(TEX)
    pdflatex $(TEX)

clean:
#    rm -f $(TEX).aux $(TEX).bbl $(TEX).blg $(TEX).dvi $(TEX).fdb_latexmk $(TEX).log $(TEX).pdf missfont.log
    rm -f ${TEX}.{aux,bbl,blg,dvi,log,out,pdf,ps}

fresh:
make clean && make
