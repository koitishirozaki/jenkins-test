set file=%~1

git %~pd0
git add %file%
git commit -m "Added log"
git push