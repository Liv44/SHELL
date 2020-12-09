read -p "Quel âge avez-vous ? " reponse

if [ $reponse -lt 18 ]
then 
    echo "Vous ne rentrerez pas !"
else 
    echo "Entrez !"
fi