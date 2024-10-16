# https://tex.stackexchange.com/a/1167
dest=`kpsewhich -var-value=TEXMFHOME`
dest="${dest}/tex/latex/local"
mkdir -p "$dest"
cp -f matrixcalculus.sty "$dest"
