############################################################################
#
# Makefile for abntex2-DCOMP-UFS
#
# ddantas 22/10/2020
#
############################################################################


FILENAME = main
#FILENAME = Modelo-Mestrado-PROCC

push: 
	 git add . && git commit -m "TCC $$(date)${MSG}" && git push

pull:
	git pull



all: $(FILENAME).pdf

dvi: $(FILENAME).dvi

ps: $(FILENAME).ps

pimg.ps: $(FILENAME).dvi
	dvips -o $(FILENAME).ps $(FILENAME).dvi

$(FILENAME).pdf: *.tex Pre_Textual/*.tex Pos_Textual/*.tex **.tex
	pdflatex $(FILENAME).tex
	bibtex $(FILENAME)
	pdflatex $(FILENAME).tex
	pdflatex $(FILENAME).tex

show: all
	evince $(FILENAME).pdf &

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

clean:
	rm -f *.bbl *.loc .*loa .*loq *.ps *.dvi *.aux *.toc *.idx *.ind *.ilg *.log *.out *.brf *.blg *.bbl **/**.bbl **/**.loc .**/**loa .**/**loq **/**.ps **/**.dvi **/**.aux **/**.toc **/**.idx **/**.ind **/**.ilg **/**.log **/**.out **/**.brf **/**.blg **/**.bbl $(FILENAME).pdf

.PHONY: all show $(FILENAME).pdf push
