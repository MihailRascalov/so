#! /bin/bash
# rozpakowanie pliki z archiwum przekazanego jako pierwszy parametr
# do katalogu przekazanego jako drugi parametr

id [ $# -eq 2 ]
then
        if [ -f $1 ]
        then
                if [ -d $2 -a -w $2 ]
                then
                        tar -xvzf $1 -C $2
                        if [ $? -eq 0 ]
                        then
                                echo "Archiwum rozpakowano poprawnie"
                        else
                                echo "Błąd rozpakowania archiwum"
                        fi
                else
                        echo Drugi parametr musi być katalogiem z prawem "w"
                fi
        else
                echo "Pierwszy parametr musi być plikiem zwykłym"
        fi
fi