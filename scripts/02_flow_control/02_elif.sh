#!/bin/bash

read -p "Por favor, introduce un número entre el 0 y el 10 ambos incluidos: " NUM

# Comprueba que el número no sale del rango. Si sale del rango, termina el programa con mensaje de error y codigo 1
if [[ $NUM -gt 10 ]] || [[ $NUM -lt 0 ]]; then
	echo "El número indicado está fuera del rango de notas."
	exit 1
# Si no se cumple la condicion anterior, devuelve un mensaje segun el numero introducido.
else
	if [[ $NUM -le 4 ]]; then
		echo "Tu calificación es: Suspenso"
		exit 0
	elif [[ $NUM -eq 5 ]];then
		echo "Tu calificación es: Aprobado"
		exit 0
	elif [[ $NUM -eq 6 ]];then
		echo "Tu calificación es: Bien"
		exit 0
	elif [[ $NUM -ge 7 ]] && [[ $NUM -le 8 ]]; then
		echo "Tu calificación es: Notable"
		exit 0
	else
		echo "Tu calificación es: Sobresaliente"
		exit 0
	fi
fi
