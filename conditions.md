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

### Exemple IF ELSE

Ce script permet d'imprimer une phrase en fonction du contenu de la variable **classe**.

![cond1](./img/cond1.png)
> 1. J'initialise ma variable **classe** en lui assignant la valeur **B1**
> 2. SI ma variable **classe** est égale à **B1**; alors...
> 3. J'imprime la phrase donnée
> 4. SINON, j'imprime l'autre phrase.
>> **ATTENTION !! Il faut bien mettre des espaces avant les crochets et autour des valeurs à tester lors du test.**

## SINON SI 

On peut aussi vérifier une seconde condition si la première n'est pas vérifiée. Pour cela, on utilise le mot clé **elif** (un condensé de Else If, soit Sinon Si)

### Exemple ELIF

![cond2](./img/cond2.png)

> Notre variable contient **B2**. Le script va vérifier si la variable est égale à **B1**. Si elle n'est pas égale à **B1** mais qu'elle est égale à **B2**, alors on affiche **"Bonjour les B2!"**.

![cond3](./img/cond3.png)

> On peut aussi allier les IF/ELIF et ELSE pour : 
> * Vérifier une *première condition* et faire x action
> * Vérifier une *seconde condition* et faire x action
> * Si *aucune des conditions* n'est vérifiée, faire x action.