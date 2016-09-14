#!/bin/sh
echo "Mise à jour en cours..."
chmod -f 777 exo4/flag
git stash
git pull --rebase
git stash pop
chmod -f 000 exo4/flag
echo "Mise à jour terminée !"
echo "En cas d'erreur, contactez un encadrant"
