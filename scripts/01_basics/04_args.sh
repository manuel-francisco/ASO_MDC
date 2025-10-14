#!/bin/bash

echo "El script se llama $0" # Devuelve el nombre del script
echo "Primer número: $1" # Devuelve el primer argumento que pasamos, en este caso el primer número
echo "Segundo número: $2" # Devuelve el segundo argumento que pasamos al script
echo "Resultado: $(( $1 + $2 ))" # Devuelve la suma de los dos argumentos anteriores.
