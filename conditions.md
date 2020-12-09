# Les conditions dans un script Shell

On utilise les conditions pour faire une action SI une opération est vérifiée. Pour exemple, SI "l'eau est chaude", ALORS "Prends ta douche". SINON "attends que l'eau chauffe". Il suffit d'appliquer ce schéma à des variables dans un script Shell ! 

## La forme

Pour écrire une condition on utilise la forme suivante : 

    if [ test à vérifier ]; then
        action à effectuer 
    fi

> **if** correspond au SI

> **then** correspond au ALORS

> **fi** correspond à la fin de la condition.

var1="Hello World!"

if (si)
SI ALORS FIN
if [ test ]
then
    action à faire
else
    action à faire
fi /*fin*/