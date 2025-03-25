#!/bin/bash

# CONFIG
SOURCE=~/Downloads/My_Resume.pdf
DEST=~/Documents/Git/eun.lim/assets/My_Resume.pdf
REPO=~/Documents/Git/eun.lim

# STEP 1: Copy file
echo "📥 Copying resume PDF to repo..."
cp "$SOURCE" "$DEST"

# STEP 2: Commit & Push
cd "$REPO" || exit
git add "$DEST"
git commit -m "🔄 Updated resume on $(date '+%Y-%m-%d %H:%M')"
git push origin main

echo "✅ Resume pushed to GitHub!"
