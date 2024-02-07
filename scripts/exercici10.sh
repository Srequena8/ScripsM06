#!/bin/bash

# Comprova que s'hagi proporcionat almenys un directori com a paràmetre
if [ "$#" -lt 1 ]; then
    echo "Siusplau, proporciona almenys un directori com a paràmetre."
    exit 1
fi

# Recorre cada directori proporcionat com a paràmetre
for directori in "$@"; do
    # Comprova si el directori és vàlid i existeix
    if [ -d "$directori" ]; then
        # Calcula i mostra l'ocupació de disc amb du
        ocupacio=$(du -sh "$directori" | awk '{print $1}')
        echo "Ocupació del directori $directori: $ocupacio"
    else
        echo "Error: El directori $directori no és vàlid o no existeix."
    fi
done
