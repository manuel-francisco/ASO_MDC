#!/bin/bash
# Script principal que importa funciones desde 05_library.sh

source ./05_library.sh   # o . ./05_library.sh

# Muestra el menú
echo "=== Utilidades del sistema ==="
echo "1) Mostrar fecha"
echo "2) Mostrar usuario"
echo "3) Mostrar espacio en disco"
echo "4) Salir"

# Pide input al usuario
read -p "Selecciona una opción > " OPCION

# Realiza un case para las posibles opciones 
case $OPCION in
    1) mostrar_fecha ;;
    2) mostrar_usuario ;;
    3) mostrar_espacio ;;
    4) echo "Saliendo..."; exit 0 ;;
    *) echo "Opción no válida." ;;
esac
