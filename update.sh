#!/bin/sh
echo "Mise à jour en cours..."
git stash
git pull --rebase
git stash pop
echo "Mise à jour terminée !"
echo "En cas d'erreur, contactez un encadrant"
