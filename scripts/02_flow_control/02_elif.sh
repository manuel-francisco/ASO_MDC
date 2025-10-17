#!/bin/bash

#Variable para comprobar el rango de la nota
read -p "Introduzca su nota: " nota


#Estructura if que dicta el rango de la nota
if [[ $nota -eq 5 ]];then

echo "Aprobado"

elif [[ $nota -ge 0 && $nota -le 4 ]];then

echo "Suspenso"

elif [[ $nota -eq 6 ]];then

echo "Bien"

elif [[ $nota -eq 7 || $nota -eq 8 ]];then

echo "notable"

elif [[ $nota -eq 9 || $nota -eq 10 ]];then

echo "Sobresaliente"

else

echo "Su numero no estra dentro de los rangos de evaluación"

fi
