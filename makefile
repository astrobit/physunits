pkgname=$(patsubst %.ins,%,$(wildcard *.ins))
TEXMFLOCAL = $(shell kpsewhich -var-value TEXMFLOCAL)
TEXMFDIST = $(shell kpsewhich -var-value TEXMFDIST)

all: $(pkgname).pdf

.PRECIOUS: %.sty %.dtx %.pdf

%.sty: %.dtx %.ins
	latex $(pkgname).ins
	
%.pdf: %.sty
	xelatex $(pkgname).dtx
	makeindex -s gind.ist -o $(pkgname).ind $(pkgname).idx
	makeindex -s gglo.ist -o $(pkgname).gls $(pkgname).glo
	xelatex $(pkgname).dtx
	xelatex $(pkgname).dtx

clean:
	-rm *.pdf
	-rm *.log
	-rm *.out
	-rm *.aux
	-rm *.bib
	-rm *.snm
	-rm *.toc
	-rm *.nav
	-rm *.idx
	-rm *.sty
	-rm *.gls
	-rm *.ilg
	-rm *.ind
	-rm *.glo
	-rm $(pkgname).zip
	-rm $(pkgname).tar
	-rm $(pkgname).tar.gz
	-rm -r $(pkgname)

localinstall: $(pkgname).pdf $(pkgname).sty 
	echo Installing to $(TEXMFLOCAL)/tex/latex/$(pkgname)
	mkdir -p $(TEXMFLOCAL)/tex/latex/$(pkgname)
	mkdir -p $(TEXMFLOCAL)/doc/latex/$(pkgname)
	cp $(pkgname).sty $(TEXMFLOCAL)/tex/latex/$(pkgname)/.
	cp $(pkgname).pdf $(TEXMFLOCAL)/doc/latex/$(pkgname)/.
	texhash

localuninstall: 
	echo Removing from $(TEXMFLOCAL)/tex/latex/$(pkgname)
	rm -r $(TEXMFLOCAL)/tex/latex/$(pkgname)
	rm -r $(TEXMFLOCAL)/doc/latex/$(pkgname)
	texhash

distinstall: $(pkgname).pdf $(pkgname).sty
	echo Installing to $(TEXMFDIST)/tex/latex/$(pkgname)
	mkdir -p $(TEXMFDIST)/tex/latex/$(pkgname)
	mkdir -p $(TEXMFDIST)/doc/latex/$(pkgname)
	cp $(pkgname).sty $(TEXMFDIST)/tex/latex/$(pkgname)/.
	cp $(pkgname).pdf $(TEXMFDIST)/doc/latex/$(pkgname)/.
	texhash

distuninstall: 
	echo Removing from $(TEXMFDIST)/tex/latex/$(pkgname)
	rm -r $(TEXMFDIST)/tex/latex/$(pkgname)
	rm -r $(TEXMFDIST)/doc/latex/$(pkgname)
	texhash

dist: $(pkgname).pdf $(pkgname).sty
	mkdir -p $(pkgname)
	cp $(pkgname).pdf $(pkgname)/.
	cp $(pkgname).sty $(pkgname)/.
	cp README.md $(pkgname)/.
	cp CHANGELOG.md $(pkgname)/.
	tar -cvf $(pkgname).tar $(pkgname)
	gzip $(pkgname).tar
	zip $(pkgname).zip $(pkgname)
	rm -r $(pkgname)
