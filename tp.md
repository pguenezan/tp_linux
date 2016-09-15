- Authors : BfoR, Multun (§ Bash )

```
$ git clone http://github.com/bifore/tp_linux
$ cd tp_linux
$ ./update.sh
```

## La superbe géniale magnifique documentation

Si vous ne comprenez pas une commande, vous pouvez taper:

```
$ man echo
```
Le `$` indique que vous pouvez taper votre commande, si ce symbole n'est pas
présent, cela signifie que votre dernière commande n'est pas terminée.

De plus, si vous voulez interrompre la commande vous pouvez faire:
```
Ctrl + c
```

## i3

Pour ce TP, nous allons utiliser `i3` qui est un gestionnaire de fenêtres.

Pour lancer un terminal, il faut appuyer sur:
```
<Mod> + Enter
```
En fonction de ce que vous choisissez au démarrage de votre session, la touche
<Mod>, sera la touche `Windows` ou la touche `Alt`.

Si vous voulez fermer votre fenêtre appuyer sur:
```
<Mod> + Shift + q
```

De plus, si vous voulez lancer un programme tapez:
```
<Mod> + d, puis tapez firefox par exemple
```

Enfin, pour changer de bureau, tapez:
```
<Mod> + le numéro du bureau
```

## Dossiers et fichiers

Comme nous avons maintenant un terminal ouvert, nous pouvons commencer.

Si vous voulez savoir où vous êtes dans le système de fichier tapez:
```
$ pwd
```

Maintenant que nous savons où nous sommes, nous voulons connaitre les fichiers
et les dossiers qui se trouvent là où nous sommes. Pour cela il faut faire:
```
$ ls
```

Nous pouvont maintenant savoir où nous sommes et lister le contenu d'un dossier,
mais on ne peut pas faire grand choses sans se déplacer dans le système de fichiers, pour cela tapez:
```
$ cd NOM_DU_DOSSIER
```
De plus si vous voulez revenir au dossier parent, tapez `cd ..`.

Il est donc temps de passer au premier exercice, pour cela rendez-vous dans le dossier
`tp_linux/exo1`.
Votre mission, si vous l'acceptez... sera de récupérer le fichier `flag` qui
contient une clef que vous pouvez vérifier sur `http://ctf.bfor.ovh/`. Ce
fichier se trouve quelque part dans l'arborescence du dossier `exo1`. Pour
cet exercice vous aurez besoin de la commande `cat FICHIER` qui permet d'
afficher le contenu d'un ficher.

Petit indice, certains dossiers ou fichiers peuvent être cachés si ils commencent par
un `.` ( par exemple `.invisible` ). Cherchez bien :wink:

Enfin si voulez créer un dossier, rien de plus simple, tapez:
```
$ mkdir NOM_DU_DOSSIER
```
De même, on peut créer un fichier avec la commande:
```
$ touch NOM_DU_FICHIER
```

## make

Nous allons maintenant voir comment compiler un programme en C avec `make`.
Pour compiler votre programme rien de plus simple, il suffit d'exécuter la
commande `make` dans un dossier qui comporte le fichier `Makefile`.

De plus si vous voulez exécuter votre fichier<sup>[1](#f1)</sup> exécutable, il
suffit de faire:
```
$ ./NOM_DU_FICHIER
```

Maintenant que vous savez tout cela, un autre flag se trouve dans le dossier
`exo2`. A vous de le trouver !

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
avons un petit problème. Si nous avons un fichier de 42k lignes et que nous
voulons regarder les 15 premières ou dernière lignes d'un fichier, nous n'allons
pas l'afficher en entier. Pour cela nous pouvons faire:
```
$ head -n 15 NOM_DU_FICHIER
$ tail -n 15 NOM_DU_FICHIER
```
Je vous laisse deviner laquelle affiche les dernières lignes<sup>[2](#f2)
</sup>et laquelle affiche les premières lignes :worried:

Il existe plusieurs éditeurs très puissants tels que `vim` et `emacs`, mais ils
sont assez difficiles à utiliser pour un débutant. Je conseille donc d'utiliser
`nano` pour ce TP.

Sous `nano` les raccourcis sont affichés en bas de l'écran, ce qui facilite
grandement son utilisation ( par exemple `Ctrl + X` pour quitter ).

De plus si vous faire défiler un fichier ( comme un `man` ), vous pouvez
utiliser la commande `less`.

## Misc

Dans ce chapitre, nous allons voir beaucoup de commandes hétéroclites:

- `find .` permet de lister récursivement tous les fichiers d'un dossier.
- `clear` permet d'effacer l'écran du terminal ( recommencer à la première
ligne )
- `cal` et `date` permet d'afficher le calendrier, la date et l'heure.
- `grep REGEX NOM_DU_FICHIER` permet de faire une recherche dans un fichier (
 très utile ! )

Maintenant que vous savez utiliser `grep`, vous pouvez essayer de chercher le
flag dans le dossier `exo3`.

Petit indice, si vous voulez chercher le mot `sapin` du fichier `ours` il
faut taper la commande:
```
$ grep sapin ours
```

## Taille, propriétaire et permissions

La commande `du` permet de connaitre la taille d'un fichier ( vous pouvez
ajouter l'option `-h` à de nombreuses commandes dont `du` pour rendre la sortie
plus lisible )

Comme vous l'avez sans doute vu durant la conférence, chaque fichier appartient à un utilisateur,
pour changer le propriétaire d'un fichier, il suffit de faire:
```
$ chown UTILISATEUR:GROUPE NOM_DU_FICHIER
```
De plus si vous voulez changer les permissions d'un fichier, il faut faire:
```
$ chmod XXX NOM_DU_FICHIER
```
Un petit rappel sur les permissions numériques : le premier chiffre est la
permission de l'utilisateur, le deuxième pour le groupe et le dernier pour tout
le monde. Le différentes valeurs possible sont:

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

Maintenant que vous maitrisez à la prefection les permissions, un flag se cache
dans le dossier `exo4`. A vous de jouer !

## Bash

Le Shell est un langage de programmation comme les autres, dont l'apprentissage
ne constitue pas le coeur de ce TP. Toutefois, certaines de ses fonctionnalités
sont particulièrement utiles.

En premier lieu, chaque ligne de votre programme shell, à l'exception des
mots-clés (while, for, ...) et des attributions de variables correspond
au lancement d'un programme.

Les programmes, comme les fonctions, disposent d'arguments. Les arguments des
programmes sous linux sont exclusivement textuels.
Par exemple, le programme le plus basique imaginable serait `echo`, qui affiche
ses arguments.

Vous pouvez afficher le texte `Hello, World!` en saisissant `echo "Hello,
World!"`.

Une des autres capacités intéressantes de ce langage réside dans sa capacité à
compléter les noms de fichiers.
Écrire `echo poul*` affichera le nom de tous les fichiers commençant par `poul`
Vous pouvez tester dans le dossier `globbing`.

Vous pouvez également attribuer une valeur à une variable grâce à la syntaxe
`VARIABLE="Valeur"`. Affichez ensuite le contenu de la variable avec `echo
$VARIABLE`.

Ce qui fait la réelle puissance de ce langage, c'est sa capacité à combiner les
résultats des programmes appelés.
Par exemple, vous pouvez écrire le texte `coucou` dans un fichier grâce un
programme `echo "coucou" > NOM_DU_FICHIER`. Comme vous pouvez le voir,
l'opérateur `>` permet de rediriger ce qui s'affiche dans le terminal dans un
fichier.

De la même façon, l'opérateur `|` ( pipe ), permet de rediriger la sortie du
programme à gauche du pipe, dans l'entrée du programme à droite du pipe. Par
exemple la commande `ls | grep .c` permet de filtrer la sortie de `ls` avec la
commande `grep` donc afficher tout les fichiers C du dossier.

Un autre flag se trouve dans le dossier `exo5`, pour le trouver il faut transmettrer
la clef à un programme flag. Bonne chance !

## Processus

Un processus est un programme en cours d'exécution.

Pour lister les processus, vous pouvez faire la commande `top` ou `htop` (
utilisez celui que vous souhaitez ).

Enfin si vous voulez stopper l'excution d'un processus vous pouvez faire:
```
$ pkill NOM_DU_PROCESSUS
```

## Sytème de fichiers

Si vous voulez connaitre la taille et l'espace restant des systèmes de fichiers
montés, vous pouvez faire:
```
$ df
```

De plus si vous voulez monter ( ajouter ) des systèmes de fichiers, il faut
faire:
```
$ mount /dev/NOM_DU_FS CHEMIN
```
Si vous voulez qu'un système de fichier ne soit plus accessible, vous le
démontez avec la commande:
```
$ umount CHEMIN
```

## Réseau

Si vous voulez tester votre connexion avec la commande `ping IP_ADDRESS`, on
utilise souvent le serveur DNS de Google ( `8.8.8.8` ) pour tester sa connexion.

On peut aussi télécharger un fichier depuis Web avec `curl URL`.
Comme vous pouvez le voir si vous testez la commande
`curl http://www.google.fr`, le contenu de la page s'affiche dans le terminal
et non dans un fichier. Pour sauvegarder un fichier et non l'afficher il faut
utiliser `wget`.

Maintenant que vous savez utiliser `curl`, un flag se cache à l'URL suivant, à
vous de le trouver !
```
http://ctf.bfor.ovh/curl
```

Petit bonus, si vous voulez regarder Star Wars IV vous pouvez taper:
```
$ telnet towel.blinkenlights.nl
```

## The end of the line

Le TP touche maintenant à sa fin, si vous voulez arrêter votre machine, il faut
faire:
```
shutdown now
```
Enfin si vous voulez redémarer votre machine il faut taper `reboot`, si vous
voulez quitter un terminal, entrer la commande `exit` ou `Ctrl + d` ( seulement
si le prompt est vide ).

<br>
<br>
<br>

<a name="f1">[1]</a> Sur linux les fichiers exécutables peuvent avoir n'importe
quelle extension ou aucune extension.

<a name="f2">[2]</a> L'option `-f` avec la commande `tail` permet de suivre des
fichiers.
