############################################################################
#
# Makefile for abntex2-DCOMP-UFS
#
# ddantas 22/10/2020
#
############################################################################


FILENAME = main
#FILENAME = Modelo-Mestrado-PROCC
OPEN = wsl-open
# OPEN = evince

push:
	 git add . && git commit -m "TCC $$(date)${MSG}" && git push

pull:
	git pull


# FINAL_PDF_FILENAME := TCC_II_EVERTON_SANTOS_JR.pdf
FINAL_PDF_FILENAME := "TCC2 - EvertonSantosDeAndradeJunior.pdf"

run: clean all
	cp $(FILENAME).pdf $(FINAL_PDF_FILENAME)


all: $(FILENAME).pdf

dvi: $(FILENAME).dvi

ps: $(FILENAME).ps

pimg.ps: $(FILENAME).dvi
	dvips -o $(FILENAME).ps $(FILENAME).dvi

$(FILENAME).pdf: *.tex Pre_Textual/*.tex Pos_Textual/*.tex **.tex **/**.tex
	pdflatex --shell-escape $(FILENAME).tex
	bibtex $(FILENAME)
	pdflatex --shell-escape $(FILENAME).tex
	pdflatex --shell-escape $(FILENAME).tex

show: all
	$(OPEN) $(FILENAME).pdf &

$(FILENAME).dvi: clean $(FILENAME).tex
	echo "Running latex..."
	latex $(FILENAME).tex
	echo "Running makeindex..."
	#makeindex $(FILENAME).idx
	echo "Rerunning latex...."
	latex $(FILENAME).tex
	latex_count=5 ; \
	while egrep -s 'Rerun (LaTeX|to get cross-references right)' refman.log && [ $$latex_count -gt 0 ] ;\
	    do \
	      echo "Rerunning latex...." ;\
	      latex $(FILENAME).tex ;\
	      latex_count=`expr $$latex_count - 1` ;\
	    done


slide: FINAL_SLIDE_FILENAME = "Slides-TCC2-EvertonSantosDeAndradeJunior"
slide: FILENAME = Slides
slide: #$(FILENAME).pdf
	pdflatex --shell-escape $(FILENAME).tex
	bibtex $(FILENAME)
	pdflatex --shell-escape $(FILENAME).tex
	pdflatex --shell-escape $(FILENAME).tex
	cp $(FILENAME).pdf $(FINAL_SLIDE_FILENAME).pdf
	wsl-open $(FINAL_SLIDE_FILENAME).pdf

clean:
	rm -f *.bbl *.loc .*loa .*loq *.ps *.dvi *.aux *.toc *.idx *.ind *.ilg *.log *.out *.brf *.blg *.bbl **/**.bbl **/**.loc .**/**loa .**/**loq **/**.ps **/**.dvi **/**.aux **/**.toc **/**.idx **/**.ind **/**.ilg **/**.log **/**.out **/**.brf **/**.blg **/**.bbl $(FILENAME).pdf

.PHONY: all show $(FILENAME).pdf push run clean slide
