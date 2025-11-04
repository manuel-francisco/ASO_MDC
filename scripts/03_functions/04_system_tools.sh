#!/bin/bash

#funcion que contiene la fecha actual
mostrar_fecha (){
	echo "La fecha actual es: $(date)"

}

#funcion que contiene el usuario actual
mostrar_usuario (){
	echo "El usuario actual es: $(whoami)"
}

#funcion que contiene los detalles de almacenamiento del disco
mostrar_espacio (){
	echo "El espacio del disco es: $(df -h /)"
}

#Salto de linea, incluyo muchos en este script, porque su ejecucion es larga y de esta manera se ve mas limpio
echo -e "\n"

#Funcion que contiene las opciones del menu
menu(){
echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"
echo "3) Mostrar espacio en disco"
echo -e "4) Salir \n"
}

#Bucle que se ejecuta infitamente mientras que no se indique lo contrario
while true; do

#Llamada a la funcion de menu, para mostralo
	menu

#Pide y recoge una de las 4 opciones del menu, se introducen en una variable
	read -p "Selecciona una opcion > " OPCION
	echo -e "\n"

#Case con el valor de la variable anterior, cada opcion llama a una funcion anterior
case $OPCION in
1)
	mostrar_fecha
	echo -e "\n"
	;;
2)
	mostrar_usuario
	echo -e "\n"
	;;
3)
	mostrar_espacio
	echo -e "\n"
	;;
4)
	echo "Saliendo..."
	break
	;;

*)
	echo "Elige una de las 4 opciones"
	echo -e "\n"
	;;
esac

#Pequeña pausa durante la ejecucion
sleep 1

done
