@default_files = ('simetrije.tex');
$makeindex = 'xindy -C utf8 -M simindex';
$pdf_mode = 1;
$xelatex = 'xelatex -output-driver="xdvipdfmx -p 156mm,234mm" -synctex=1 -file-line-error --shell-escape %O %S';
$lualatex = 'lualatex -paperwidth=156mm -paperheight=234mm -synctex=1 -file-line-error --shell-escape %O %S';
$latex = $lualatex;
$pdflatex = $lualatex;
$bibtex_use = 2;
