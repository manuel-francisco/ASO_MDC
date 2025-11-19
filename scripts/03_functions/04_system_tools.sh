#!/bin/bash
# Script modularizado con varias utilidades de sistema y un menú interactivo

# Función para mostrar la fecha y hora actuales
mostrar_fecha() {
  # Muestra la fecha y hora con formato claro
  echo "Fecha y hora actual: $(date)"
}

# Función para mostrar el usuario actual
mostrar_usuario() {
  # Imprime el nombre de usuario de la sesión actual
  echo "Usuario actual: $(whoami)"
}

# Función para mostrar el espacio en disco del sistema de archivos raíz
mostrar_espacio() {
  # Utiliza df para mostrar el uso del disco de manera legible (solo raíz)
  echo "Uso de disco en /:"
  df -h /
}

# Función principal que implementa el menú interactivo y el flujo del programa
menu() {
  while true; do
    echo "----------------------------"
    echo "1) Mostrar fecha actual"
    echo "2) Mostrar usuario actual"
    echo "3) Mostrar espacio en disco"
    echo "4) Salir"
    echo "----------------------------"
    read -p "Elige una opción: " opcion

    case $opcion in
      1) mostrar_fecha ;;
      2) mostrar_usuario ;;
      3) mostrar_espacio ;;
      4) echo "Saliendo..."; break ;;
      *) echo "Opción no válida." ;;
    esac

    sleep 1 # Pausa antes de repetir
  done
}

# Llamar a la función principal para comenzar el menú
menu

