#!/bin/sh

set -e

flags="-interaction batchmode -file-line-error -halt-on-error"
fname="document"

mpost    $flags figures
pdflatex $flags "$fname"
bibtex          "$fname"
pdflatex $flags "$fname"
pdflatex $flags "$fname"
