#!/bin/bash

# Le pedimos al usuario que introduzca un numero del 0 al 10 y lo guardamos en la variable nota

read -p "Introduzca un numero del 0 al 10: " nota


# Bucle if con las multiples condiciones

if [[ $nota -le 4 ]]; then  # Si la nota es menor o igual a 4, entonces imprimimos Suspenso
	echo "Suspenso"
elif [[ $nota -eq 5 ]]; then  # Si la nota es igual a 5, entonces imprimimos Aprobado
	echo "Aprobado"
elif [[ $nota -eq 6 ]]; then  # Si la nota es igual a 6, entonces imprimimos Bien
	echo "Bien"
elif [[ $nota -eq 7 ]] || [[ $nota -eq 8 ]]; then  # Si la nota es igual a 7 o (usando el comparador OR (||) ) 8, imprimimos Notable
	echo "Notable"
else
	echo "Sobresaliente"  # Si no es ninguna de estas, es decir que tendrian que ser 9 o 10, entonces imprimimos Sobresaliente
fi
