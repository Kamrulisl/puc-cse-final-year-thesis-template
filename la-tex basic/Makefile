CACHE_DIR := .texlive-cache
BUILD_DIR := build
MAIN := la-tex-basic-commands-bangla

.PHONY: all pdf clean distclean

all: pdf

pdf:
	mkdir -p $(CACHE_DIR) $(BUILD_DIR)
	TEXMFCACHE="$(CURDIR)/$(CACHE_DIR)" TEXMFVAR="$(CURDIR)/$(CACHE_DIR)" latexmk -lualatex -outdir=$(BUILD_DIR) -auxdir=$(BUILD_DIR) -interaction=nonstopmode $(MAIN).tex

clean:
	mkdir -p $(CACHE_DIR)
	TEXMFCACHE="$(CURDIR)/$(CACHE_DIR)" TEXMFVAR="$(CURDIR)/$(CACHE_DIR)" latexmk -c -outdir=$(BUILD_DIR) -auxdir=$(BUILD_DIR) $(MAIN).tex
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc $(MAIN).fls $(MAIN).fdb_latexmk

distclean: clean
	rm -f $(MAIN).pdf
	rm -rf $(BUILD_DIR) $(CACHE_DIR)
