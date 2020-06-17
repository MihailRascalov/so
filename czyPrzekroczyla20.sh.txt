#! bin/bash

# Napisać skrypt, który sprawdza, czy liczba zalogowanych użytkowników nie przekr>
# TAK - wyświetla komunikat: "Za duzo"
# NIE - komunikat OK (if, who, wc)

ileZalogowanych=`who | wc -l`

if [ ${ileZalogowanych} -gt 20 ]
        then
                echo "Za duzo. Obecna liczba zalogowanych uzytkownikow: $ileZalog>
        else
                echo "Ok. Obecna liczba zalogowanych uzytkownikow: $ileZalogowany>
fi
