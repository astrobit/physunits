pkgname=$(patsubst %.ins,%,$(wildcard *.ins))
TEXMFLOCAL = $(shell kpsewhich -var-value TEXMFLOCAL)
TEXMFDIST = $(shell kpsewhich -var-value TEXMFDIST)

.PHONY: all clean localinstall localuninstall localinstallcheck distinstall distuninstall distinstallcheck installcheck

all: $(pkgname).pdf

.PRECIOUS: %.sty %.dtx %.pdf
.DELETE_ON_ERROR:
.NOTPARALLEL:

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
	-rm -r tmptar
	-rm -r tmpzip

$(TEXMFLOCAL)/tex/latex/$(pkgname):
	mkdir -p $(TEXMFLOCAL)/tex/latex/$(pkgname)

$(TEXMFLOCAL)/doc/latex/$(pkgname):
	mkdir -p $(TEXMFLOCAL)/doc/latex/$(pkgname)

$(TEXMFLOCAL)/tex/latex/$(pkgname)/$(pkgname).sty: $(pkgname).sty $(TEXMFLOCAL)/tex/latex/$(pkgname)
	cp $(pkgname).sty $(TEXMFLOCAL)/tex/latex/$(pkgname)/.

$(TEXMFLOCAL)/doc/latex/$(pkgname)/$(pkgname).pdf: $(pkgname).pdf $(TEXMFLOCAL)/doc/latex/$(pkgname)
	cp $(pkgname).pdf $(TEXMFLOCAL)/doc/latex/$(pkgname)/.

localinstall: $(pkgname).pdf $(pkgname).sty $(TEXMFLOCAL)/tex/latex/$(pkgname) $(TEXMFLOCAL)/doc/latex/$(pkgname) $(TEXMFLOCAL)/tex/latex/$(pkgname)/$(pkgname).sty $(TEXMFLOCAL)/doc/latex/$(pkgname)/$(pkgname).pdf
	@echo Installing to $(TEXMFLOCAL)/tex/latex/$(pkgname)
	texhash
	make localinstallcheck

localuninstall: 
	@echo Removing from $(TEXMFLOCAL)/tex/latex/$(pkgname)
	-rm -r $(TEXMFLOCAL)/tex/latex/$(pkgname)
	-rm -r $(TEXMFLOCAL)/doc/latex/$(pkgname)
	texhash


$(TEXMFDIST)/tex/latex/$(pkgname):
	mkdir -p $(TEXMFDIST)/tex/latex/$(pkgname)

$(TEXMFDIST)/doc/latex/$(pkgname):
	mkdir -p $(TEXMFDIST)/doc/latex/$(pkgname)

$(TEXMFDIST)/tex/latex/$(pkgname)/$(pkgname).sty: $(pkgname).sty $(TEXMFDIST)/tex/latex/$(pkgname)
	cp $(pkgname).sty $(TEXMFDIST)/tex/latex/$(pkgname)/.

$(TEXMFDIST)/doc/latex/$(pkgname)/$(pkgname).pdf: $(pkgname).pdf $(TEXMFDIST)/doc/latex/$(pkgname)
	cp $(pkgname).pdf $(TEXMFDIST)/doc/latex/$(pkgname)/.

distinstall: $(pkgname).pdf $(pkgname).sty $(TEXMFDIST)/tex/latex/$(pkgname) $(TEXMFDIST)/doc/latex/$(pkgname) $(TEXMFDIST)/tex/latex/$(pkgname)/$(pkgname).sty $(TEXMFDIST)/doc/latex/$(pkgname)/$(pkgname).pdf
	@echo Installing to $(TEXMFDIST)/tex/latex/$(pkgname)
	texhash
	make distinstallcheck

distuninstall: 
	@echo Removing from $(TEXMFDIST)/tex/latex/$(pkgname)
	-rm -r $(TEXMFDIST)/tex/latex/$(pkgname)
	-rm -r $(TEXMFDIST)/doc/latex/$(pkgname)
	texhash

#######################################################
# checks - will be called recursively
#######################################################

localinstallcheck:
ifeq (0,$(shell test -d $(TEXMFLOCAL)/tex/latex/$(pkgname); echo $$?))
	@echo $(pkgname) installed as local: $(TEXMFLOCAL)/tex/latex/$(pkgname)
else
	$(error $(pkgname) is not installed as local)
endif

distinstallcheck:
ifeq (0,$(shell test -d $(TEXMFDIST)/tex/latex/$(pkgname); echo $$?))
	@echo $(pkgname) installed as dist: $(TEXMFDIST)/tex/latex/$(pkgname)
else
	$(error $(pkgname) is not installed as dist)
endif

installcheck: 
ifeq (0,$(shell test -d $(TEXMFDIST)/tex/latex/$(pkgname); echo $$?))
	@echo $(pkgname) installed as dist: $(TEXMFDIST)/tex/latex/$(pkgname)
else
ifeq (0,$(shell test -d $(TEXMFLOCAL)/tex/latex/$(pkgname); echo $$?))
	@echo $(pkgname) installed as local: $(TEXMFLOCAL)/tex/latex/$(pkgname)
else
	$(error $(pkgname) is not installed)
endif
endif



