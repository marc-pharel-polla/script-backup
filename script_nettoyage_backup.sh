#!/bin/bash

# Variables
BASE_DIR="/chemin/vers/R2"

# Suppression des sauvegardes différentielles de plus de 7 jours
find "$BASE_DIR/diff/" -type d -mtime +7 -exec rm -rf {} +

# Suppression des sauvegardes hebdomadaires (complètes) de plus de 4 semaines
find "$BASE_DIR/full/" -type d -mtime +28 -exec rm -rf {} +

# Suppression des sauvegardes mensuelles de plus de 6 mois
find "$BASE_DIR/full/" -type d -mtime +180 -exec rm -rf {} +

echo "Nettoyage des sauvegardes terminé."

