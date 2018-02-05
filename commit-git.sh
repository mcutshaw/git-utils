read -p "Message: " MESS 
git pull origin master
git add -A
git commit -m "$MESS"
git push origin master
