#!/usr/bin/env bash
set -e

mkdir -p .texlive-cache
TEXMFCACHE="$(pwd)/.texlive-cache" \
TEXMFVAR="$(pwd)/.texlive-cache" \
latexmk -lualatex -outdir=build -auxdir=build -interaction=nonstopmode main.tex
cp build/main.pdf main.pdf
rm -f build/main.pdf
