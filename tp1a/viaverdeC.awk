BEGIN {FS = ">|</";datam=0;i=0;d=0;total=0}

/<IMPORTANCIA/ {sub(",",".",$2);i=$2}
/<VALOR_DESCONTO/ {d=$2}
/<DATA_ENTRADA>[^null]/{split($2,data,"-");datam=data[2]} 
/<\/TRANSACCAO>/{total=i-d; a[datam]+=total}

END {
	for(i in a) print i a[i];
}