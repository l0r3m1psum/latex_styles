rem https://tex.stackexchange.com/a/1141
FOR /F "tokens=* USEBACKQ" %%F IN (`kpsewhich -var-value TEXMFLOCAL`) DO (SET dest=%%F)
COPY /Y matrixcalculus.sty "%dest%\tex\latex\local"
texhash
