WORKSPACE=%~1

git add "%WORKSPACE%\\Config\\DefaultEngine.ini"
git commit -m "[sync] AndroidStoreVersion"
git pull
git checkout main
git merge origin/Portings/Android