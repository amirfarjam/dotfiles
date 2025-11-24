#!/bin/zsh

SOURCE="/Users/farjam/Library/CloudStorage/OneDrive-UniversityofEdinburgh/Obsidian/ObsidianED"
DEST="/Users/farjam/Library/Mobile Documents/com~apple~CloudDocs/MyObsEd"

# Ensure destination exists
mkdir -p "$DEST"

# One-way mirror OneDrive → iCloud
# --delete makes DEST match SOURCE exactly (so any iPad edits get overwritten next sync)
rsync -av --delete "$SOURCE/" "$DEST/"

