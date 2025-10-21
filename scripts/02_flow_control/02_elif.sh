#!/bin/bash

read -p "Introduzca su nota: " nota

if ! [[ $nota =~ ^[0-9]+$ ]]; then
echo "Introduzca un valor correcto" 

elif [[ $nota -le 4 ]]; then
echo "Su examen esta suspenso"

elif [[ $nota -eq 5 ]]; then
echo "Su examen esta aprobado"

elif [[ $nota -eq 6 ]]; then
echo "Su examen esta bien"

elif [[ $nota -ge 7 ]] && [[ $nota -le 8 ]]; then
echo "Su examen esta notable"
else 
echo "Su examen esta sobresaliente"
fi
