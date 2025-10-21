#!/bin/bash

# Definimos la funcion es_par, que verifica si el numero es par o impar

es_par() {

if [[ $(( $1 % 2 )) -eq 0 ]]; then
    return 0
else
    return 1
fi

}

# Le pedimos al usuario que escriba un numero

read -p "Escribe un numero: " NUM

# Llammamos a la funcion usando la variable NUM de antes

es_par $NUM

# Imprimimos por pantalla si es par o impar

if [[ $? -eq 0 ]] 
then
echo "El numero $NUM es par"
else
echo "El numero $NUM es impar"
fi

