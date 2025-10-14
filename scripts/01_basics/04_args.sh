#!/bin/bash
#Esta linea indica como se llama el script
echo "El script se llama: $0"
#Esta linea recoge el primer numero y lo muestra por pantalla
echo "Primer numero: $1"
#Esta linea recoge el segundo numero y lo muestra por pantalla
echo "Segundo numero: $2"
#Por ultimo, sumamos los dos argumentos y mostramos el resultado por pantalla
echo "Resultado: $(($1 + $2))"

