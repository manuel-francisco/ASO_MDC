#!/bin/bash

saludo_personalizado() {
	# Comprueba si se han pasado dos argumentos, si es así, entra en el case
	if [[  $# -eq 2 ]];then
		# El case comprueba el valor del segundo argumento pasado, devuelve un mensaje en funcion del valor del argumento
		case $2 in 
			# Valores que puede tomar el argumento
			"mañana")
				echo "Buenos días, $1. Que tengas una buena jornada."
				;;
			"tarde")
				echo "Buenas tardes, $1. Disfruta de tu tiempo libre."
				;;
			"noche")
				echo "Buenas noches, $1. Descansa."
				;;
			# Que hacer si el valor es distinto a los indicados anteriormente
			*)
				echo "Lo siento, no te he entendido"
				exit 2
				;;
		esac
		
	else
		echo "No has pasado 2 parámetros, corrígelo"
	fi
	# Indica el número de parámetros itnroducidos
	echo "Has introducido $# parámetros"
}


saludo_personalizado "Jorge" "noche" 
