# TP4 : Créer un annuaire téléphonique

Voici l'intitulé du TP : 

*Le script devra permettre la gestion d'un annuaire téléphonique. Il devra inclure les fonctionnalités suivantes :*
* *ajout un contact (nom + tel + mail)*
* *modifier un contact*
* *voir la liste de tous les contacts (triés par ordre alphabétiques grâce à leur noms et n'afficher que leurs noms)*
* *voir le détail d'un contact grâce à son nom*
* *retrouver le nom d'un contact grâce à son adresse mail / téléphone*
* *supprimer un contact*

*L'ensemble des informations devra être enregistré dans un fichier texte.*

Pour la structure du script, j'ai réutilisé le menu que j'avais créé pour le TP1 (voir [TP1](./TP1.md)).

### 1. Ajouter un contact

Pour ajouter un contact, j'ai utilisé les commandes echo et read avec les variables `nom`, `telephone` et `mail`, qui stockent le contact créé. J'ai ensuite fait la ligne de commande suivante : 
    echo "Nom : $nom - Téléphone : $telephone - Mail : $mail" >> annuaire.txt

> Cette commande permet d'afficher ce qui est entre guillemets dans le fichier suivi par `>>`. On affiche donc le nouveau contact dans le document annuaire.txt

### 2. Modifier un contact

Par manque de temps, je n'ai pas approfondi cette partie. J'ai pu quand même chercher des informations sur les commandes `sed`et `awk`qui auraient pu m'être utile pour modifier seulement une partie de ma ligne. J'ai été face au problème que je ne pouvais pas réinsérer une ligne si je n'avais pas le numéro de téléphone et le mail. Il aurait aussi fallu que je récupère la ligne qui contenait le contact à modifier. 

### 3. Voir tous les contacts

Pour voir tous les contacts, j'ai utilisé la commande `sort`qui permet de trier par ordre alphabétique les lignes d'un fichier.

### 4. Retrouver un contact

Pour retrouver un contact, j'ai demandé à l'utilisateur l'information qu'il avait (nom, téléphone ou mail), je l'ai stocké dans une variable et ai utilisé la commande `grep`pour retrouver la ligne du fichier contenant cette information.

Je n'ai pas eu le temps de chercher comment n'imprimer que le nom du contact.

### 5. Supprimer un contact

Pour supprimer un contact, j'ai utilisé la commande `grep`avec l'argument `-v`qui permet de sélectionner le fichier **sans** la ligne contenant l'information que l'on cherche. 
    grep -v "$nom" annuaire.txt
> Cette commande va afficher le contenu de annuaire.txt sans la ligne qui contient le nom.
Le contenu affiché va ensuite être stocké dans une variable et remise ensuite dans le fichier annuaire.txt
    grep -v "$nom" annuaire.txt > supp
    
    mv supp annuaire.txt

