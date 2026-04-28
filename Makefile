LATEXMK = latexmk
MAIN = main.tex
BUILD_DIR = build
OUT_DIR = .

.PHONY: all clean watch

all:
	$(LATEXMK) -pdf -outdir=$(OUT_DIR) -auxdir=$(BUILD_DIR) $(MAIN)

watch:
	$(LATEXMK) -pdf -pvc -outdir=$(OUT_DIR) -auxdir=$(BUILD_DIR) $(MAIN)

clean:
	$(LATEXMK) -C -outdir=$(OUT_DIR) -auxdir=$(BUILD_DIR) $(MAIN)
	rm -rf $(BUILD_DIR)
	rm -f *.aux *.bbl *.blg *.fdb_latexmk *.fls *.lof *.log *.lot *.out *.synctex.gz *.toc
