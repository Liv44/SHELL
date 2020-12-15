sep="-----------------------"
menu="1. Ajouter un contact\n2. Modifier un contact\n3. Voir tous les contacts\n4. Retrouver un contact\n5. Supprimer un contact\nQue voulez-vous faire ?\c"
echo $menu
read action


funcmenu() {
  echo "Voulez-vous retourner au menu ? Oui/Non : \c"
    read reponse
    if [ $reponse == "Oui" ] || [ $reponse == "oui" ]; then
        echo $menu
        read action
    elif [ $reponse == "Non" ] || [ $reponse == "non" ]; then
        action="fin"
        echo "Fin du script."  
    fi 
}


while [ -z $action ] || ((action>6)); do
    echo "$menu\nTapez le chiffre correspondant à votre action : \c"
    read action
done 

while [ $action != "fin" ]; do
    if ((action==1)); then
    echo "Nom ? \c"
    read nom
    echo "Téléphone ? \c"
    read telephone
    echo "Mail ? \c"
    read mail
    echo "Nom : $nom - Téléphone : $telephone - Mail : $mail\n$sep" >> annuaire.txt
   
   
    elif ((action==3)); then
    cat annuaire.txt


    elif ((action==4)); then
    echo "Qui voulez-vous chercher ? (nom/n°tel/mail)\c"
    read info
    grep $info annuaire.txt
   
   
    elif ((action==5)); then
    echo "Quel contact voulez-vous supprimer ?\c"
    read nom
    sed '/^$nom/d {N;N;d;}' in annuaire.txt
    #grep -v $nom annuaire.txt
    #grep -v "$nom" annuaire.txt > buffer
    #mv buffer annuaire.txt
    fi

    funcmenu
   
done



