filename=$(basename $(wildcard *.tex))

#filename=lyon_2014-12-10

filename : $(filename).tex
#    pdflafilename $(filename)
#    bibfilename $(filename)||true
#    pdflafilename $(filename)
#    pdflafilename $(filename)
	latex $(filename)
	bibtex $(filename)||true
	latex $(filename)
	latex $(filename)

clean:
#    rm -f $(filename).aux $(filename).bbl $(filename).blg $(filename).dvi $(filename).fdb_lafilenamemk $(filename).log $(filename).pdf missfont.log
	rm -f ${filename}.{aux,bbl,blg,dvi,log,out,pdf,ps}

fresh:
	make clean && make
