#!/bin/bash

# Comprova si s'ha proporcionat un nom de fitxer com a paràmetre
if [ "$#" -ne 1 ]; then
    echo "Siusplau, proporciona només un nom de fitxer com a paràmetre."
    exit 1
fi

# Assigna el nom de fitxer a una variable
nom_fitxer=$1

# Comprova si el fitxer existeix
if [ -e "$nom_fitxer" ]; then
    # Comprova si és un fitxer regular
    if [ -f "$nom_fitxer" ]; then
        echo "El fitxer $nom_fitxer és un fitxer regular."
    else
        echo "El fitxer $nom_fitxer no és un fitxer regular."
    fi
else
    echo "El fitxer $nom_fitxer no existeix."
fi
