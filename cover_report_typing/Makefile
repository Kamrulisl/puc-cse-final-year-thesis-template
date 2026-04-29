BUILD_DIR := build
TEX_ENGINE := latexmk -pdf -interaction=nonstopmode -outdir=$(BUILD_DIR) -auxdir=$(BUILD_DIR)

DOCS := report_template project_report_demo cover_template dc_cover se_cover ccs_cover

.PHONY: all report-template project-report-demo cover-template dc-cover se-cover ccs-cover clean distclean

all: $(DOCS:%=%.pdf)

report-template: report_template.pdf
project-report-demo: project_report_demo.pdf
cover-template: cover_template.pdf
dc-cover: dc_cover.pdf
se-cover: se_cover.pdf
ccs-cover: ccs_cover.pdf

%.pdf: %.tex
	mkdir -p $(BUILD_DIR)
	$(TEX_ENGINE) $<
	cp $(BUILD_DIR)/$@ $@
	rm -f $(BUILD_DIR)/$@

clean:
	mkdir -p $(BUILD_DIR)
	latexmk -c -outdir=$(BUILD_DIR) -auxdir=$(BUILD_DIR) $(DOCS:%=%.tex)
	rm -f *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.out *.run.xml *.synctex.gz *.toc

distclean: clean
	rm -f $(DOCS:%=%.pdf)
	rm -rf $(BUILD_DIR)
