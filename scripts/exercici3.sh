
if [ "$#" -ne 3 ]; then
    echo "Siusplau, proporciona 3 paràmetres: ./exercici3.sh blau verd vermell"
    exit 1
fi


parametre1=$1
parametre2=$2
parametre3=$3


echo "Nom de l’script: ./exercici3.sh"
echo "Valor del primer paràmetre de l’script: $parametre1"
echo "Valor del segon paràmetre de l’script: $parametre2"
echo "Valor del tercer paràmetre de l’script: $parametre3"
