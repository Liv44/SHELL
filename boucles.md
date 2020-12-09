# Les boucles dans un script Shell

Boucler permet de faire une action jusqu'à ce que notre condition soit atteinte, ou pour telle valeur. Pour boucler dans un script Shell, nous avons 2 possibilités. Utiliser le mot clé ` while ` ou le mot clé ` for `. 

## ` while `

` while `correspond à **tant que**. Tant que "le gâteau n'est pas cuit", faire "cuire encore 5 minutes". La forme est similaire aux conditions ` if ` :

    while [ condition ]; do
        action à effectuer
    done
> * ` while ` correspond au TANT QUE
> * ` do ` correspond au ALORS FAIT
> * ` done ` correspond à la fin de la condition.

**ATTENTION** : Comme pour les conditions ` if `, la condition peut se trouver entre crochets mais aussi entre doubles parenthèses `(( condition/calcul ))`. Je privilégie cette synthaxe car plus simple à utiliser pour faire des calculs.

![boucle1](./img/boucle1.png) ![boucle2](./img/boucle2.png)

> 1. Initialisation de la variable nbr à 0 
> 2. TANT QUE nbr n'est pas égal à 10, ALORS
> 3. nbr prend la valeur de nbr + 1.
> 4. et on imprime la valeur de nbr.
>> Notre algorithme fait donc ceci : tant que nbr n'est pas égal à 10, alors nbr prend 1 et on affiche nbr, puis on continue la boucle. La boucle s'arrêtera quand nbr aura atteint le nombre 10.

