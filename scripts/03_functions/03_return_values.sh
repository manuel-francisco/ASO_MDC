#!/bin/bash

# Funcion es_par, la cual determina si un número es par o impar
# Parámetro: $1 - numero a evaluar
# Return: 0 si es par, 1 si es impar
es_par() {
    # El operador % calcula el resto de la division
    # Si el resto de dividir entre 2 es 0, el número es par
    if (( $1 % 2 == 0 )); then
        # return 0 indica éxito/verdadero en bash
        # Se usa para numeros pares
        return 0
    else
        # return 1 indica fallo/falso en bash
        # Se usa para numeros impares
        return 1
    fi
}

# Solicitar numero al usuario
read -p "Introduce un numero: " NUM

# Llamar a la funcion con el numero introducido
es_par $NUM

# $? contiene el codigo de salida de la ultima orden ejecutada
# En este caso, captura el valor devuelto por return (0 o 1)
if [ $? -eq 0 ]; then
    echo "$NUM es un numero par."
else
    echo "$NUM es un numero impar."
fi