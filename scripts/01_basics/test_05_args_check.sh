#!/bin/bash

# Creamos una variable que guarde la salida del script que queremos testear
SALIDA=$(./05_args_check.sh 1 2 3)
# Con in if vemos cual va a ser la salida del script
# En este caso si salida es 1 (la salida que tiene que salir ya que es exit 1 en el script original), el test estara OK
if [[ $? -eq 1 ]] && [[ $SALIDA == *"Uso: ./05_args_check.sh <num1> <num2>"* ]]
then
echo "OK"
else
echo "FAIL"
fi

# Hacemos lo mismo de antes con todas las opciones posibles
SALIDA=$(./05_args_check.sh 1 a)

if [[ $? -eq 2 ]] && [[ $SALIDA == "Error de tipo de datos" ]]
then
echo "OK"
else
echo "FAIL"
fi


SALIDA=$(./05_args_check.sh 1 2)

if [[ $? -eq 0 ]] && [[ $SALIDA == "La suma de ambos numeros es 3" ]]
then
echo "OK"
else
echo "FAIL"
fi
