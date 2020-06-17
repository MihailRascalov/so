 !/bin/bash

# Napisz skrypt usuwający wszystkie procesy uruchomione w tle.
# Za każdym razem pyta czy usunąć dany proces.
# Uwaga: jobs –p zwraca PID procesów, może być przydatne

# Wskazówki:
# Sprawdź czy udało się dany proces usunąć.
# Odpowiedź w formie tak lub nie.

clear
sleep 600&
sleep 900&
sleep 1200&

for job in `jobs -p`
do
        kod_wyjscia=999
        echo "${job}"
        read -p "Czy usunąć powyższy proces uruchomiony w tle? Wpisz tak lub nie:>
        if [ ${odpowiedz} == "Tak" ] || [ ${odpowiedz} == "tak" ]
        then
                kill "${job}"
                kod_wyjscia=$?
                wait "${job}" 2>/dev/null
                if [ "${kod_wyjscia}" -eq 0 ]
                then
                        echo -e "Poprawnie usunięto powyższy proces.\n"
                else
                        echo -e "Nie udało się usunąć powyższego procesu.\n"
                fi
        elif [ ${odpowiedz} == "Nie" ] || [ ${odpowiedz} == "nie" ]
        then
                echo -e "Nie usunięto powyższego procesu.\n"
                continue
        else
                echo -e "Nieprawidłowa odpowiedź.\n"
        fi
done
