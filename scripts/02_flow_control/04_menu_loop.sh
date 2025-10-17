#!/bin/bash
#opciones
echo "1) Mostrar fecha actual
2) Mostrar usuario actual
3) Mostrar directorio de trabajo
4) Salir"

#variables
read -p "Seleccione una opción: " opcion


#coniguracion del bucle
while [ $opcion != 4 ]; do

#Configuracion del menu
	case "$opcion" in

		1)
			echo "La fecha actual es "
			;;

		2)
			echo "El usuario actual es $(whoami)"
			;;

		3)
			echo "Estas ubicado en $PWD"
			;;

		*)
			echo "Opcion no resgistrada"
			;;

esac


read -p "Seleccione una opción: " opcion

done
