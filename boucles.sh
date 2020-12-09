
j=2

for (( i=1; i<=5; i++ )); do
    echo "boucle for $i"
done

while [ $j -lt 5 ]; do
    j=`expr $j + 1`
    echo "Coucou $j"
done

#while [ -z $reponse ] || [ $reponse != 'Coucou' ]; do
 #   read -p "dites Coucou : " reponse
#done

while 
    echo "Chaîne ? "
    read nom
    [ -z $nom ]; do
    echo "ERREUR : pas de saisie"
done
echo "Vous avez saisi : $nom"

cat git.sh | while read line; do
    echo $line
done