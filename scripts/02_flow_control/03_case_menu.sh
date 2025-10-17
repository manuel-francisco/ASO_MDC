#!/bin/bash
# mostrar un menu con echo
echo "1) Mostrar fecha actual"
echo "2) Mostrar usuario actual"
echo "3) Salir"

# leer la opción para el case
read -p "> " opcion

# case según la opción anterior
case $opcion in 
	1) date;;	# 1 muestra la fecha
	2) whoami;;	# 2 muestra el usuario actual
	3) echo "Saliendo del programa. ¡Adios!";;	# 3 muestra un mensaje
	*) echo "Opción no válida." ;;	# cualquiera otra opción muestra un error
esac
