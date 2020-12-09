classe1="B1"
classe2="B2"
nb1=10

if [ $classe1 != $classe2 ]; then 
    echo "Bonjour les B1 !"
fi


if [ $nb1 -lt 13 ]; then
    echo "$nb1 est inférieur à 13"
fi

if [ -a README.md ]; then
    echo "Le fichier README.md existe."
fi
