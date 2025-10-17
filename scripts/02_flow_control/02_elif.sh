#!/bin/bash

# Pedimo una nota al usuario

read -p "Introduce un nota del 0-10: " NOTA

# Indicamos que mensaje va a parecer dependiendo de cual sea la nota

if [[ $NOTA -le 4 ]]
then
echo "Tu calificacion es: Suspenso"
elif [[ $NOTA -eq 5 ]]
then
echo "Tu calificacion es: Aprobado"
elif [[ $NOTA -eq 6 ]]
then
echo "Tu calificacion es: Bien"
elif [[ $NOTA -eq 7 || $NOTA -eq 8 ]]
then
echo "Tu calificacion es: Notable"
elif [[ $NOTA -eq 9 || $NOTA -eq 10 ]]
then
echo "Tu calificacion es: Sobresaliente"
else
echo "Introduce un numero del 0-10 por favor"
fi



