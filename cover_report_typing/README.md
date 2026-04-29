# Cover Page and Report Typing

Reusable LaTeX files copied from `/home/saim/6th/dc/Assignment`.

## Files

- `report_template.tex` - reusable blank project report template
- `project_report_demo.tex` - filled demo report based on the SEL project-report style
- `cover_template.tex` - reusable cover page template
- `dc_cover.tex` - Data Communication cover page
- `se_cover.tex` - Software Engineering cover page
- `ccs_cover.tex` - CCS cover page
- `logo/puc_logo.png` - local logo dependency

## Build

```sh
make report-template
make project-report-demo
make cover-template
make dc-cover
make se-cover
make ccs-cover
```

Or build everything:

```sh
make
```

PDF files are created beside their `.tex` files. Helper files stay in `build/`.
