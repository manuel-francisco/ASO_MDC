#!/bin/bash
# Script para comprobar si un número es par o impar usando valores de retorno y códigos de salida

# Función que determina si el número recibido es par o impar
es_par() {
  # El operador % calcula el resto de la división: si es cero es par
  if [[ $(( $1 % 2 )) -eq 0 ]]; then
    return 0      # return 0 indica éxito/par
  else
    return 1      # return 1 indica impar (fallo o condición alternativa)
  fi
}

# Pedir al usuario que introduzca un número
read -p "Introduce un número > " NUM

# Llamar a la función y después usar $? para capturar el código de salida
es_par "$NUM"
RESULTADO=$?        # $? guarda el último código de salida (return de la función)

# Evaluar el resultado y mostrar mensaje apropiado
if [[ $RESULTADO -eq 0 ]]; then
  echo "$NUM es un número par."
else
  echo "$NUM es un número impar."
fi

# Comentarios clave:
# - 'return' dentro de una función Bash permite devolver un código de salida (del 0 al 255).
# - '$?' representa el código de salida del último comando/evaluación ejecutada (aquí, el valor de return).
