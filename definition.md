# Définitions

## Le système d'exploitation : OS

*Avant de définir le Shell, je souhaite comprendre la notion de système d'exploitation pour bien comprendre l'utilisation du Shell*


Le **système d'exploitation** (ou Operating System / OS / logiciel système) représente l'**ensemble des programmes qui pilotent les différents composants de l'appareil informatique et reçoit des instructions de l'utilisateur ou d'autres logiciels**. L'OS assure le lien entre les **ressources matérielles** de la machine (HardWare) et les **applications** (SoftWare).

Le système d'exploitation est le **premier programme exécuté** par la machine au démarrage car il précise les tâches à effectuer. Dès que la machine a bien exécuté les commandes initiales du logiciel système, ce dernier laissera la main à l'utilisateur pour **exécuter d'autres commandes**. L'utilisateur utilisera les application ou l'interface graphique ou de programmation pour demander l'exécution d'une tâche par l'OS.

### Les composants d'un OS
* Le **KERNEL**
    * Noyau de l'OS
    * Gère les fonctions clés de l'OS
    * Permet la communication directe avec les ressources matérielles
    * Interface entre le logiciel et le matériel de l'ordinateur

* Le **SHELL**
    * *Coquille* de l'OS
    * Interpréteur de commandes
    * Permet de communiquer avec l'OS par l'intermédiaire d'un langage de commandes

* Le **FILE SYSTEM**
    * Système de fichiers
    * gère l'arborescence, l'écriture et la lecture des fichiers
    * Enregistrer les fichiers ans une arborescence

* Les **Drivers**
    * Correspondent aux pilotes
    * Permettent la gestion des périphériques

*[Sources](./sources.md)*



> Pour résumer : Le **système d'exploitation** est un programme système. Le **kernel** est UNE PARTIE importante du système d'exploitation. Le système d'exploitation est une interface entre l'utilisateur et le matériel de l'ordinateur. Le kernel est une interface entre le logiciel et le matériel de l'ordinateur. 

---------------------

## Et le Shell dans tout ça ?

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

*[Retour au sommaire](./README.md)*