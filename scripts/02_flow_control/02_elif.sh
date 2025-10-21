#!/bin/bash

# Pedimos al usuario que introduzca su nota
read -p "Introduce tu nota (de 0 a 10) > " nota

# Validar que la nota sea un número entero en rango válido (0 a 10)
if ! [[ "$nota" =~ ^[0-9]+$ ]] || (( nota < 0 || nota > 10 )); then
  resultado="calificación inválida"
else
  # Evaluamos en orden descendente para asignar bien los rangos
  if (( nota >= 9 )); then
    resultado="sobresaliente"
  elif (( nota >= 7 )); then
    resultado="notable"
  elif (( nota >= 6 )); then
    resultado="bien"
  elif (( nota >= 5 )); then
    resultado="aprobado"
  else
    resultado="suspenso"
  fi
fi

# Mostramos el resultado final
echo "Tu calificación es $resultado"
