#!/bin/bash

while true; do
echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"
echo "3) Mostrar directorio de trabajo"
echo "4) Salir del programa"
read -p "Por favor introduzca una opción: " opcion

case $opcion in

1)
echo "La fecha es $(date)"
;;

2)
echo "El usuario es $(whoami)"
;;

3)
echo "El directorio de trabajo es $(pwd)"
;;

4)
echo "Saliendo del programa..."
exit 0
;;

*)
echo "Opcion no valida"
;;
esac

sleep 1

done
