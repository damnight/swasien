#!/bin/bash

VAULT_DIR="/home/$USER/Documents/DnD/Swasien"
QUARTZ_DIR="/home/$USER/Documents/DnD/quartz-dnd-swasien/quartz/content"

# 1. Sync Swasien to Quartz (handles .md and images in one go)
rsync -av --delete "$VAULT_DIR/" "$QUARTZ_DIR/"

# 2. Trigger Quartz
cd /home/$USER/Documents/DnD/quartz-dnd-swasien/quartz
git add .
git commit -m "Wiki update: $(date +'%Y-%m-%d %H:%M')"
git push origin main
