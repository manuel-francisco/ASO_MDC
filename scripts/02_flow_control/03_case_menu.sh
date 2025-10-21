#!/bin/bash
echo ""
echo "----------MENU----------"
echo "1.Mostrar fecha actual"
echo "2.Mostrar usuario actual"	 #Menu que le aparecerá al usuario
echo "3.Salir"
echo ""
read -p "Selecciona una de las opciones (1, 2 o 3) -->  " menu  #Para poder elegir la opción
case $menu in

	1) date
	;;

	2) whoami
	;;				#Las opcciones del menú, dependiendo de opción a escogido el usuario,
					#entrará en una opción u otra
	3) exit 1
	;;

	*) echo "Opción no válida"
	;;
esac
