#!/bin/bash

# Définition des variables
SOURCE_DIR="/chemin/vers/R1"
DEST_DIR="/chemin/vers/R2/diff_backups"
FULL_BACKUP_DIR="/chemin/vers/R2/full_backups"
DATE=$(date +%Y-%m-%d)

# Trouver la dernière sauvegarde complète
LAST_FULL_BACKUP=$(ls -t "$FULL_BACKUP_DIR" | head -n 1)

# Vérifier si une sauvegarde complète existe
if [ -z "$LAST_FULL_BACKUP" ]; then
    echo "Erreur : aucune sauvegarde complète trouvée."
    exit 1
fi

# Création du répertoire de destination si nécessaire
mkdir -p "$DEST_DIR"

# Sauvegarde différentielle avec tar
tar -czf "$DEST_DIR/backup_diff_$DATE.tar.gz" -g "$DEST_DIR/snapshot.snar" "$SOURCE_DIR"

echo "Sauvegarde différentielle réalisée avec succès : $DEST_DIR/backup_diff_$DATE.tar.gz"

