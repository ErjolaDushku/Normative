# note that you need to install both pdflatex and rubber

all: pdf clean


pdf:
			for file in $$(ls *tex | cut -d \. -f 1) ; do make $$file.pdf ; done

%.pdf: %.tex
			rubber -m pdftex $<

clean:
			rm -f *.toc *.aux *.log *.out *.nlo *.nls *.ilg

cleanall:
			rm -f *.toc *.pdf *.aux *.log *.out *.nlo *.nls *.ilg

.PHONY: all pdf clean cleanall
.SILENT: pdf
