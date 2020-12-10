menu="1. Créer un utilisateur\n2. Modifier un utilisateur\n3. Supprimer un utilisateur\n4. Voir tous les utilisateurs\n5.Faire une recherche\nEntrez le chiffre correspondant à l'action que vous souhaitez mener : \c"
choix="Vous avez choisi de "
echo $menu
read action

while [ -z $action ] || ((action>5)); do #|| [ $action -ne "1." ] || [ $action  -ne "2" ] || [ $action -ne "3" ] || [ $action -ne "4" ] || [ $action -ne "5" ] ; do
    echo "$menu\nTapez le chiffre correspondant à votre action : \c"
    read action
done 

while [ $action != "fin" ]; do
    if ((action==1)); then
        echo "$choix créer un utilisateur. Entrez son nom : \c"
        read username
        echo "Entrez son nom complet : \c"
        read realname
        echo "Entrez son ID : \c"
        read ID
        while (( ID <=501 )); do
            echo "L'ID de l'utilisateur doit être supérieur à 501. Réessayez : \c"
            read ID
        done
        echo "Entrez son mot de passe : \c"
        read password

        echo "Patientez..."
        sudo dscl . -create /Users/$username
        sudo dscl . -create /Users/$username UserShell /bin/zsh
        sudo dscl . -create /Users/$username RealName "$realname"
        sudo dscl . -create /Users/$username UniqueID $ID
        sudo dscl . -create /Users/$username PrimaryGroupID 1000
        sudo dscl . -create /Users/$username NFSHomeDirectory /Users/$username
        sudo dscl . -passwd /Users/$username $password

        echo "Votre utilisateur $username a bien été créé. "


    elif ((action==2)); then
        echo "$choix modifier un utilisateur. Quel utilisateur souhaitez-vous modifier ?"
        read user
    elif ((action==3)); then
        echo "$choix supprimer un utilisateur. Quel utilisateur souhaitez-vous supprimer ?"
        read user
        sudo dscl . -delete /Users/$user

    elif ((action==4)); then
        echo "Voici tous les utilisateurs."
        dscl . -list /Users | grep -v '_' | grep -v 'nobody' | grep -v 'root' | grep -v 'daemon'

    elif ((action==5)); then
        echo "Entrez le nom de l'utilisateur que vous voulez rechercher : \c"
        read search
        echo "Nom d'utilisateur :" | dscl . -list /Users | grep $search
        dscl . -list /Users UniqueID | grep $search 
        dscl . -list /Users RealName | grep $search
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
