#! bin/bash

# Napisać skrypt, który wczytuje nazwę użytkownika
# i sprawdza, czy podany użytkownik jest zalogowany.
# Wypisuje stosowny komunikat.

zalogowani=`who | cut -c1-7| sort | uniq`
uzytkownik=$1
length=${#uzytkownik}

if [ $# = 1 ]
   then
      if [ ${length} -gt 1 ]
         then
            if [[ "$zalogowani" == *"$uzytkownik"* ]]
               then
                  echo "$uzytkownik jest zalogowany."
                else
                  echo "$uzytkownik nie jest zalogowany."
            fi
         else
            echo "Nieodpowiednia dlugosc argumentu."
      fi
   else
      echo "Nieprawidlowa ilosc argumentow."
fi

