#!/bin/bash

#Funcion con un if para determinar una salida dependiendo del resultado
es_par(){

if  [[ $(( $1 % 2 )) -eq 0 ]]; then
	return 0
else
	return 1
fi

}

#Read para almacenar la entrada de un numero 
read -p "Introduce un numero > " NUM

#Llama a la funcion adjunto con el primer parametro que es el numero introducido anteriormente 
es_par $NUM

#Recoge el valor resultante de la funcion anterior (0 o 1)
VALOR=$?

#If que determina si el numero es par o impar dependiendo si el valor es 0 o 1
if [[ $VALOR -eq 0 ]]; then
echo "El numero $NUM es un numero par "
else
echo "El numero $NUM es un numero impar"
fi
