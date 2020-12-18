# TP1 : Scripts de gestion des comptes utilisateurs

Voici l'intitulé du TP : 

*Faire un script de gestion des utilisateurs, qui doit permettre :*
* *de créer des utilisateurs*
* *de modifier des utilisateurs*
* *de supprimer des utilisateurs*
* *de voir tous les utilisateurs*
* *de faire une recherche sur l'existence d'un utilisateur en particulier*


Travaillant sur Mac, la commande useradd n'est pas utilisable. J'ai donc fait des recherches et trouvé une autre commande `dscl` qui signifie **Directory Service Command Line**. La commande `dscl` est utilisée avec des arguments qui permettent de créer, supprimer, lister les utilisateurs et définir les mots de passe. J'ai donc établi les lignes de commandes dont j'avais besoin pour créer un utilisateur : 

1. `sudo dscl . -create /Users/UTILISATEUR`
    * Permet de créer l'utilisateur 
2. `sudo dscl . -create /Users/UTILISATEUR UserShell /bin/bash`
    * Permet d'identifier le chemin d'accès pour le Shell
3. `sudo dscl . -create /Users/UTILISATEUR RealName "NOM_COMPLET_UTILISATEUR"`
    * Permet de donner à l'utilisateur un nom complet
4. `sudo dscl . -create /Users/UTILISATEUR UniqueID 503`
    * Permet de lui donner un ID unique. (Le premier utilisateur d'un Mac a l'ID 501.)
5. `sudo dscl . -create /Users/UTILISATEUR PrimaryGroupID 1000`
    * Permet de l'assigner à un groupe via un ID de groupe
6. `sudo dscl . -create /Users/UTILISATEUR NFSHomeDirectory /Local/Users/UTILISATEUR`
    * Permet de créer le dossier de l'utilisateur dans le répertoire Users. Malheureusement, cette étape ne fonctionne pas sur mon Mac, malgré plusieurs essais non concluants, le fameux dossier utilisateur ne se créé pas.
7. `sudo dscl . -passwd /Users/UTILISATEUR MOT_DE_PASSE`
    * Permet d'initialiser le mot de passe de l'utilisateur

**EVOLUTION DU SCRIPT**

Après de nouvelles recherches pour créer le répertoire de l'utilisateur dans Users, j'ai trouvé une nouvelle commande qui me permet de créer un utilisateur plus facilement et sans avoir à traiter les ID car elle le fait automatiquement :
    sudo sysadminctl -addUser "UTILISATEUR" -fullName "NOM_COMPLET_UTILISATEUR" -password "MOT_DE_PASSE"

Cette commande permet de créer l'**utilisateur**, lui attribuer un **nom complet** et un **mot de passe**. J'ai préféré cette commande à l'utilisation de la commande `dscl` car celle-ci permet d'attribuer un ID directement et va vérifier si l'utilisateur que l'on créé n'existe pas déjà. Cela me fait donc gagner du temps sur la confection de mon script.

J'ai aussi utilisé deux autres commandes pour créer mon répertoire utilisateurs dans Users : 
        
    sudo createhomedir -u UTILISATEUR -c
    
    sudo mv /var/$username /Users/UTILISATEUR
> La première permet de créer un "home directory" soit un répertoire personnel. L'argument `-u` précise pour quel utilisateur on le créé, l'argument `-c` permet de créer un répertoire seulement pour les "chemins d'accès locaux" (voir man `createhomedir`). Cette commande va donc créer le fichier de l'utilisateur mais dans le répertoire /var de la machine.

> La seconde commande consiste alors à déplacer ce dossier /var/UTILISATEUR dans le dossier Users !


## Construction de mon script

Tout d'abord, j'ai voulu rendre mon script accessible et compréhensible par n'importe quel utilisateur en créant un menu qui regroupe les différentes actions possibles. La variable `menu` contient donc ce sommaire de choix avec un numéro attribué à chaque action possible. Une boucle *tant que* permet d'obliger l'utilisateur à saisir une donnée, mais aussi à choisir un chiffre inférieur ou égal à 5, sinon le menu réapparaîtra. À chaque fin d'action, j'ai intégré une boucle qui permet de savoir si l'utilisateur veut ou non revenir au menu. Si l'utilisateur veut revenir, le script lui renvoie le menu et redemande quelle action il veut exécuter. Sinon, l'action sera initialisée à la valeur "fin" et le script renverra "Fin du script" et se terminera. 

Les chiffres associés aux actions sont utilisées grâce à une condition qui dit "si l'action est égale à tel chiffre, alors on fait ceci".

## Détail des actions

### 1. Créer un utilisateur

Pour créer un utilisateur, je demande d'abord à l'utilisateur le nom qu'il veut lui donner, le nom complet, son ID (qui doit être strictement supérieur à 501), et son mot de passe. Chaque élément étant stocké dans une variable, il ne me reste plus qu'à appeler les commandes citées auparavant en intégrant le nom de mes variables en question. 

### 2. Modifier un utilisateur

Je n'ai pas eu le temps de me pencher sur cette partie.

### 3. Supprimer un utilisateur

Pour supprimer un utilisateur, je demande d'abord quel utilisateur il faut supprimer. J'utilise ensuite la commande suivante
    sysadminctl -deleteUser UTILISATEUR

Cette commande va supprimer l'utilisateur et son répertoire dans Users.

### 4. Voir tous les utilisateurs

Pour voir tous les utilisateurs, j'utilise la commande suivante : 
    dscl . -list /Users | grep -v '_' | grep -v 'nobody' | grep -v 'root' | grep -v 'daemon' | grep -v '/'

Cette commande me permet d'afficher tous les utilisateurs. J'utilise un `grep -v` pour n'afficher que ceux qui sont créés par un administrateur et non ceux déjà implémentés dans la machine.

### 5. Faire une recherche

Pour faire une recherche, je prends d'abord le nom de l'utilisateur recherché. J'utilise ensuite les commandes suivantes : 

    dscl . -list /Users | grep $search

    dscl . -list /Users UniqueID | grep $search

    dscl . -list /Users UserShell | grep $search 

    dscl . -list /Users RealName | grep $search

    dscl . -list /Users PrimaryGroupID | grep $search
    
    dscl . -list /Users NFSHomeDirectory | grep $search

Elles permettent, grâce à l'argument -list et au grep d'afficher les informations concernant l'utilisateur demandé. Les informations seront les suivantes : nom de l'utilisateur, son ID, le chemin d'accès vers le Shell, son nom complet, l'ID de son groupe, et le chemin d'accès vers son dossier utilisateur.




*[Retour au sommaire](../README.md)* | 
*[Sources](../Cours/sources.md)* | *[TP suivant (TP4)](./TP4.md)*