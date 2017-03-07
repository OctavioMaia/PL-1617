BEGIN {FS=">|</"}

/<DATA_ENTRADA>[^null]/ {a[$2]++}
/<SAIDA>/ {b[$2]++}
/<IMPORTANCIA>/ {c+=$2}

END {
	for(i in a) print(i, a[i])
	for(i in b) print(i, b[i])
	print c
}