#!/bin/bash
# Mostrar el nombre del script ($0)
echo "El script se llama $0"

# Mostrar el primer argumento ($1)
echo "Primer número: $1"

# Mostrar el segundo argumento ($2)
echo "Segundo número: $2"

# Calcular la suma de los dos argumentos usando $(( ))
# y mostrar el resultado
resultado=$(( $1 + $2 ))
echo "Resultado: $resultado"
