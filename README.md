# LE SHELL

EXPLIQUER LE TRAVAIL ET LA COMPOSITION DU GIT

J'ai décidé de travailler sur le sujet du Shell car je travaille avec un MacBook Air. Mac ayant un noyau Unix, il comprends déjà le langage Shell, contrairement à Windows qui doit installer un PowerShell. 

Ce répeCe répertoire se décompose ainsi : dans le fichier README.md, vous retrouverez le sommaire, la présentation du travail et un lien vers les sources utilisées. 

## Sommaire
1. [Les définitions](./Cours/definition.md)
2. [Les différents types de Shell](./Cours/types.md)
3. [Les commandes Shell](./Cours/cmd.md)
4. [Les scripts Shell](./Cours/scripts.md)
    * [Les variables](./Cours/var.md)
    * [Les conditions](./Cours/conditions.md)
    * [Les boucles](./Cours/boucles.md)

## [Sources](./Cours/sources.md)



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
