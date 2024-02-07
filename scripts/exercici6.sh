#!/bin/bash

# Comprova el nombre d'arguments
if [ "$#" -ne 1 ]; then
    echo "Siusplau, proporciona només un argument (nom de directori)."
    exit 1
fi

# Assigna l'argument a una variable
nom_directori=$1

# Comprova si és un directori
if [ -d "$nom_directori" ]; then
    echo "El contingut del directori $nom_directori és:"
    ls "$nom_directori"
else
    echo "L'argument proporcionat no és un directori o no existeix."
fi
