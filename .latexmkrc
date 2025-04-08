@default_files = ('simetrije.tex');
$pdf_mode = 1;
$xelatex = 'xelatex -synctex=1 -file-line-error --shell-escape %O %S';
$latex = $xelatex;
$pdflatex = $xelatex;
$bibtex_use = 2;
