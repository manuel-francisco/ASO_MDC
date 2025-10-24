#!/bin/bash

function saludo_personalizado(){
	if [[ $2 = "mañana" ]]; then
	echo "Buenos días, $1. Que tengas una gran jornada."
	elif [[ $2 = "noche" ]]; then
	echo "Buenas noches, $1. Descansa."
	else
	echo "Buenas tardes, $1. Esperemos que estés teniendo un buen día."
	fi
}

echo "$#"
saludo_personalizado $USER tarde
