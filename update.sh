# ask version number
read -p "site version: " version

# option message
read -p "update notes: " notes

#stage, commit, push
git add .
git commit -m "[$version] | $notes"
git push

echo "updated site: \"$notes\" and tagged as $version B]"
