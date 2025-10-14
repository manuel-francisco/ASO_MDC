#!/bin/bash

# Declaro la variable suma para poder saber el resultado de los dos primeros argumentos
suma=$(($1+$2))
# Imprimo por pantalla el siguiente mensaje
# Las variables $0 $1 $2, ya estan definidas ya que son variables especiales
echo "El script se llama $0
Primer numero: $1
Segundo numero: $2
Resultado: $suma"
