#!/bin/bash

#bucle, mientras que no se introduzca 4, sigue mostrando el menu y pidiendo una opcion
while [[ $OPCION -ne 4 ]]; do

echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"
echo "3) Mostrar directorio de trabajo"
echo "4) Salir"

#Linea de separador visual para la legilidad al ejecutar el script
echo "------------------------"

read -p "Elige una opcion > " OPCION

echo "------------------------"

#Case con las opciones posibles, el valor se obtiene del read
case $OPCION in
	1)
		echo "Fecha actual $(date)"
		echo "------------------------"
		;;
	2)
		echo "Usuario actual $(whoami)"
		echo "------------------------"
		;;
	3)
		echo "Directorio de trabajo: $(pwd)"
		echo "------------------------"
		;;
	4)
		echo "Saliendo..."
		break
		;;
	*)
		echo "Entrada no valida"
		;;
esac

#Este comando añade una pequeña pausa antes de volver a mostrar el menu y pedir una opcion
sleep 1
done
