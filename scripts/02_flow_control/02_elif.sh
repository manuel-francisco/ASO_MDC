#!/bin/bash
read -p "Escriba su nota: " nota

# si nota entre 0-4
if [[ $nota -ge 0 && $nota -le 4 ]]; then
	resultado="Suspenso"

# si nota es 5
elif [[ $nota -eq 5 ]]; then
	resultado="Aprobado"

# si nota es 6
elif [[ $nota -eq 6 ]]; then
	resultado="Bien"

# si nota entre 7-8
elif [[ $nota -ge 7 && $nota -le 8 ]]; then
	resultado="Notable"

# si nota entre 9-10
elif [[ $nota -ge 9 && $nota -le 10 ]]; then
	resultado="Sobresaliente"
# el script se termina si el número no es 0 al 10
else
	echo "Introduzca un número del 0 al 10."
	exit 1
fi

echo "Tu calificación es: $resultado."
