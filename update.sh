#!/bin/bash

# go to the repo folder
cd ~/Documents/embeds || { echo "Repo folder not found!"; exit 1; }

# read token from file
TOKEN=$(cat ~/Documents/git\ token.txt)

# ask version number
read -p "site version: " version
read -p "update notes: " notes

# stage, commit
git add .
git commit -m "[$version] | $notes"

# push using token
git push https://$TOKEN@github.com/perpsdev/embeds.git main

echo "✅ Updated site: \"$notes\" and tagged as $version B]"
