#!/bin/bash

# función que muestra la fecha y la hora
mostrar_fecha() {
	date
}

# función que muestra el usuario actual
mostrar_usuario() {
	echo "$USER"	
}

# función muestra el uso del almacenamiento de la raíz
mostrar_espacio() {
	df -h /
}

opcion=0

# bucle principal del menú
while [[ $opcion -ne 4 ]];do
	# imprime el menú
	echo "1) Mostrar fecha actual"
	echo "2) Mostrar usuario actual"
	echo "3) Mostrar espacio en disco"
	echo "4) Salir"

	# pregunta por la opción
	read -p "> " opcion

	# ejecutar una función según la opción
	case $opcion in
		1) mostrar_fecha;;
		2) mostrar_usuario;;
		3) mostrar_espacio;;
		4) echo "Saliendo del menu...";;
		*) echo "Error: opción inválida";;
	esac

	# espera 1 segundo
	sleep 1
done
