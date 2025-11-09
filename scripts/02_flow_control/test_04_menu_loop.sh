#!/bin/bash

#Chmod para cambiar los permisos del script que va a recibir el test
chmod 755 04_menu_loop.sh

#Definicion de colores
verde="\e[32m"
rojo="\e[31m"
normal="\e[0m"

#Test, comprueba las salidas del script 04_menu_loop.sh
#Opcion 1 del menu
SALIDA1=$(echo -e "1\n4\n" | ./04_menu_loop.sh)
if [[ $SALIDA1 == *"Fecha actual"* ]]; then
	echo -e "[Fecha] \t\t ${verde}TEST OK${normal}"
else 
	echo -e "[Fecha] \t\t ${rojo}TEST FALLIDO${normal}"
fi

#Opcion 2 del menu
SALIDA2=$(echo -e "2\n4\n" | ./04_menu_loop.sh)
if [[ $SALIDA2 == *"Usuario actual"* ]]; then
	echo -e "[Usuario] \t\t ${verde}TEST OK${normal}"
else
	echo -e "[Usuario] \t\t ${rojo}TEST FALLIDO${normal}"
fi

#Opcion 3 del menu
SALIDA3=$(echo -e "3\n4\n" | ./04_menu_loop.sh)
if [[ $SALIDA3 == *"Directorio de trabajo:"* ]]; then
	echo -e "[Directorio] \t\t ${verde}TEST OK${normal}"
else
	echo -e "[Directorio] \t\t ${rojo}TEST FALLIDO${normal}"
fi

#Opcion 4 del menu
SALIDA4=$(echo -e "4\n" | ./04_menu_loop.sh)
if [[ $SALIDA4 == *"Saliendo..."* ]]; then
	echo -e "[Salida] \t\t ${verde}TEST OK${normal}"
else
	echo -e "[Salida] \t\t ${rojo}TEST FALLIDO${normal}"
fi

#Opcion invalida del menu
SALIDA5=$(echo -e "a\n4\n" | ./04_menu_loop.sh)
if [[ $SALIDA5 == *"Entrada no valida"* ]]; then
	echo -e "[Entrada incorrecta] \t ${verde}TEST OK${normal}"
else
	echo -e "[Entrada incorrecta] \t ${rojo}TEST FALLIDO${normal}"
fi
