#!/bin/bash

REPO_PATH="/chemin/vers/le/depot"
BRANCH="nom_de_la_branche"
cd "$REPO_PATH"
git checkout $BRANCH
git pull origin $BRANCH
git add .
git commit -m "Automatic update"
git push origin $BRANCH

echo "C'est bon!"
