SALIDA=$(echo -e "Juan\n" | ./03_io.sh)

if [[ $SALIDA == *"Debes introducir un valor"* ]]; then
    echo -e "[VALOREDAD]\tTEST OK"
else
    echo -e "[VALOREDAD]\tTEST FAILED"
    exit 1
fi



SALIDA=$(echo -e "Juan\nonce" | ./03_io.sh)
if [[ $SALIDA == *"Error: la edad debe ser un numero"* ]]; then
    echo -e "[VALORNUMERICO]\tTEST OK"
else
    echo -e "[VALORNUMERICO]\tTEST FAILED"
    exit 1
fi


SALIDA=$(echo -e "Juan\n18" | ./03_io.sh)
if [[ $SALIDA == *"Hola Juan, te quedan 82 años para cumplir 100"* ]]; then
    echo -e "[CORRECTO]\tTEST OK"
else
    echo -e "[CORRECTO]\TEST FAILED"
    exit 1
fi