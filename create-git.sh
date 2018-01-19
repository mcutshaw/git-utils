read -p "Username:" USERNAME
read -p "Repo name:" REPONAME
read -p "Description" DESC
curl -u $USERNAME https://api.github.com/user/repos -d '{ "name": "'$REPONAME'", "description": "'$DESC'" }'
