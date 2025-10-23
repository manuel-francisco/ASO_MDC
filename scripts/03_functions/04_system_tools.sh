#!/bin/bash

# Definimos funciones del menu

mostrar_fecha(){

echo "$(date)"

}

mostrar_usuario () {

echo "$(whoami)"

}

mostrar_espacio() {

echo "$(df -h /)"

}

# Definimos la funcion menua


menu() {

# Opciones
echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"
echo "3) Mostrar espacio en disco"
echo "4) Salir"

read -p "Elige una opcion: " opcion

# Bucle donde al introducir la opcion realice la funcion

while [[ $opcion -ne 4 ]]
do
case $opcion in
    1)
    mostrar_fecha
    ;;
    2)
    mostrar_usuario
    ;;
    3)
    mostrar_espacio
    ;;
    *)
    echo "error"
    ;;

esac
sleep 1
read -p "Elige una opcion: " opcion
done
}

# Ejecutamos la funcion

menu