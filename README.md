# LE SHELL

EXPLIQUER LE TRAVAIL ET LA COMPOSITION DU GIT

J'ai décidé de travailler sur le sujet du Shell car je travaille avec un Mac. Mac ayant un noyau Unix, il comprends déjà le langage Shell, contrairement à Windows qui doit utiliser le PowerShell. 

Unix fait partie de Linux, le noyaux est libre etc.

Ce répertoire se décompose ainsi : dans le fichier README.md, vous retrouverez le sommaire, la présentation du travail et un lien vers les sources utilisées. 

## Sommaire
1. [Les définitions](./definition.md)
2. [Les différents types de Shell](./types.md)
3. [Les commandes Shell](./cmd.md)
4. [Les scripts Shell](./scripts.md)
    * [Les variables](./var.md)
    * [Les conditions](./conditions.md)
    * [Les boucles](./boucles.md)
4. [Third Example](./example.md)

## [Sources](./sources.md)



faire des listes sur ce que je veux parler.
boucles pour / tant que 

Voici un code en C :

    int main()
    {
        printf("Hello world!\n");
        return 0;
    }

Ceci est une `Fonction`.


echo "Que voulez-vous faire ?
1- Créer un utilisateur
2- mofidier un utilisateur
3- supprimer un utilisateur
4- voir les utilisateurs
5- faire une recherche"

read result

if [ "$result" = "1" ] 
then
ls -a
fi
