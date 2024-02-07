#!/bin/bash

# Mostra els usuaris que poden iniciar sessió
echo "Usuaris del sistema que poden iniciar sessió:"
cat /etc/passwd | grep -E '/bin/bash|/bin/zsh' | cut -d: -f1

# Demana l'entrada de l'usuari per consola
read -p "Introdueix un usuari del llistat per provar l'accés al sistema: " usuari

# Comprova si l'usuari existeix
if id "$usuari" &>/dev/null; then
    # Prova l'accés al sistema amb l'usuari seleccionat
    su - "$usuari"
else
    echo "L'usuari $usuari no existeix."
fi
