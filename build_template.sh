#!/bin/sh

flags="-interaction batchmode -file-line-error -halt-on-error"
fname="document"

mpost    $flags figures  ; err=$? ; cat figures.log    ; if [ $err -ne 0 ] ; then exit $err; fi
pdflatex $flags "$fname" ; err=$? ; cat "${fname}.log" ; if [ $err -ne 0 ] ; then exit $err; fi
bibtex          "$fname" ; err=$? ; cat "${fname}.blg" ; if [ $err -ne 0 ] ; then exit $err; fi
pdflatex $flags "$fname" ; err=$? ; cat "${fname}.log" ; if [ $err -ne 0 ] ; then exit $err; fi
pdflatex $flags "$fname" ; err=$? ; cat "${fname}.log" ; if [ $err -ne 0 ] ; then exit $err; fi
