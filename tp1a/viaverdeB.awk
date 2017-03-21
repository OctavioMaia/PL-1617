BEGIN 		{FS = ">|</"}

/<SAIDA>/	{a[$2]}

END {
	for(i in a) print i
}