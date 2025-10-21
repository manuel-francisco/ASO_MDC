#!/bin/bash

read -p "Introduce tu nota > " nota


if [[ $nota -lt 0 || $nota -gt 10 ]]; then

echo "Solo se permiten numeros del 0-10"

exit 0

fi



if [[ $nota -ge 0 && $nota -le 4 ]]; then

echo "Tu nota es: Suspenso"

elif [[ $nota -eq 5 ]]; then

echo "Tu nota es: Aprobado"

elif [[ $nota -eq 6 ]]; then

echo "Tu nota es: Bien"

elif [[ $nota -ge 7 && $nota -le 8 ]]; then

echo "Tu nota es: Notable"

elif [[ $nota -ge 9 && $nota -le 10 ]]; then

echo "Tu nota es sobresaliente"

fi
