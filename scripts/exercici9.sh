#!/bin/bash

# Obté la llista de directoris a /home
llista_directoris=$(ls /home)

# Recorre cada directori i calcula l'ocupació de disc amb du
for directori in $llista_directoris; do
    ocupacio=$(du -sh "/home/$directori" | awk '{print $1}')
    echo "Ocupació del directori /home/$directori: $ocupacio"
done
