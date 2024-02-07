#!/bin/bash

# Demana el valor de la nota
echo "Introdueix el valor de la nota (entre 0 i 10):"
read nota

# Comprova que la nota és un nombre enter entre 0 i 10
if [[ $nota =~ ^[0-9]+$ ]] && ((nota >= 0 && nota <= 10)); then
    # Utilitza l'estructura case per a les diferents categories
    case $nota in
        [0-2])
            echo "La nota és una D"
            ;;
        [3-4])
            echo "La nota és una C-"
            ;;
        [5-6])
            echo "La nota és una C+"
            ;;
        [7-8])
            echo "La nota és una B"
            ;;
        [9-10])
            echo "La nota és una A"
            ;;
        *)
            echo "Error: La nota no està dins de l'interval permès."
            ;;
    esac
else
    echo "Error: Si us plau, introdueix un nombre enter entre 0 i 10."
fi
