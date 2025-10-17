#/bin/bash
# pregunta por un ńumero
read -p "Introduzca un número: " numero
# si es mayor de 10
if [[ $numero -gt 10 ]]; then
	echo "$numero es mayor que 10."
# si el ńumero es 10
elif [[ $numero -eq 10 ]]; then
	echo "Son el mismo número."
# es el número es menor de 10
else
	echo "$numero es menor que 10."
fi
