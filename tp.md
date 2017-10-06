- Auteurs : BfoR, multun, flomonster

```
$ wget http://transfer.guenezan.me/XXXXX/tp_linux.zip
$ unzip tp_linux
$ cd tp_linux
```

| Exercice  | Nom                          |
|-----------|------------------------------|
| niveau 1  | voyage voyage                |
| niveau 2  | EXÉCUTION                    |
| niveau 3  | Une œuvre d'AUTHORS          |
| niveau 4  | À la recherche du flag perdu |
| niveau 5  | On dit s'il vous plaît       |
| niveau 6  | Tartiflette                  |
| niveau 7  | Passe-passe                  |
| niveau 8  | maknifique                   |
| niveau 9  | globiblob                    |
| niveau 10 | Trace me                     |
| niveau 42 | xorifiquement votre          |


## Un peu d'aide

Si vous ne comprenez pas une commande, saisissez:

```
$ man echo
```

Le `$` indique que vous pouvez saisir une commande. Si ce symbole ni aucun
autre similaire n'est présent, la commande précédente n'est pas terminée.


Pour interrompre la commande en cours, saisissez:

```
<Ctrl> + c
```

## i3

Pour ce TP, nous allons utiliser `i3` qui est un gestionnaire de fenêtres.
Pour lancer un terminal, il faut appuyer sur:

```
<Mod> + Enter
```

En fonction de ce que vous choisissez au démarrage de votre session, la touche
`<Mod>`, sera la touche `Windows` ou la touche `Alt`.

Si vous voulez fermer votre fenêtre appuyer sur:
```
<Mod> + Shift + q
```

Si vous voulez lancer un programme graphique tapez:
```
<Mod> + d, puis tapez firefox par exemple
```

Pour changer de bureau, tapez:

```
<Mod> + le numéro du bureau
```

Pour bouger une fenêtre vers un nouveau bureau, tapez:

```
<Mod> + <Shift> + le numéro du bureau
```

Enfin, pour réagancer les fenêtres, tapez:

```
<Mod> + <Shift> + <Arrows>
```


## Dossiers et fichiers

Comme nous avons maintenant un terminal, il est temps de commencer.

Un petit lexique des commandes utiles:

 - `pwd` permet d'afficher le chemin du dossier actuel.
 - `ls` permet de lister les éléments du dossier actuel.
 - `mkdir DOSSIER` permet de créer un dossier nommé "DOSSIER" dans le dossier courant.
 - `rmdir DOSSIER` permet de supprimer un dossier vide.
 - `touch FICHIER` permet de créer un fichier vide.
 - `rm FICHIER` permet de supprimer un fichier.
 - `tree` permet d'afficher l'arborescence liée au dossier courant.
 - `mv` permet de déplacer / renommer un fichier ou dossier.
 - `cat FICHIER` permet d'afficher le contenu d'un fichier. Sans arguments, sortez avec `<Ctrl> + d`.
 - `curl https://une_url/` permet de télécharger un fichier à partir d'une URL. L'option
   `-O` permet de sauvegarder le fichier dans le dossier courant.
 - `echo chaton` permet d'afficher le texte `chaton`, suivi d'un retour à la ligne.
 - `man` permet d'afficher la documentation d'une commande connue.

Il est donc temps de passer au premier exercice ! Pour cela, rendez-vous dans le dossier
`voyage_voyage`.
Votre mission, si vous l'acceptez… sera de récupérer le fichier `flag` qui
contient une clef que vous pouvez vérifier sur `http://ctf.bfor.ovh/`. Ce
fichier se trouve quelque part dans l'arborescence du dossier `voyage_voyage`. Pour
cet exercice vous aurez besoin de la commande `cat` qui permet d'
afficher le contenu d'un fichier.

Petit indice, certains dossiers ou fichiers peuvent être cachés si ils commencent par
un `.` ( par exemple `.invisible` ). Cherchez bien :wink:

## Execution !

Si un fichier<sup>[1](#f1)</sup> est exécutable, vous pouvez le lancer en spéficiant son chemin complet
dans l'invite de commande. Par exemple, essayez de lancer `hello_world.sh`.

Afin de pouvoir distinguer les programmes dans le dossier courrant de ceux installés
ailles, il est nécessaire de spécifier le chemin relatif du dossier courrant.

```sh
./mon_programme
```

Un autre flag se trouve dans le dossier `execution`. À vous de le trouver !


## Opérations sur les fichiers

Nous savons désormais comment créer des dossiers et des fichiers, mais si l'on
fait une erreur, nous ne pouvons pas la corriger.
Pour supprimer un fichier ou un dossier, il suffit de faire:

```
$ rm NOM_DU_FICHIER
$ rmdir NOM_DU_DOSSIER
```

De plus si vous voulez effacer un dossier et son contenu récursivement, il
suffit d'ajouter l'option `-r` à la commande `rm`.

Comme vous l'avez sans doute remarqué, vous ne pouvez pas faire `Ctrl + c,
Ctrl + v`, pour copier un fichier. Pour copier un fichier sur linux, il faut
taper:

```
$ cp NOM_DU_FICHIER_SOURCE NOM_DU_NOUVEAU_FICHIER
```

Le déplacement d'un fichier s'effectue exactement de la même façon mais avec la
commande `mv`. De plus, renommer un fichier équivaut à le déplacer.

## Afficher un fichier

Nous savons déjà comment afficher un fichier avec la commande `cat`, mais nous
avons un petit problème. Si nous avons un fichier de 42 mille lignes et que nous
voulons regarder les 15 premières ou dernière lignes d'un fichier, nous n'allons
pas l'afficher en entier. Pour cela il est possible d'utiliser:

```
$ head -n 15 FICHIER
$ tail -n 15 FICHIER
```

À vous de deviner laquelle affiche les dernières lignes<sup>[2](#f2)
</sup>et laquelle affiche les premières lignes :worried:


Plusieurs éditeurs avancés tels que `vim` et `emacs` sont disponibles, mais de
prise en main relativement difficile. Si vous n'êtes pas familier avec ces outils,
vous pouvez utiliser `nano` pour ce TP.

Sous `nano` les raccourcis sont affichés en bas de l'écran, ce qui facilite
grandement son utilisation ( par exemple `Ctrl + X` pour quitter ).

De plus si vous voulez faire défiler un fichier ( comme un `man` ), vous pouvez
utiliser la commande `less`.

## Misc

Ce chapitre vise à découvrir un certain nombre de commandes relativement hétéroclites:

- `find .` permet de lister récursivement tous les fichiers d'un dossier.
- `clear` permet d'effacer l'écran du terminal ( recommencer à la première
ligne )
- `cal` et `date` permet d'afficher le calendrier, la date et l'heure.
- `grep RECHERCHE FICHIER` permet de faire une recherche dans un fichier (
 très utile ! )

Maintenant que vous savez utiliser `grep`, vous pouvez essayer de chercher le
flag dans le dossier `flag_perdu`.

Petit indice, si vous voulez chercher le mot `sapin` du fichier `ours` il
faut taper la commande:

```
$ grep sapin ours
```

## Taille, propriétaire et permissions

La commande `du` permet de connaitre la taille d'un fichier ( vous pouvez
ajouter l'option `-h` à de nombreuses commandes dont `du` pour rendre la sortie
plus lisible )

Comme vous l'avez sans doute constaté lors de la conférence, chaque fichier
appartient à un utilisateur. Pour changer le propriétaire d'un fichier, faites:

```
$ chown UTILISATEUR:GROUPE NOM_DU_FICHIER
```

En outre, pour modifier les permissions d'un fichier, faites:

```
$ chmod XXX NOM_DU_FICHIER
```

Un petit rappel sur les permissions numériques : le premier chiffre est la
permission de l'utilisateur, le deuxième celui du groupe et le dernier celui
des autres. Les différentes valeurs possible sont:

| Droit                 | Valeur alphanumérique | Valeur octale |
|-----------------------|:---------------------:|:-------------:|
| aucun droit           | `---`                 | `0`           |
| exécution seulement   | `--x`                 | `1`           |
| écriture seulement    | `-w-`                 | `2`           |
| écriture et exécution | `-wx`                 | `3`           |
| lecture seulement     | `r--`                 | `4`           |
| lecture et exécution  | `r-x`                 | `5`           |
| lecture et écriture   | `rw-`                 | `6`           |
| tous les droits       | `rwx`                 | `7`           |

Maintenant que vous maitrisez à la perfection les permissions, un flag se cache
dans le dossier `svp`. A vous de jouer !


## Réseau

On peut aussi télécharger un fichier depuis Web avec `curl URL`.
Comme vous pouvez le voir si vous testez la commande
`curl http://www.google.fr`, le contenu de la page s'affiche dans le terminal
et non dans un fichier.

Petit bonus, si vous voulez regarder Star Wars IV vous pouvez taper:
```
$ telnet towel.blinkenlights.nl
```


## tar

À la manière de `7zip`, `tar` est un outil d'archivage.

Il permet de regrouper des fichiers, puis de les compresser à l'aide de différents
algorithmes.

Par convention, un fichier `.tar` contiendra plusieurs fichiers regroupés, et un
fichier `.tar.gz` sera des fichiers regroupés puis compressés selon l'algorithme
`gzip`. Cet outil permet également d'utiliser un panel d'algorithmes différents.

Afin de dicter sa conduite, `tar` accepte deux catégorie d'arguments:

 - ceux dictant l'opération à effectuer:
   - `c` comme concaténer (mettre bout à bout)
   - `x` comme extraire
   - `t` pour lister
 - ceux spécifiant la compression:
   - `z` comme `gzip`
   - `j` pour `bzip2`
   …

Par défaut, tar affiche ou lis le sujet de son opérations, ce qui se révèle souvent
être une mauvaise idée.

Si l'argument `f` est passé à `tar`, un fichier sera lu ou écrit à la place.

Par exemple:
 - `tar xf MONFICHIER` décompresse un fichier (tar devine lui-même quelle
   compression est utilisée).
 - `tar xzf MONFICHIER FICHIER1 DOSSIER1` met dans l'archive `MONFICHIER` les
   éléments qui suivent.
 - `tar tf MONFICHIER` liste les éléments présents dans `MONFICHIER`
 - `curl http://monurl/monfichier.tar.gz | tar t` télécharge le fichier à l'url
   spécifiée et liste son contenu.


## Le Shell

Le Shell est un langage de programmation comme les autres, dont l'apprentissage
ne constitue pas le coeur de ce TP. Toutefois, certaines de ses fonctionnalités
sont particulièrement utiles.

En premier lieu, chaque ligne de votre programme shell, à l'exception des
mots-clés (while, for, ...) et des attributions de variables correspond
au lancement d'un programme.

Les programmes, comme les fonctions, disposent d'arguments. Les arguments des
programmes sous linux sont exclusivement textuels.
Par exemple, un programme basique serait `echo`, qui affiche ses arguments.

Vous pouvez afficher le texte `Hello, World!` en saisissant `echo "Hello,
World!"`.

Vous pouvez également attribuer une valeur à une variable grâce à la syntaxe
`VARIABLE="Valeur"`. Affichez ensuite le contenu de la variable avec `echo
$VARIABLE`.

Un des éléments intéressants de ce langage serait sa capacité à composer les
résultats des programmes appelés.

Par exemple, vous pouvez écrire le texte `coucou` dans un fichier grâce à
l'expression `echo "coucou" > NOM_DU_FICHIER`. En effet, l'opérateur `>` permet
de rediriger ce qui s'afficherait dans le terminal dans un fichier.

De la même façon, l'opérateur `|` ( pipe ), permet de rediriger la sortie du
programme à gauche du pipe, dans l'entrée du programme à droite du pipe. Par
exemple la commande `ls | grep .c` permet de filtrer la sortie de `ls` avec la
commande `grep` donc afficher tout les fichiers dont le nom contient `.c` du
dossier.

Un autre flag se trouve dans le dossier `passe_passe`, pour le trouver il faut transmettre
la clef à un programme flag. Bonne chance !


## make

Make est un programme conçu pour créer un fichier à partir d'une liste de d'autres
fichiers nécessaires à sa création.

make est par défaut capable de transformer une grande variété de types
de fichiers, dont les fichiers `.c`.

Par exemple, si un fichier `test.c` existe, saisissez `make test` pour instruire à
make de compiler le programme.

En plus de ces règles implicites, il est possible d'instruire à make comment
construire un type de fichier, à l'aide d'un fichier `Makefile'.

Une fois un programme compilé, pourquoi ne pas l'exécuter ?

Vous pouvez vérifier que votre programme est exécutable avec `stat FICHIER`,
La ligne `Access` résume les permissions du fichier: `Access: (0644/-rw-r--r--)`

Dans cet exemple, le fichier est lisible et inscriptible pour son propriétaire,
et lisible pour le reste des utilisateurs.

## Globbing

Une autre fonctionnalité du langage shell est de pouvoir tirer d'une expression
représentant une règle tous les fichiers la respectant. Ces expressions sont
appellées globs.

Le charactère `*` correspond à une suite de charactères quelconques, et le caractère
'?' correspond à un unique charactère.

Par exemple, les fichiers `patate` et `late` correspondent tous deux au glob `*ate`.

En outre, `rate` et `paragraphes` correspondent tous deux au glob `*ar*`

Par exemple, essayez d'afficher le nom de tous les fichiers commençant par `poul`
dans le dossier `globbing`.

Vous pouvez ensuite faire l'exercice `globiglob`. Le flag se trouve dans le
fichier se terminant par `3s`.

## Processus

Un processus est un programme en cours d'exécution. Sauf exception, les commandes que
vous saisissez aboutissent au lancement d'un nouveau programme, qui peut à son tour
interagir avec vous.

Pour lister les processus, vous pouvez utiliser la commande `top` ou `htop` (
utilisez celui que vous souhaitez ).

Enfin si vous voulez stopper l'excution d'un processus vous pouvez saisir:

```
$ pkill NOM_DU_PROCESSUS
```

Par exemple, lancez la commande `cat` dans un terminal, et essayer de l'arrêter dans
interagir avec celui-ci.


### Bibliothèques partagées et appels système

Les processus sont capables d'en appeller au système ou à du code externe pour effectuer
des opérations diverses.

Deux outils sont à votre disposition pour observer ce phénomène:

 - `ltrace` observe les appels a des bibliothèques partagées
 - `strace` observe les appels système

Pour inspecter les actions d'un programme, faites

```
strace MONPROGRAMME
```

OU

```
ltrace MONPROGRAMME
```

À vous d'observer ce qui s'y passe !


## Gdb

À la manière d'`strace` ou `ltrace`, `gdb` permet d'observer le comportement
d'un programme avec plus de minutie, mais aussi de l'altérer.




## Sytème de fichiers

Si vous voulez connaitre la taille et l'espace restant des systèmes de fichiers
montés, vous pouvez faire:

```
$ df
```

## La Fin.

Le TP touche maintenant à sa fin, si vous voulez arrêter votre machine, il faut
faire:

```
poweroff
```

<br>
<br>
<br>

<a name="f1">[1]</a> Sur linux les fichiers exécutables peuvent avoir n'importe
quelle extension ou aucune extension.

<a name="f2">[2]</a> L'option `-f` avec la commande `tail` permet de suivre des
fichiers.
