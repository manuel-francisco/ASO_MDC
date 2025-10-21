#!/bin/bash

read -p "Introduzca su nota: " nota

if [[ $nota -eq 5 ]]; then
echo "Calificación: Aprobado"
elif [[ $nota -eq 6 ]]; then
echo "Calificación: Bien"
elif [[ $nota -eq 7 ]]; then
echo "Calificación: Notable"
elif [[ $nota -eq 8 ]]; then
echo "Calificación: Notable"
elif [[ $nota -ge 9 ]]; then
echo "Calificación: Sobresaliente"
elif [[ $nota -le 4 ]]; then
echo "Calificación: Suspenso"
else
echo "Error"
fi
