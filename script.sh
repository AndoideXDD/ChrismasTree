#!/bin/bash
#Aqui posem el tamany del triangle
x=$1
# aqui posem el numero de espais
numEspais=$2
# aqui posem fins a quina linea volem començar
inici=$3
espais=""
for ((element=0;element<$(($x + $numEspais));++element))
do 
	espais="$espais "
done
fila=""
inversaFila=""
if [[ $inici == 0 ]]
then 
	for ((element=1;element<$(($x+1));++element))
	do
		fila="$fila*"
		inversaFila="*$inversaFila"
		echo "${espais::length-$element}$inversaFila$fila"
	done
else 
	for ((element=1;element<$(($inici+1));++element))
	do
		fila="$fila*"
		inversaFila="*$inversaFila"
	done
	for ((element=($inici+1);element<$(($x+1));++element))
	do
		fila="$fila*"
		
		inversaFila="*$inversaFila"
		echo "${espais::length-$element}$inversaFila$fila"
	done
fi
