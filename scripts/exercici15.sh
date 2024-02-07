#!/bin/bash

# Comprova si l'usuari és root
if [ "$EUID" -ne 0 ]; then
    echo "Aquest script requereix privilegis de superusuari (root)."
    exit 1
fi

# Continua amb la resta del codi del script

echo "L'usuari actual és root. Pots continuar amb la resta del teu script aquí."

# Exemple: Mostra la llista d'usuaris
echo "Llista d'usuaris:"
cat /etc/passwd | cut -d: -f1


