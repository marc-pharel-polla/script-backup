#!/bin/bash

# Variables
SOURCE_DIR="/chemin/vers/R1"
DEST_DIR="utilisateur@S2:/chemin/vers/R2/full"
DATE=$(date +"%Y-%m-%d")

# Sauvegarde complète
echo "Début de la sauvegarde complète : $DATE"
rsync -avz --delete "$SOURCE_DIR" "$DEST_DIR/$DATE"
echo "Sauvegarde complète terminée."

