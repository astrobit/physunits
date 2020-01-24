files=$(patsubst %.dtx,%.pdf,$(wildcard *.dtx))
pkgname=$(patsubst %.dtx,%,$(wildcard *.dtx))
all: $(files)

%.pdf: %.dtx
	-rm $(patsubst %.dtx,%.sty,$<)
	latex $(patsubst %.dtx,%.ins,$<)
	xelatex $<
	makeindex -s gind.ist -o $(patsubst %.dtx,%.ind,$<) $(patsubst %.dtx,%.idx,$<)
	makeindex -s gglo.ist -o $(patsubst %.dtx,%.gls,$<) $(patsubst %.dtx,%.glo,$<)
	xelatex $<
	xelatex $<

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

localinstall: all
	mkdir -p /usr/share/local/texlive/texmf-local/tex/latex/$(pkgname)
	mkdir -p /usr/share/local/texlive/texmf-local/doc/latex/$(pkgname)
	cp $(pkgname).sty /usr/share/local/texlive/texmf-local/tex/latex/$(pkgname)/.
	cp $(pkgname).pdf /usr/share/local/texlive/texmf-local/doc/latex/$(pkgname)/.
	texhash

distinstall: all
	mkdir -p /usr/share/local/texlive/texmf-dist/tex/latex/$(pkgname)
	mkdir -p /usr/share/local/texlive/texmf-dist/doc/latex/$(pkgname)
	cp $(pkgname).sty /usr/share/local/texlive/texmf-dist/tex/latex/$(pkgname)/.
	cp $(pkgname).pdf /usr/share/local/texlive/texmf-dist/doc/latex/$(pkgname)/.
	texhash

