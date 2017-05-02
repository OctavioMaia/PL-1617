T=lyr2tex
$T: $T.fl
	flex $T.fl
	cc lex.yy.c -o $T

teste:
	cat $$(grep -l '<abc>' musica/*.lyr) | ./lyr2tex