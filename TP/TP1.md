# TP1 : Scripts de gestion des comptes utilisateurs

Voici l'intitulé du TP : 

*Faire un script de gestion des utilisateurs, qui doit permettre :*
* *de créer des utilisateurs*
* *de modifier des utilisateurs*
* *de supprimer des utilisateurs*
* *de voir tous les utilisateurs*
* *de faire une recherche sur l'existence d'un utilisateur en particulier*


Travaillant sur Mac, la commande useradd n'est pas utilisable. J'ai donc fait des recherches et trouvé une autre commande `dscl` qui signifie **Directory Service Command Line**. La commande `dscl` est utilisée avec des arguments qui permettent de créer, supprimer, lister les utilisateurs et définir les mots de passe. J'ai donc établi les lignes de commandes dont j'avais besoin pour créer un utilisateur : 


FAIRE RECHERCHES SUR SYSADMINCTL 

1. sudo dscl . -create /Users/UTILISATEUR
    * Permet de créer l'utilisateur 
2. sudo dscl . -create /Users/UTILISATEUR UserShell /bin/bash
    * Permet d'identifier le chemin d'accès pour le Shell
3. sudo dscl . -create /Users/UTILISATEUR RealName "NOM_COMPLET_UTILISATEUR"
    * Permet de donner à l'utilisateur un nom complet
4. sudo dscl . -create /Users/UTILISATEUR UniqueID 503
    * Permet de lui donner un ID unique. (Le premier utilisateur d'un Mac a l'ID 501.)
5. sudo dscl . -create /Users/UTILISATEUR PrimaryGroupID 1000
    * Permet de l'assigner à un groupe via un ID de groupe
6. sudo dscl . -create /Users/UTILISATEUR NFSHomeDirectory /Local/Users/UTILISATEUR
    * Permet de créer le dossier de l'utilisateur dans le répertoire Users. Malheureusement, cette étape ne fonctionne pas sur mon Mac, malgré plusieurs essais non concluants, le fameux dossier utilisateur ne se créé pas.
7. sudo dscl . -passwd /Users/UTILISATEUR MOT_DE_PASSE
    * Permet d'initialiser le mot de passe de l'utilisateur

Voici les autres lignes de commandes de `dscl`utiles dans l'élaboration de mon script : 

* sudo dscl . -append /Groups/admin GroupMembership UTILISATEUR
    * permet de donner le rôle d'administrateur à l'utilisateur

* dscl . -list /Users
    * permet de lister les utilisateurs de la machine. J'utilise cette commande avec un grep pour isoler seulement els utilisateurs qui m'intéressent
* sudo dscl . -delete /Users/UTILISATEUR
    * permet de supprimer un utilisateur

## COnstruction de mon script

Tout d'abord, j'ai voulu rendre mon script accessible et compréhensible par n'importe quel utilisateur en créant un menu qui regroupe les différentes actions possibles. La variable `menu`contient donc ce sommaire de choix avec un numéro attribué à chaque action possible. Une boucle *tant que* permet d'obliger l'utilisateur à saisir une donnée, mais aussi à choisir un chiffre inférieur ou égal à 5, sinon le menu réapparaîtra. À chaque fin d'action, j'ai intégré une boucle qui permet de savoir si l'utilisateur veut ou non revenir au menu. Si l'utilisateur veut revenir, le script lui renvoie le menu et redemande quelle action il veut exécuter. Sinon, l'action sera initialisée à la valeur "fin" et le script renverra "Fin du script" et se terminera. 

Les chiffres associés aux actions sont utilisées grâce à une condition qui dit si l'action est égale à tel chiffre, alors on fait ceci.

## Détail des actions

### 1. Créer un utilisateur

Pour créer un utilisateur, je demande d'abord à l'utilisateur le nom qu'il veut lui donner, le nom complet, son ID (qui doit être strictement supérieur à 501), et son mot de passe. Chaque élément étant stocké dans une variable, il ne me reste plus qu'à appeler les commandes citées auparavant en intégrant le nom de mes variables en question. 

### 2. Modifier un utilisateur



https://smallbusiness.chron.com/add-user-terminal-mac-os-x-screen-sharing-31846.html
https://qastack.fr/superuser/320649/groupadduseradd-not-found-on-mac-osx
https://qastack.fr/superuser/202814/what-is-an-equivalent-of-the-adduser-command-on-mac-os-x
http://perso.univ-lemans.fr/~emicoul/Documentations/Mac/Compte%20Mac%20terminal.html
https://openclassrooms.com/forum/sujet/commande-quot-adduserquot-sur-mac-41168
https://support.apple.com/fr-fr/HT203998
https://lilotuto.fr/creer-un-compte-utilisateur-en-ligne-de-commande-en-single-mode/


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
