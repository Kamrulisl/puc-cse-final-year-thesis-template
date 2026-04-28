# PUC Thesis LaTeX Template

This is a three-member thesis/report LaTeX setup for the Department of Computer
Science & Engineering, Premier University, Chattogram. It is based on the PUC
template style and includes a cleaner local build setup for VS Code.

## Credits And References

This template was adapted and reviewed from:

- Original PUC report template by Anik Sen: <https://github.com/ascuet/puc-report-template>
- Modified PUC CSE thesis template by Dhruba Dey: <https://github.com/dhrubad/Thesis_Paper_Latex>

## Setup Instructions

Install a LaTeX distribution and tools that provide:

- `pdflatex`
- `latexmk`
- `bibtex`

Also install:

- VS Code: <https://code.visualstudio.com/>
- LaTeX Workshop extension for VS Code

This project already includes `.vscode/settings.json`, so LaTeX Workshop will
compile using the project recipe.

### Windows

1. Install MiKTeX: <https://miktex.org/download>
2. Install Strawberry Perl, needed by `latexmk`: <https://strawberryperl.com/>
3. Install VS Code.
4. Install the LaTeX Workshop extension in VS Code.
5. Open MiKTeX Console and allow missing packages to be installed automatically.
6. Open this project folder in VS Code.
7. Open `main.tex` and build using LaTeX Workshop, or use a terminal:

```sh
latexmk -pdf -outdir=. -auxdir=build main.tex
```

If `latexmk` is not recognized, restart VS Code or add MiKTeX and Strawberry
Perl to your system `PATH`.

### macOS

1. Install MacTeX: <https://tug.org/mactex/>
2. Install VS Code.
3. Install the LaTeX Workshop extension in VS Code.
4. Open this project folder in VS Code.
5. Build `main.tex` using LaTeX Workshop, or use Terminal:

```sh
make
```

If `make` is unavailable, use:

```sh
latexmk -pdf -outdir=. -auxdir=build main.tex
```

### Linux

On Ubuntu/Debian, install:

```sh
sudo apt-get install texlive-latex-base texlive-latex-extra texlive-fonts-recommended latexmk
```

Then install VS Code and the LaTeX Workshop extension.

Build from terminal:

```sh
make
```

## Quick Start

Open this folder in VS Code, then compile `main.tex`.

From terminal:

```sh
make
```

The final PDF is generated beside `main.tex`:

```text
main.pdf
```

Temporary LaTeX files are kept in:

```text
build/
```

That means files like `.aux`, `.bbl`, `.blg`, `.log`, `.toc`, `.lof`, `.lot`,
`.out`, `.fls`, and `.fdb_latexmk` should not clutter the root folder.

## Useful Commands

Build once:

```sh
make
```

Continuously rebuild while editing:

```sh
make watch
```

Clean generated files:

```sh
make clean
```

## Project Structure

```text
├── main.tex                    Main file; compile this
├── main.pdf                    Generated PDF
├── thesis.sty                  Formatting and style definitions
├── references.bib              Bibliography entries
├── title_page.tex              Title page
├── author_declaration.tex      Author declaration
├── signature.tex               Certification/signature page
├── dedication.tex              Dedication page
├── abstract.tex                Abstract page
├── chapters/
│   ├── introduction.tex
│   ├── literature_review.tex
│   ├── methodology.tex
│   ├── results.tex
│   ├── conclusion.tex
│   ├── literaturefolder/       Optional literature-review subfiles
│   ├── methodologyfolder/      Optional methodology subfiles
│   ├── resultsfolder/          Optional results subfiles
│   └── commands/               Reusable LaTeX snippets
├── figures/
│   ├── puc_logo.png
│   ├── methodologyfigures/
│   └── resultsfigures/
├── appendices/
└── build/                      Temporary LaTeX build files
```

## Customize

Update the metadata near the top of `main.tex`:

- `\projectTitle`
- `\firstAuthorName`, `\firstAuthorId`
- `\secondAuthorName`, `\secondAuthorId`
- `\thirdAuthorName`, `\thirdAuthorId`
- `\supervisorName`, `\supervisorDesignation`
- `\chairmanName`, `\chairmanDesignation`
- `\submissionMonth`

Then write your thesis content in:

- `abstract.tex`
- `chapters/introduction.tex`
- `chapters/literature_review.tex`
- `chapters/methodology.tex`
- `chapters/results.tex`
- `chapters/conclusion.tex`

Add references to `references.bib` and cite them with `\cite{key}`.

## Figures

Place figures in `figures/`. Suggested organization:

- `figures/methodologyfigures/`
- `figures/resultsfigures/`

Example:

```tex
\begin{figure}[H]
  \centering
  \includegraphics[width=0.8\textwidth]{figures/resultsfigures/example.png}
  \caption{Example result}
  \label{fig:example-result}
\end{figure}
```

## Bibliography Note

This project uses classic BibTeX because it works with the current local LaTeX
installation. The referenced GitHub template uses `biblatex` with `biber`, but
that requires extra packages. If you install `biblatex` and `biber`, the project
can be migrated later.

## Common Issues

If `pdflatex` is not found, install a TeX distribution and restart VS Code.

If bibliography entries do not appear, run:

```sh
make clean
make
```

If figures do not show, check the image path and make sure the file is inside
the project folder.

If generated files appear in the root folder, compile using `make` or the VS Code
LaTeX Workshop recipe included in `.vscode/settings.json`.
