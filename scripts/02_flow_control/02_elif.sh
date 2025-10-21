#!/bin/bash

# Pide un número (una nota) del 1 al 10

read -p "Introduce la nota entre el 1 y el 10: " nota

# Confirmación de que la nota está entre el 1 y el 10

if ! [[ "$nota" =~ ^-?[0-9]+$ ]] && [ "$nota" -ge 1 ] && [ "$nota" -le 10 ]; then
	echo "Esta nota no es válida."
	exit 1
fi

# Asignación de la nota.

if  [[ "$nota" -le 4 ]]; then
	echo "Está suspenso."
		elif [[ "$nota" -eq 5 ]]; then
			echo "Esta aprobado."
				elif [[ "$nota" -eq 6 ]]; then
					echo "La nota es un 6, está bien."
						elif [[ "$nota" -ge 7 ]] && [[ "$nota" -le 8 ]]; then
							echo "Notable, bien hecho!"
								elif [[ "$nota" -ge 9 ]] && [[ "$nota" -le 10 ]]; then
									echo "Sobresaliente, enhorabuena!!"
fi

