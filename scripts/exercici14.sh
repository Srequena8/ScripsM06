if grep -q "^messi:" /etc/passwd; then
    echo "L'usuari messi ha estat trobat."
else
    echo "L'usuari messi no ha estat trobat."
fi
