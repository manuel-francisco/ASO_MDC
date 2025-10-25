#!/bin/bash
# Script que demuestra el uso de funciones en Bash

# Definición de la función saludo
# Las funciones deben definirse antes de ser llamadas
saludo() {
  echo "¡Hola, $(whoami)! Bienvenido al mundo de Bash."
}

# Llamada a la función saludo
saludo

# Mensaje adicional fuera de la función para comprobar el flujo
echo "Este mensaje se muestra después de ejecutar la función."

