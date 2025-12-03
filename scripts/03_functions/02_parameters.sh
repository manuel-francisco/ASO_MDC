#!/bin/bash

#Crear la función saludo_personalizado

function saludo_personalizado {

	if [[ $2 == mañana ]]; then

		echo "Buenos dias, $1. Que tengas una gran jornada."

	elif [[ $2 == tarde ]]; then

		echo "Buenas tarde, $1.Que se te pase rápido."

	else

		echo "Buenas noches, $1. Descansa."
	fi

	echo "$#"

}

	saludo_personalizado "Jesús" "tarde"
