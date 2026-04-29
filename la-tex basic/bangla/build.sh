#!/usr/bin/env bash
set -e

mkdir -p .texlive-cache
TEXMFCACHE="$(pwd)/.texlive-cache" \
TEXMFVAR="$(pwd)/.texlive-cache" \
latexmk -lualatex -interaction=nonstopmode main.tex
