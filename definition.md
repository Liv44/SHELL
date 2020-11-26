# Définitions

## HardWare et BIOS

Le **HardWare** correspond au matériel physique qui compose l'ordinateur. Contrairement au **software** qui correspond aux logiciels et applications installées sur l'ordinateur, le HardWare est extérieur, ce sont des éléments que nous pouvons manipuler, toucher. *(Source : [Apprendre informatique](https://www.apprendreinformatique.fr/quelle-difference-entre-hardware-et-software/))*

Le **BIOS** (basic Input Output System, soit Système élémentaire d’entrée/sortie) se lancé automatiquement au démarrage. Le bios a pour fonction de faire le lien entre le système d’exploitation et tous les périphériques se trouvant dans l’unité centrale ou portable. (tutoriauxpc.com) 

Le **BIOS** est un ensemble de fonctions, contenu dans la mémoire morte (ROM) de la carte mère d’un ordinateur, lui permettant d’effectuer des opérations de base, lors de sa mise sous tension. C’est le centre de contrôle de la carte mère.

* Il initialise tous les composants de la carte mère
* il identifie les périphériques internes et externes qui lui sont connectés
* il démarre le système d’exploitation dans l’ordre croissant des périphériques disponibles en contenant un. (Wikipedia)



## Le système d'exploitation : OS

*Avant de définir le Shell, je souhaiterai développer la notion de système d'exploitation pour bien comprendre l'utilisation du Shell*

C'est le premier programme exécuté par la machine. L'OS guide la machine pour démarrer. Après que la machine aie bien exécuté les commandes initiales de l'OS, l'OS laissera la main à l'utilisateur pour exécuter d'autres commandes. L'OS assure le lien entre les ressources matérielles de la machine (HardWare) et les applications (SoftWare). L'utilisateur peut passer via les applications pour demander un service mais aussi via l'interface graphique ou de programmation (avec les lignes de commandes)

Les composants d'un OS
* Le **KERNEL**
    * Noyau
    * gère les fonctions clés de l'OS
    * permet la communication directe avec les ressources matérielles
    * interface entre le logiciel et le matériel de l'ordinateur

* Le **SHELL**
    * interpréteur de commandes
    * permet de communiquer avec l'OS par l'intermédiaire d'un langage de commandes

* Le **FILE SYSTEM**
    * Système de fichiers
    * gère l'arborescence, l'écriture et la lecture des fichiers
    * Enregistrer les fichiers ans une arborescence

* Les **Drivers**
    * pilotes
    * permettent la gestion des périphériques

*Source : [L'OS expliqué en 3 minutes / Cokie connecté](https://www.youtube.com/watch?v=AcZ87MTiXr4)

Le **système d'exploitation** *(ou logicel système, Operating System : **OS**)*

* est un ensemble de programmes qui dirige l'utilisation des ressources d'un ordinateur par des logiciels applicatifs (Wikipedia). . 

* est un logiciel qui pilote des dispositifs matériels et reçoit des instructions de l'utilisateur ou d'autres logiciels (ou applications). Ces logiciels doivent être adaptés à un système d'exploitation (Futura Sciences)
* représente l'ensemble des programmes qui pilote les différents composants de l'appareil informatique et lui permet donc de foctionner. Il permet donc de faire l'interface entre l'utilisateur et le matériel informatique (Actuce et aide informatique)

Le système d'exploitation est composé principalement d'un noyau et d'une coquille nommés chacun **KERNEL** et **SHELL**. Le kernel permet la communication directe avec les ressources matérielles.

> Pour résumer : Le **système d'exploitation** est un programme système. Le **kernel** est UNE PARTIE importante du système d'exploitation. Le système d'exploitation est une interface entre l'utilisateur et le matériel de l'ordinateur. Le kernel est une interface entre le logiciel et le matériel de l'ordinateur. 

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