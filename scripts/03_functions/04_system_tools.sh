#!/bin/bash

# Definimos las distintas funciones
mostrar_fecha () {
    date
}

mostrar_usuario () {
    whoami
}

mostrar_espacio ()  {
    df -h
}

# Inicializamos el bucle while
while true; do

# Mostramos las distintas opciones al usuario
echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"
echo "3) Mostrar espacio en el disco"
echo "4) Salir"

# Le pedimos al usuario que introduzca una opcion y la guardamos en la variable opcion
read -p "Introduzca una opcion: " opcion

#Hacemos el menu con case
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

            4)
              exit
              ;;

            *)
              echo "Opcion no valida"
              ;;
esac

    # Añadimos la pausa para la aparicion del menu
    sleep 1

done
