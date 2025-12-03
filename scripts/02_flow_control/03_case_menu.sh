#!/bin/bash

# Muestra las opciones que puedes elegir
echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"
echo "3) salir"


read -p "Elige > " elec

#Case dependiendo del valor de $elec te devuelve una respuesta u otra
case $elec in
	1)
	#fecha actual del sistema
	date 
;;
	2)
	#Usuario actual
	whoami
;;
	3)
	#Termina el script
	exit
;;
	*)
	#Se  queja de ti y termina el script
	echo "Quillo que pones?"
	exit
;;
esac
