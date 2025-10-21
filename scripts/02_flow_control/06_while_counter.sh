#!/bin/bash
# se inicia el contador en 1
contador=1

# lee el número
read -p "Escribe un número natural: " numero

# comprueba que se indicó un número natural
if [[ ! $numero =~ ^[1-9][0-9]*$ ]]; then
	echo "Error: escriba un número natural (1,2,3...)"
	exit 1
fi

# bucle que muestra el contador y le suma 1 hasta que llegue a $numero
while [[ $contador -le $numero ]]; do
	echo "$contador"
	((contador++))
done

# muestra el mensaje final
echo	"Contador finalizado. Se han mostrado $numero números."
