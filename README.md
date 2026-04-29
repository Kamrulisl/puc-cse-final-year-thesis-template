# PUC Thesis LaTeX Template

This is a three-member thesis/report LaTeX setup for the Department of Computer
Science & Engineering, Premier University, Chattogram. It is based on the PUC
template style and includes a cleaner local build setup for VS Code.

## Credits And References

This template was adapted and reviewed from:

- Original PUC report template by Anik Sen: <https://github.com/ascuet/puc-report-template>
- Modified PUC CSE thesis template by Dhruba Dey: <https://github.com/dhrubad/Thesis_Paper_Latex>

## Easy Setup

You only need three things:

- A LaTeX distribution
- VS Code
- The LaTeX Workshop extension for VS Code

This project already includes `.vscode/settings.json`, so LaTeX Workshop will
compile using the project recipe. The final PDF will be created as `main.pdf`,
and temporary files will stay inside `build/`.

### Windows

1. Install MiKTeX: <https://miktex.org/download>
2. Install Strawberry Perl: <https://strawberryperl.com/>
3. Install VS Code.
4. Open VS Code and install the LaTeX Workshop extension.
5. Open MiKTeX Console and allow missing packages to be installed automatically.
6. Open this project folder in VS Code.
7. Open `main.tex`.
8. Press `Ctrl + S` or run the LaTeX Workshop build command.

Terminal build command:

```sh
latexmk -pdf -outdir=. -auxdir=build main.tex
```

If `latexmk` is not recognized, restart VS Code or add MiKTeX and Strawberry
Perl to your system `PATH`.

### macOS

1. Install MacTeX: <https://tug.org/mactex/>
2. Install VS Code.
3. Open VS Code and install the LaTeX Workshop extension.
4. Open this project folder in VS Code.
5. Open `main.tex`.
6. Press `Cmd + S` or run the LaTeX Workshop build command.

Terminal build command:

```sh
make
```

If `make` is unavailable, use:

```sh
latexmk -pdf -outdir=. -auxdir=build main.tex
```

### Linux

On Ubuntu/Debian:

```sh
sudo apt-get install texlive-latex-base texlive-latex-extra texlive-fonts-recommended latexmk
```

Then:

1. Install VS Code.
2. Install the LaTeX Workshop extension.
3. Open this project folder in VS Code.
4. Open `main.tex`.
5. Press `Ctrl + S` or run the terminal build command.

Terminal build command:

```sh
make
```

## Quick Start

1. Open `main.tex`.
2. Update thesis title, authors, supervisor, chairman, and submission month.
3. Open `abstract.tex` and write your abstract.
4. Write each chapter inside the `chapters/` folder.
5. Put figures inside the `figures/` folder.
6. Add references inside `references.bib`.
7. Build the PDF.

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

## Extra LaTeX Guides And Templates

This repository also includes two helper folders:

- `la-tex_basic/` - Bangla-friendly LaTeX basic command guide.
- `cover_report_typing/` - reusable cover-page and project-report templates.

The generated PDFs are intentionally committed for quick viewing:

- `la-tex_basic/la-tex-basic-commands-bangla.pdf`
- `la-tex_basic/bangla/main.pdf`
- `cover_report_typing/cover_template.pdf`
- `cover_report_typing/report_template.pdf`
- `cover_report_typing/project_report_demo.pdf`
- `cover_report_typing/dc_cover.pdf`
- `cover_report_typing/se_cover.pdf`
- `cover_report_typing/ccs_cover.pdf`

Build the Bangla LaTeX guide:

```sh
cd la-tex_basic
make
```

Build the report and cover templates:

```sh
cd cover_report_typing
make
```

In both folders, PDF files are created beside their `.tex` files. Temporary
helper files stay inside `build/`.

## First Edit Checklist

Start with these files in this order:

1. `main.tex`: update title, author names, IDs, supervisor, chairman, and date.
2. `title_page.tex`: check whether the title page wording looks correct.
3. `abstract.tex`: write the abstract and keywords.
4. `dedication.tex`: update or remove the dedication text.
5. `chapters/introduction.tex`: start writing Chapter 1.
6. `references.bib`: add your references.
7. `figures/`: add images and diagrams.

After each major edit, run:

```sh
make
```

## How LaTeX Works

LaTeX is not like Microsoft Word. You write plain text with commands, then LaTeX
compiles that source into a polished PDF.

The basic flow is:

```text
.tex source files + figures + references.bib
                  |
                  v
              LaTeX build
                  |
                  v
              final PDF
```

In this project:

- `main.tex` controls the full document.
- `thesis.sty` controls formatting.
- `title_page.tex`, `abstract.tex`, `signature.tex`, and other root `.tex` files
  control front matter pages.
- `chapters/*.tex` files contain the main thesis writing.
- `references.bib` stores bibliography information.
- `figures/` stores images.
- `build/` stores temporary build files.

You normally edit only:

- `main.tex`
- `abstract.tex`
- files inside `chapters/`
- `references.bib`
- images inside `figures/`

Avoid editing generated files inside `build/`.

## Basic LaTeX Syntax Guide

LaTeX commands usually start with a backslash:

```tex
\command{required value}
\command[optional value]{required value}
```

Examples:

```tex
\textbf{This text is bold.}
\includegraphics[width=0.8\textwidth]{figures/example.png}
```

Curly braces `{}` contain required content. Square brackets `[]` contain optional
settings. Environments start with `\begin{name}` and end with `\end{name}`:

```tex
\begin{center}
  This text is centered.
\end{center}
```

### Special Characters

Some characters have special meaning in LaTeX. If you want to print them as
normal text, write them like this:

```tex
\%
\&
\_
\#
\$
```

For example:

```tex
The model achieved 95\% accuracy.
Computer Science \& Engineering
student\_id
```

### Headings

Use headings to structure the document:

```tex
\chapter{Introduction}
\section{Background}
\subsection{Motivation}
\subsubsection{Dataset Details}
```

In this template, chapter titles are already written in `main.tex`. So inside
files like `chapters/introduction.tex`, you normally start with:

```tex
\section{Background}
```

### Paragraphs And Line Breaks

Write normal text directly:

```tex
Intrusion detection is an important task in network security.
This thesis studies machine learning based detection methods.
```

Leave one blank line to start a new paragraph:

```tex
This is the first paragraph.

This is the second paragraph.
```

Use `\\` only when you really need a manual line break:

```tex
First line\\
Second line
```

### Text Formatting

```tex
\textbf{bold text}
\textit{italic text}
\underline{underlined text}
\texttt{monospace code text}
```

Example:

```tex
\textbf{CNN} is used for feature extraction.
```

### Lists

Bullet list:

```tex
\begin{itemize}
  \item First point
  \item Second point
  \item Third point
\end{itemize}
```

Numbered list:

```tex
\begin{enumerate}
  \item Collect dataset
  \item Preprocess data
  \item Train model
\end{enumerate}
```

### Figures

Put image files inside `figures/`. Then add the figure like this:

```tex
\begin{figure}[H]
  \centering
  \includegraphics[width=0.8\textwidth]{figures/resultsfigures/example.png}
  \caption{Example result}
  \label{fig:example-result}
\end{figure}
```

Meaning:

- `[H]` tries to place the figure exactly here.
- `\centering` centers the figure.
- `width=0.8\textwidth` makes the image 80% of text width.
- `\caption{...}` adds the figure caption.
- `\label{...}` creates a reference key.

Reference the figure in text:

```tex
Figure~\ref{fig:example-result} shows the result.
```

### Tables

Basic table:

```tex
\begin{table}[H]
  \centering
  \caption{Example table}
  \label{tab:example}
  \begin{tabular}{ll}
    \toprule
    Item & Value \\
    \midrule
    Accuracy & 95\% \\
    Loss & 0.12 \\
    \bottomrule
  \end{tabular}
\end{table}
```

Column format examples:

- `{ll}` means two left-aligned columns.
- `{lc}` means first column left, second column center.
- `{lcr}` means left, center, right.

Reference the table in text:

```tex
Table~\ref{tab:example} summarizes the results.
```

### Equations

Inline equation:

```tex
Accuracy is calculated as $Accuracy = \frac{TP + TN}{TP + TN + FP + FN}$.
```

Displayed equation:

```tex
\begin{equation}
Accuracy = \frac{TP + TN}{TP + TN + FP + FN}
\end{equation}
```

Equation with label:

```tex
\begin{equation}
F1 = \frac{2 \times \mathrm{Precision} \times \mathrm{Recall}}
{\mathrm{Precision} + \mathrm{Recall}}
\label{eq:f1-score}
\end{equation}
```

Reference the equation:

```tex
Equation~\ref{eq:f1-score} shows the F1-score formula.
```

### Citations And References

Add a reference in `references.bib`:

```bibtex
@article{smith2024ids,
  author  = {Smith, John},
  title   = {Intrusion Detection Using Machine Learning},
  journal = {Example Journal},
  year    = {2024}
}
```

Cite it in a chapter:

```tex
Machine learning has been widely used for intrusion detection \cite{smith2024ids}.
```

For multiple citations:

```tex
Several studies explored IDS using deep learning \cite{smith2024ids,doe2023cnn}.
```

Then build again:

```sh
make
```

### Comments

Anything after `%` is ignored by LaTeX:

```tex
% This line will not appear in the PDF.
This line will appear in the PDF.
```

Use comments to keep notes:

```tex
% TODO: Add more discussion about preprocessing.
```

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
