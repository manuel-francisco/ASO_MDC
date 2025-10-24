#!/bin/bash

es_par () {
if (( $1 % 2 == 0)); then
		return 0
	else
		return 1
fi
}

read -p "Introduce un numero > " NUM

es_par $NUM

if [ $? -eq 0 ]; then
	echo "El numero es par"
	else echo "el numero es impar"
fi


#Return devuelve un codigo de salida el cual en este caso es 0 si es par o 1 si es impar. Por norma general 0 suele significar true y 1 false pero tiene distintas implantaciones.
#(#?) es una variable que almacena el codigo de salida en este caso del return, por lo que en esta impalntación coge el resultado del primer if y hace la interpretación, que en este caso es par o impar.

