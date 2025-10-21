#!/bin/bash

es_par() {

if [[ $(( $1 % 2 )) -eq 0 ]]; then
    return 0
else
    return 1
fi

}


read -p "Escribe un numero: " NUM

es_par $NUM

if [[ $? -eq 0 ]] 
then
echo "El numero $NUM es par"
else
echo "El numero $NUM es impar"
fi

