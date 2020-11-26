# La définition de Shell

## Le système d'exploitation : OS

*Avant de définir le Shell, je souhaiterai développer la structure d'un système d'exploitation*

Le système d'exploitation est un ensemble de programmes qui dirige l'utilisation des ressources d'un ordinateur par des logiciels applicatifs (Wikipedia). Le système d'exploitation est aussi appelé logiciel système, ou Operating System (OS). 

C'est un logiciel qui pilote des dispositifs matériels et reçoit des instructions de l'utilisateur ou d'autres logiciels (ou applications). Ces logiciels doivent être adaptés à un système d'exploitation (Futura Sciences)

Un système d'exploitation représente l'ensemble des programmes qui pilote les différents composants de l'appareil informatique et lui permet donc de foctionner. Il permet donc de faire l'interface entre l'utilisateur et le matériel informatique (Actuce et aide informatique)

Le système d'exploitation est composé principalement d'un noyau et d'une coquille nommés chacun **KERNEL** et **SHELL**. Le kernel permet la communication directe avec les ressources matérielles.

> Pour résumer : Le système d'exploitation est un programme système. Le kernel est UNE PARTIE importante du système d'exploitation. Le système d'exploitation est une interface entre l'utilisateur et le matériel de l'ordinateur. Le kernel est une interface entre le logiciel et le matériel de l'ordinateur. 

Shell signifie littéralement *coquille* en français, et correspond à l'interface système de l'ordinateur. C'est un langage intégré à Linux, qui va interpréter des commandes. le Shell est un programme que l'on trouve dans le répertoire /bin (mettre photo) On retrouve les commandes Shell dans le répertoire /bin de notre machine. 

Le Shell permet donc de :
* Exécuter des commandes
* Explorer l'arborescence d'un système
* Créer, éditer et supprimer des fichiers
* ...

La principale utilité du Shell se trouve dans la création de scripts Shell qui permettent d'automatiser des actions que nous pourrions réaliser une à une à la main. (*Voir [Les Scripts Shell](./scripts.md)*)


Linux est constitué de 2 environnements : 
* **L'environnement graphique** : Utilisé pour les *simples* utilisateurs. On peut naviguer à travers les dossiers avec sa souris ou son clavier, tout est très visuel. Il est plus intuitif.
* **L'environnement console** : On navigue à travers l'arborescence de l'ordinateur grâce à des lignes de commandes spécifiques. 

Le Shell est donc un environnement console de Linux. 
