BEGIN 					{FS = ">|</"}

/<IMPORTANCIA/			{sub(",",".",$2);montante=$2}
/<VALOR_DESCONTO/		{desconto=$2}
/<DATA_ENTRADA>[^null]/	{split($2,data,"-");mes=data[2]} 
/<\/TRANSACCAO>/		{total=montante-desconto; a[mes]+=total}

END {
	for(i in a) print(i,a[i])
}