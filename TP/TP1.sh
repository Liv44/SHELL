menu="1. Créer un utilisateur\n2. Modifier un utilisateur\n3. Supprimer un utilisateur\n4. Voir tous les utilisateurs\n5. Faire une recherche\nEntrez le chiffre correspondant à l'action que vous souhaitez mener : \c"
choix="Vous avez choisi de "
echo $menu
read action

while [ -z $action ] || ((action>5)); do
    echo "$menu\nTapez le chiffre correspondant à votre action : \c"
    read action
done 

while [ $action != "fin" ]; do
    if ((action==1)); then
        echo "$choix créer un utilisateur. Entrez son nom : \c"
        read username
        echo "Entrez son nom complet : \c"
        read realname
        echo "Entrez son mot de passe : \c"
        read password

        echo "Patientez..."
        sudo sysadminctl -addUser "$username" -fullName "$realname" -password "$password"
        sudo createhomedir -u $username -c
        sudo mv /var/$username /Users/$username

        echo "Votre utilisateur $username a bien été créé. "

    elif ((action==2)); then
        echo "$choix modifier un utilisateur. Quel utilisateur souhaitez-vous modifier ?"
        read user

        echo "Que voulez-vous modifier ?\n 1.Nom\n2.Nom Complet\n3.ID\4.Mot de Passe : \c" 
        read modif
        while [ -z $modif ] || ((modif>4)); do
            echo "Que voulez-vous modifier ?\n 1.Nom\n2.Nom Complet\n3.ID\4.Mot de Passe : \c"
            read modif
            echo "Pour quel utilisateur ? : \c"
            read username
        done
        if ((modif==2)); then
            echo "Quel nom complet voulez-vous donner ? \c"
            read nomcomplet
            sudo dscl . -create /Users/$username RealName "Nathalie Chastre" "$nomcomplet" 
        elif ((modif==3)); then
            echo "Quel ID voulez-vous donner ?"
            read ID
            sudo dscl . -create /Users/$username UniqueID 509 $ID
        fi


    elif ((action==3)); then
        echo "$choix supprimer un utilisateur. Quel utilisateur souhaitez-vous supprimer ?"
        read user
        sudo sysadminctl -deleteUser $username

    elif ((action==4)); then
        echo "Voici tous les utilisateurs."
        dscl . -list /Users | grep -v '_' | grep -v 'nobody' | grep -v 'root' | grep -v 'daemon' | grep -v '/'

    elif ((action==5)); then
        echo "Entrez le nom de l'utilisateur que vous voulez rechercher : \c"
        read search
        dscl . -list /Users | grep $search
        dscl . -list /Users RealName | grep $search
        dscl . -list /Users UserShell | grep $search 
        dscl . -list /Users UniqueID | grep $search
        dscl . -list /Users PrimaryGroupID | grep $search
        dscl . -list /Users NFSHomeDirectory | grep $search
    fi

    echo "Voulez-vous retourner au menu ? Oui/Non : \c"
    read reponse
    if [ $reponse == "Oui" ] || [ $reponse == "oui" ]; then
        echo $menu
        read action
    elif [ $reponse == "Non" ] || [ $reponse == "non" ]; then
        action="fin"
        echo "Fin du script."  
    fi 
done