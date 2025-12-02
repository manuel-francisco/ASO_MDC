#!/bin/bash

echo "1) Mostar fecha actual" fecha
echo "2) Mostrar usuario actual" usuario
echo "3) Salir" salir

read -p "Por favor introduzca una opción: " opcion

case "$opcion" in

1)
echo "La fecha es $(date)"
;;

2)
echo "El usuario es $(whoami)"
;;

3)
echo "Saliendo hasta luego..."
exit
;;

*)
echo "opcion no valida"
;;
esac
