# TP1 : Scripts de gestion des comptes utilisateurs

Voici l'intitulé du TP : 

*Faire un script de gestion des utilisateurs, qui doit permettre :*
* *de créer des utilisateurs*
* *de modifier des utilisateurs*
* *de supprimer des utilisateurs*
* *de voir tous les utilisateurs*
* *de faire une recherche sur l'existence d'un utilisateur en particulier*


Travaillant sur Mac, les commandes useradd ne sont pas prises en compte. j'ai donc fait des recherches et trouvé dune autre commande `dscl / -create /Users/NOUVEL_UTILISATEUR`


commandes à faire : 

sudo dscl . -create /Users/user1
sudo dscl . -create /Users/TON_UTILISATEUR UserShell /bin/bash
sudo dscl . -create /Users/TON_UTILISATEUR RealName "NOM_COMPLET_UTILISATEUR"
sudo dscl . -create /Users/TON_UTILISATEUR UniqueID 503
sudo dscl . -create /Users/TON_UTILISATEUR PrimaryGroupID 1000
sudo dscl . -create /Users/TON_UTILISATEUR NFSHomeDirectory /Local/Users/TON_UTILISATEUR
sudo dscl . -passwd /Users/TON_UTILISATEUR MOT_DE_PASSE

sudo dscl . -append /Groups/admin GroupMembership TON_UTILISATEUR

dscl . -list /Users

SUPPRIMER UN UTILISATEUR

sudo dscl . -delete /Users/TON_UTILISATEUR


https://smallbusiness.chron.com/add-user-terminal-mac-os-x-screen-sharing-31846.html
https://qastack.fr/superuser/320649/groupadduseradd-not-found-on-mac-osx
https://qastack.fr/superuser/202814/what-is-an-equivalent-of-the-adduser-command-on-mac-os-x
http://perso.univ-lemans.fr/~emicoul/Documentations/Mac/Compte%20Mac%20terminal.html
https://openclassrooms.com/forum/sujet/commande-quot-adduserquot-sur-mac-41168
https://support.apple.com/fr-fr/HT203998


name: oliviamoreau
password: ********
uid: 501
gid: 20
dir: /Users/oliviamoreau
shell: /bin/zsh
gecos: Olivia Moreau

name: nathaliechastre
password: ********
uid: 503
gid: 1000
dir: /Users/nathaliechastre
shell: /bin/bash
gecos: Nathalie Chastre
