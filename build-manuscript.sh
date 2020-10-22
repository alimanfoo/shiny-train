#!/bin/bash

# ensure bail out on error
set -eo pipefail

# setup environment
source binder/env.sh

# clean
rm -vf supplemental.aux
rm -vf supplemental.bbl
rm -vf supplemental.bcf
rm -vf supplemental.blg
rm -vf supplemental.log
rm -vf supplemental.out
rm -vf supplemental.lof
rm -vf supplemental.lot
rm -vf supplemental.toc
rm -vf supplemental.pdf
rm -vf supplemental.run.xml
rm -vf supplemental.synctex.gz

# run pdflatex + biber + pdflatex
pdflatex -interaction=nonstopmode -halt-on-error supplemental.tex
biber supplemental
pdflatex -interaction=nonstopmode -halt-on-error supplemental.tex

# clean
rm -vf main.aux
rm -vf main.bbl
rm -vf main.bcf
rm -vf main.blg
rm -vf main.log
rm -vf main.out
rm -vf main.lof
rm -vf main.lot
rm -vf main.toc
rm -vf main.pdf
rm -vf main.run.xml
rm -vf main.synctex.gz

# run pdflatex + biber + pdflatex
pdflatex -interaction=nonstopmode -halt-on-error main.tex
biber main
pdflatex -interaction=nonstopmode -halt-on-error main.tex
