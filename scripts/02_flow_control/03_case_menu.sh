#!/bin/bash

# Mostramos la opciones por pantalla

echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"
echo "3) Salir"

read -p "Introduzca una opcion: " opcion  # Le pedimos al usuario que seleccione una opcion y la almacenamos en la variable opcion

case $opcion in  # Inicializamos el case
	1)		# Si elige la opcion 1, entonces mostramos la fecha
		date
		;;
	2)		# Si elige la opcion 2, entonces mostramos el usuario
		whoami
		;;
	3)		# Si elige la opcion 3, entonces sale del script y mostramos un mensaje de despedida
		echo "Que tenga un buen dia"
		exit
		;;
	*)		# Si especifica una opcion no definida, entonces imprimimos por pantalla Opcion no valida
		echo "Opcion no valida"
		;;
esac

# Fin del case
 
