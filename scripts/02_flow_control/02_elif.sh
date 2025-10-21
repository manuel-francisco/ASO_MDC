#!/bin/bash

# Pedimos al usuario que introduzca su nota
read -p "Introduce tu nota > " nota

# Evaluamos la nota con una estructura if..elif..else..
if [[ "$nota" -le 4 ]]; then
  resultado="suspenso"
elif [[ "$nota" -eq 5 ]]; then
  resultado="aprobado"
elif [[ "$nota" -eq 6 ]]; then
  resultado="bien"
elif [[ "$nota" -ge 9 ]]; then
  resultado="sobresaliente"
elif [[ "$nota" -ge 7 ]]; then
  resultado="notable"
else
  resultado="calificación inválida"
fi

# Mostramos el resultado final
echo "Tu calificación es $resultado"
