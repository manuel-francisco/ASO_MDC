#!/bin/bash

# Función para mostrar la fecha actuales
mostrar_fecha() {
	echo "La fecha actual es: $(date)"	
}

# Función para mostrar el nombre del usuario
mostrar_usuario() {
	echo "El usuario actual es: $(whoami)"
}

# Funcion que muestra el espacio en disco
mostrar_espacio() {
	echo "Este es el uso del disco actual: $(df -h /)"	
}

# Función para mostrar el menú
menu() {
	echo -e "1) Mostrar fecha actual\n2) Mostrar usuario \
actual\n3) Mostrar espacio en disco\n4) Salir"
}

# Realizamos un bucle infinito hasta que salimos introduciendo el valor 4
while true; do

	# Llama a la función menú
	menu

	# Pide accion por parte del usuario para elegir del menu
	read -p "Introduce una de las opciones " OPCION
	# Comprobamos la elección realizada por el usuario
	case $OPCION in
		1)
			mostrar_fecha
			;;
		2)
			mostrar_usuario
			;;
		3)
			mostrar_espacio
			;;
		4)
			echo "Saliendo del programa."
			break
			;;
		*)
			# Cuando no es una de las 4 opciones anteriores, muestra el mensaje y vuelve al bucle
			echo "Elige una de las 4 opciones"
			;;
	esac

    # Realiza una pausa de un segundo
	sleep 1

done
