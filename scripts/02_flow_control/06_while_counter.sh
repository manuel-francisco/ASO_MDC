#!/bin/bash

# Recibe input del usuario
read -p "Introduce un número: " NUMERO

# Inicializa el contador que usaremos en el bucle while con valor 1
CONTADOR=1

# Inicializa el bucle while, con la condicion de que el contador sea menor al número introducido por el usuario 
while [[ $CONTADOR -le $NUMERO ]];do

# Muestra el valor de l contador
	echo "$CONTADOR"

# Aumenta el contador en uno. Tambien se puede usar $((CONTADOR+1))
	((CONTADOR++))

# Pausa el bucle durante un segundo
	sleep 1
done
# Devuelve este mensaje cuando se salga del bucle (Cuando el contador sea igual al número indicado por el usuario)
echo "Contador finalizado. Se han mostrado $NUMERO números."
