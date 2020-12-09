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

**ATTENTION** : Nous avons vu dans les conditions ` if ` que la condition à vérifier devait se trouver entre crochets, avec des espaces entre les opérateurs et les variables. Pour faciliter la chose et permettre de faire des calculs dans nos conditions et nos actions, on peut utiliser les doubles parenthèses `(( condition/calcul ))`