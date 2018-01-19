read -p "Username: " USERNAME
REPONAME=${PWD##*/}
read -p "Description: " DESC
curl -u $USERNAME https://api.github.com/user/repos -d '{ "name": "'$REPONAME'", "description": "'"$DESC"'" }'
git init
git add -A
git commit -m "Init"
git remote add origin git@github.com:xton13/$REPONAME
git push origin master
