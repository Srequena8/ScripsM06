#!/bin/bash

# Comprova que s'hagin proporcionat dos paràmetres
if [ "$#" -ne 2 ]; then
    echo "Siusplau, proporciona la carpeta a fer còpia de seguretat i el directori de destí com a paràmetres."
    exit 1
fi

# Assigna els paràmetres a variables
carpeta_a_copiar="$1"
directori_desti="$2"

# Comprova que la carpeta a copiar existeix
if [ ! -d "$carpeta_a_copiar" ]; then
    echo "Error: La carpeta a copiar no existeix."
    exit 1
fi

# Comprova si ja existeix un fitxer amb el mateix nom
data_actual=$(date +"%Y%m%d")
nom_fitxer="backup_$(basename "$carpeta_a_copiar")_$data_actual.tar.gz"

if [ -e "$directori_desti/$nom_fitxer" ]; then
    echo "Error: Ja existeix un fitxer amb el mateix nom."
    exit 2
fi

# Crea la còpia de seguretat amb tar i comprimeix amb gzip
tar -czf "$directori_desti/$nom_fitxer" -C "$(dirname "$carpeta_a_copiar")" "$(basename "$carpeta_a_copiar")"

echo "Còpia de seguretat creada amb èxit: $directori_desti/$nom_fitxer"
