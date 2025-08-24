#!/bin/bash

# go to the repo folder
cd ~/Documents/embeds || { echo "Repo folder not found!"; exit 1; }

# ask version number
read -p "site version: " version

# option message
read -p "update notes: " notes

# stage, commit, push
git add .
git commit -m "[$version] | $notes"
git push origin main

echo "✅ Updated site: \"$notes\" and tagged as $version B]"
