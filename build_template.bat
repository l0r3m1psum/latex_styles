@echo off

setlocal

set "flags=-interaction batchmode -file-line-error -halt-on-error"
set "fname=document"

mpost    %flags% figures || goto :exit
pdflatex %flags% %fname% || goto :exit
bibtex           %fname% || goto :exit
pdflatex %flags% %fname% || goto :exit
pdflatex %flags% %fname% || goto :exit

endlocal

:exit
exit /b %ERRORLEVEL%
