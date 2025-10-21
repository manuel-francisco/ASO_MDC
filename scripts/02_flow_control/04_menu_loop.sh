#!/bin/bash

OPCION=""
# el while es para que haya un bucle. basicamente está diciendo que mientras que la opción no sea 4, seguirá ejecutándose el programa.
while [ "$OPCION" != "4" ]; do
#mostramos las cuatro opciones
	echo "1) Mostrar fecha actual"
	echo "2) Mostrar usuario actual"
	echo "3) Mostrar directorio de trabajo"
	echo "4) Salir"
#le damos al usuario la opción de elegir una opción usando este comando
	read -p "Selecciona una opción: " OPCION
#qué pasará si escogemos una de las cuatro opciones
	case $OPCION in
	1)
	echo "$(date)."
	;;
	2)
	echo "$(whoami)"
	;;
	3)
	echo "$(pwd)"
	;;
	4)
	echo "Adiós"
	exit 0
	;;
	*)
	echo "Opción no válida"
	;;

	esac
#esto hace que haya una pausa antes de volver a mostrar el menu. la pausa es de un segundo en este caso.
sleep 1
done
