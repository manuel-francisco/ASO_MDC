#!/bin/bash

# Creación del menu

while true; do # Esto es para que se repita el script hasta que se salga del menu

echo "========= Menu =========="
echo "1) Mostrar fecha alctual."
echo "2) Mostrar usuario actual."
echo "3) Mostrar directorio de trabajo"
echo "4) Salir del Menú"
echo "========================="

read -rp "Opción [1-4]: " Opcion

case "$Opcion" in
		1)
		echo "Fecha actual: $(date)"
		;;
		2)
		echo "Usuario actual: $USER"
		;;
		3)
		echo "Directorio de trabajo: $(pwd)"
		;;
		4)
		echo "Saliendo del Menú.."
		exit 0
		;;
		*)
		echo "Esa opción no es válida."
esac
	echo "==============================="
	sleep 1

done
