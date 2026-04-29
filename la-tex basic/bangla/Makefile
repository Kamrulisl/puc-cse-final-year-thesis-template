CACHE_DIR := .texlive-cache
MAIN := main

.PHONY: all pdf clean distclean

all: pdf

pdf:
	mkdir -p $(CACHE_DIR)
	TEXMFCACHE="$(CURDIR)/$(CACHE_DIR)" TEXMFVAR="$(CURDIR)/$(CACHE_DIR)" latexmk -lualatex -interaction=nonstopmode $(MAIN).tex

clean:
	mkdir -p $(CACHE_DIR)
	TEXMFCACHE="$(CURDIR)/$(CACHE_DIR)" TEXMFVAR="$(CURDIR)/$(CACHE_DIR)" latexmk -c $(MAIN).tex

distclean: clean
	rm -f $(MAIN).pdf
	rm -rf $(CACHE_DIR)
