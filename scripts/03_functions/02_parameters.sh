#!/bin/bash

saludo_personalizado () {
	nombre=$1
	hora=$2


	if [[ $hora == "manana" ]]
	then
		echo "Buenos días, $nombre. Que tengas una gran jornada."

	elif [[ $hora == "noche" ]]
	then
		echo "Buenas noches, $nombre. Descansa"
	else
		echo "Momento del día equivocado"
	fi
echo "Número total de funciones recibidas: $#"

}

saludo_personalizado "samuel" "noche"
