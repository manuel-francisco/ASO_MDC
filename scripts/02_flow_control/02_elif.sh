#!/bin/bash

#Read para saber el valor de nota
read -p "Introduce tu nota > " nota

#Son 5 if concatenados para saber la nota de un alumno
if [[ $nota -lt 5 ]] then
echo "Suspenso"
elif [[ $nota -eq 5 ]] then
echo "Aprobado"
elif [[ $nota -eq 6 ]] then
echo "Bien"
elif [[ $nota -le 8 ]] then
echo "Notable"
elif [[ $nota -ge 9 ]] then
echo "Sobresaliente"
fi
