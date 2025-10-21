#!/bin/bash

# Creación del menu

echo "========= Menu =========="
echo "1) Mostrar fecha alctual."
echo "2) Mostrar usuario actual."
echo "3) Salir del Menú"
echo "========================="

read -rp "Opción [1-3]: " Opcion

case "$Opcion" in
		1)
		echo "Fecha actual: $(date)"
		;;
		2)
		echo "Usuario actual: $USER"
		;;
		3)
		echo "Saliendo del Menú.."
		break
		;;
		*)
		echo "Esa opción no es válida."
esac
