#!/bin/bash

# Demana el valor de la nota
echo "Introdueix el valor de la nota (entre 0 i 10):"
read nota

# Comprova que la nota és un nombre enter entre 0 i 10
if [[ $nota =~ ^[0-9]+$ ]] && ((nota >= 0 && nota <= 10)); then
    # Comprova l'interval de la nota
    if ((nota >= 0 && nota <= 2)); then
        echo "La nota és una D"
    elif ((nota >= 3 && nota <= 4)); then
        echo "La nota és una C-"
    elif ((nota >= 5 && nota <= 6)); then
        echo "La nota és una C+"
    elif ((nota >= 7 && nota <= 8)); then
        echo "La nota és una B"
    elif ((nota >= 9 && nota <= 10)); then
        echo "La nota és una A"
    else
        echo "Error: La nota no està dins de l'interval permès."
    fi
else
    echo "Error: Si us plau, introdueix un nombre enter entre 0 i 10."
fi
