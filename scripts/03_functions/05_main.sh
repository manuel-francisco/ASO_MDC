#!/bin/bash
# Script principal que importa funciones desde 05_library.sh

# importa la biblioteca en la mismo directorio
source ./05_library.sh

# imprimir menú
echo "### Utilidades del sistema ###"
echo "1) Mostrar fecha"
echo "2) Mostrar usuario"
echo "3) Mostrar espacio en disco"
echo "4) Salir"

# leer opción del usuario
read -p "Selecciona una opción > " opcion

# llamar función según la $opcion
case $opcion in
    1) mostrar_fecha ;;
    2) mostrar_usuario ;;
    3) mostrar_espacio ;;
    4) echo "Saliendo..."; exit 0 ;;
    *) echo "Opción no válida." ;;
esac