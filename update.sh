# ask version number
read -p "site version: " version

# option message
read -p "update notes: " notes

#stage, commit, push
git add .
git commit -m "$notes"
git push

# create git tag for version
git tag "$version"
git push origin "$version"

echo "updated site: \"$notes\" and tagged as $version B]"
