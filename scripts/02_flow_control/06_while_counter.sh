#!/bin/bash
# Solicita al usuario que introduzca un número y lo guarda en la variable N
read -p "Introduce un número (mayor que 0 pero tampoco muy alto porfavor) > " N

# Inicializa la variable fakeN en 1 para usarla como contador
fakeN=1

# Imprime el primer número (1) antes del bucle
echo "1"

# Mientras el valor de fakeN sea diferente al de N, se ejecuta el bucle
while [[ fakeN -ne N && N -gt "0" ]]; do
  # Incrementa el contador fakeN en 1
  fakeN=$((fakeN+1))

  # Imprime el valor actual de fakeN
  echo "$fakeN"
done

# Cuando finaliza el bucle, indica que se ha terminado y muestra cuántos números se imprimieron
echo "Contador finalizad. Se han mostrado $N números"
