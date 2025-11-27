#!/bin/bash

read -p "Introduce una nota númerica del 1 al 10: " not

#Si tu clasificación es menor de 5
if [[ $not -lt 5 ]] then
	echo "Tu calificación es: Suspenso"
elif [[ $not -eq 5 ]] then #Tu clasificación es igual de 5
	echo "Tu calificación es: Aprobado"
elif [[ $not -eq 6 ]] then #Tu clasificación es igual de 6
	echo "Tu calificación es: Bien"
elif [[ $not -lt 9 ]] then #Tu clasificación es menor de 9
	echo "Tu calificación es: Notable"
elif [[ $not -gt 10 ]] then #Tu clasificación es mayor de 10
	echo "Introduzca un número del 1 al 10"
elif [[ $not -ge 9 ]] then #Tu clasificación es mayor de 9
	echo "Tu calificación es: Sobresaliente"
fi
