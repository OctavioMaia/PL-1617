BEGIN 					{FS = ">|</"}

/<DATA_ENTRADA>[^null]/	{a[$2]++}

END {
	for(i in a) print(i,a[i])
}