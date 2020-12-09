# Les conditions dans un script Shell

On utilise les conditions pour faire une action SI une opération est vérifiée. Pour exemple, SI "l'eau est chaude", ALORS "Prends ta douche". SINON "attends que l'eau chauffe". Il suffit d'appliquer ce schéma à des variables dans un script Shell ! 

## La forme

Pour écrire une condition on utilise la forme suivante : 

    if [ test à vérifier ]; then
        action à effectuer si le test est vérifié
    else 
        action à effectuer si le test n'est pas vrai
    fi

> * **if** correspond au SI
> * **then** correspond au ALORS
> * **else** correspond au SINON
> * **fi** correspond à la fin de la condition.

## Exemple

Ce script permet d'imprimer une phrase en fonction du contenu de la variable **classe**.

![cond1](./img/cond1.png)
> 1. J'initialise ma variable **classe** en lui assignant la valeur **B1**
> 2. SI ma variable **classe** est égale à **B1**; alors...
> 3. J'imprime la phrase donnée
> 4. SINON, j'imprime l'autre phrase.
>> **ATTENTION !! Il faut bien mettre des espaces lors du test.**

