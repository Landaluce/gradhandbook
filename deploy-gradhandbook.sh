#!/bin/bash
[ -f ~/.env/sphinx/bin/activate ] && . ~/.env/sphinx/bin/activate

<<<<<<< local
make -f makeDefault html
make -f makeDefault latexpdf
=======
[ -f ~/.env/sphinx/bin/activate ] && . ~/.env/sphinx/bin/activate

make clean
make html
make latexpdf
>>>>>>> other
make epub
<<<<<<< local
cp CS-Grad-Internship-MOU.pdf build
rsync -av -e "ssh -oPort=22222" $(pwd)/build/ gkt@gradhandbook.cs.luc.edu:/var/www/vhosts/gradhandbook.cs.luc.edu/htdocs/
=======

./rsync-gradhandbook.sh


>>>>>>> other
