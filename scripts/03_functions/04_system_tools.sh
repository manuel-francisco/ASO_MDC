#!/bin/bash

# Definimos las diferentes funciones que usaremos mas adelante

mostrar_fecha(){

echo "$(date)"

}

mostrar_usuario () {

echo "$(whoami)"

}

mostrar_espacio() {

echo "$(df -h /)"

}

# Definimos la funcion menu, que sera la que aparecera por pantalla


menu() {

# Primero mostramos las opciones al ususario para despues pedirle que elija una
echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"
echo "3) Mostrar espacio en disco"
echo "4) Salir"

read -p "Elige una opcion: " opcion

# Creamos un bucle en el que le pediremos al usuario que elija opciones hasta que elija la 4(salir)

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

esac
sleep 1
read -p "Elige una opcion: " opcion
done
}

# Ejecutamos la funcion

menu