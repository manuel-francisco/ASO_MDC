#!/bin/bash
# pregunta el nombre y edad
read -p "Escriba su nombre: " name
read -p "Escriba su edad: " age

# comprueba que los datos no estén vacíos
if [[ -z $name || -z $age ]]; then
	echo "Rellene ambos valores."
	exit 1
fi

# comprueba que $edad sea un número
if [[ $age =~ ^[0-9]+$ ]]; then
	# comprueba si su edad ya llegó a los 100
	if [[ $age -ge 100 ]]; then
		echo "Felicidades $name, usted ya es un centenario con sus $age años."
	else
		# calcula los años restantes para 100
		year=$((100-age))
		echo "Buenas tardes $name, le quedan $year año(s) para llegar a su centenario."
	fi
else
	echo "Escriba un número natural en el campo edad."
fi


