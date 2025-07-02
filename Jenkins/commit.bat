set file=%~1

cd %~pd0
git add %file%
git commit -m "Added log"
git push