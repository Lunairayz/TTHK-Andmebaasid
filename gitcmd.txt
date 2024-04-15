cd desktop
git config --global --unset user.name
git config --global --unset user.email
git clone https://github.com/Lunairayz/TTHK-Andmebaasid
git init TTHK-Andmebaasid
cd TTHK-Andmebaasid
git config --local user.name "Lunairayz"
git config --local user.email "archieshirjaev@gmail.com"
git config --local --list
git status

git add .
git commit -a -m "work"
git push
