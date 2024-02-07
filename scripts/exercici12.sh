#!/bin/bash

# Comprova que s'hagi proporcionat el nom del fitxer com a paràmetre
if [ "$#" -ne 1 ]; then
    echo "Siusplau, proporciona el nom del fitxer CSV com a paràmetre."
    exit 1
fi

fitxer_csv=$1

# Comprova si el fitxer CSV existeix
if [ ! -f "$fitxer_csv" ]; then
    echo "Error: El fitxer $fitxer_csv no existeix."
    exit 1
fi

# Llegeix cada línia del fitxer CSV i mostra la informació
while IFS=, read -r usuari uo email; do
    echo "Usuari $usuari que pertany a la UO $uo i correu electrònic $email"
    echo "Usuari $usuari que pertany a la UO $uo i correu electrònic $email" >> usuaris.txt
done < "$fitxer_csv"

echo "Processament completat. La informació s'ha escrit en el fitxer usuaris.txt."
