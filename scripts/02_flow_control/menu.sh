#!/bin/bash
# Script que muestra un menú básico y ejecuta una acción según la opción elegida usando case

# Mostrar el menú de opciones

echo -e "1) Mostrar fecha actual \n2) Mostrar usuario actual \n3) Salir"

# Pedir al usuario que introduzca una opción
read -p "elija una opción " option 
# Evaluar la opción con estructura case
case $option in
  1)
    # Mostrar la fecha actual
    echo "Fecha actual: $(date)"
    ;;
  2)
    # Mostrar el usuario actual
    echo "Usuario actual: $(whoami)"
    ;;
  3)
    # Mensaje de despedida y finalización del script
    echo "Saliendo. ¡Hasta luego!"
    exit 0
    ;;
  *)
    # Caso por defecto para opciones no válidas
    echo "Opción no válida"
    ;;
esac
