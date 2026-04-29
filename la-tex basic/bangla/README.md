# Bangla LaTeX Setup

This folder is ready for Bangla + English LaTeX documents.

## Requirements

- LuaLaTeX
- `latexmk`
- `Noto Serif Bengali`
- `Noto Sans Bengali`

## Run

```sh
make
```

Or:

```sh
bash build.sh
```

The generated PDF will be created in this same folder:

```text
main.pdf
```

## Bangla Writing

Use:

```tex
\bn{এখানে বাংলা লিখুন}
```

Sans Bangla:

```tex
\bnsf{এখানে বাংলা লিখুন}
```

## Notes

- Engine: `lualatex`
- Bangla fonts: `Noto Serif Bengali`, `Noto Sans Bengali`
- Local cache is stored in `.texlive-cache/`
