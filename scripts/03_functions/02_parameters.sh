#!/bin/bash

# se crea la función
saludo_personalizado() {
	# muestra un mensaje distinto (o un error) dependiendo del segundo parámetro
	case $2 in
		mañana) echo "Buenos días $1, hay que trabajar.";;
		tarde) echo "Buenas tardes $1, sigue con los scripts.";;
		noche) echo "Buenas noches $1, a dormir.";;
		*)
		echo "Error: valor erróneo en el parámetro"
		exit 1;;
	esac
	# mensaje final que muestra el número de argumentos pasador a la funcion
	echo "La función ha recibido $# argumentos."
}

# llama a la función
saludo_personalizado $(whoami) $1

