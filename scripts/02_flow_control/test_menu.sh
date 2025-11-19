#!/bin/bash
# Test unitario para el script de menú

set -e # Hace que el script termine si hay algún error en cualquier comando

# Test opción 1 (fecha actual)
# Simula introducir '1' como opción en el menú, captura la salida y busca la frase "Fecha actual:"
FECHA=$(bash menu.sh <<< "1" | grep "Fecha actual:")
if [[ -z "$FECHA" ]]; then
  echo "TEST FECHA FALLÓ"  # Si no encuentra la frase, da error y termina el test
  exit 1
else
  echo "TEST FECHA OK"     # Si encuentra, el test para opción 1 está bien
fi

# Test opción 2 (usuario actual)
# Simula introducir '2' como entrada y busca la frase "Usuario actual:"
USUARIO=$(bash menu.sh <<< "2" | grep "Usuario actual:")
if [[ -z "$USUARIO" ]]; then
  echo "TEST USUARIO FALLÓ"
  exit 1
else
  echo "TEST USUARIO OK"
fi

# Test opción 3 (salida)
# Simula seleccionar '3', verifica que aparezca el mensaje de salida correcto
SALIDA=$(bash menu.sh <<< "3" | grep "Saliendo.")
if [[ -z "$SALIDA" ]]; then
  echo "TEST SALIDA FALLÓ"
  exit 1
else
  echo "TEST SALIDA OK"
fi

# Test opción inválida
# Simula introducir una opción inválida ("99") y busca el mensaje de error esperado
INVALIDA=$(bash menu.sh <<< "99" | grep "Opción no válida")
if [[ -z "$INVALIDA" ]]; then
  echo "TEST INVÁLIDA FALLÓ"
  exit 1
else
  echo "TEST INVÁLIDA OK"
fi
