<<<<<<< HEAD

#!/bin/bash

#Les voy a pedir que me diga las variables nombre y edad
read -p "Introduce tu nombre: " nombre
read -p "Introduce tu edad: " edad

# If para ver si introduce una edad
if [[ -z "$edad" ]] then

	echo "Error, introduce una edad"
	exit 1
fi

if ! [[ "$edad" =~ ^[0-9]+$ ]] #Comando para saber si lo que a introducido edas es un número
then
	echo "Error, introduce un número"
	exit 1
fi

edad_tope=$(( 100 - "$edad" )) #Esta resta es para saber cuantos años le queda para cumplir 100

	echo "Hola $nombre, te quedan $edad_tope años para cumplir 100"
=======
#!/bin/bash

read -p "Dime tu nombre " nom #Te pide el nombre del usuario
read -p "Dime tu edad " edad  #Te pide la edad del usuario

if [[ -z "$edad" ]]; then  #Es para comprobar que la edad es correcta

echo " Error tienes que incluir una edad." #Señal de error 

elif [[ "$edad" =~ ^[0-9]+$ ]]; then #Para comprobar si es un número
res=$((100 - $edad)) #Resta de la edad

echo "Hola $nom te quedan $res para tener 100 años" #Aviso de la edad

else

echo " Error la edad no es valida " #Aviso del error 

fi

>>>>>>> b2f4ef54f41cc82e72f68e4a1868b0d6e6af0f31

