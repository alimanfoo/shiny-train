#!/bin/bash

# clean
rm -v supplemental.aux
rm -v supplemental.bbl
rm -v supplemental.bcf
rm -v supplemental.blg
rm -v supplemental.log
rm -v supplemental.out
rm -v supplemental.lof
rm -v supplemental.lot
rm -v supplemental.toc
rm -v supplemental.pdf
rm -v supplemental.run.xml
rm -v supplemental.synctex.gz

# ensure bail out on error
set -eo pipefail

# setup environment
source binder/env.sh

# run pdflatex + biber + pdflatex
pdflatex -interaction=nonstopmode -halt-on-error supplemental.tex
biber supplemental
pdflatex -interaction=nonstopmode -halt-on-error supplemental.tex
