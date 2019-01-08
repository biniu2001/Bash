#!/bin/bash

dialog --title "KALKULATOR" \
--backtitle "Autor: Mateusz Binkowski" \
--menu "Wybierz rodzaj dzialania" 10 50 5 \
1 "kalkulator" 2 "Autor" 3 "Historia Obliczen" 4 "Usun Historie Obliczen" 5 "EXIT" 2>wynik
sel=$?
wybor=`cat wynik`
case $sel in
0)
    case $wybor in
    1)./kalkulator/wybor_znakow.sh ;;
    2)./autor.sh ;;
    3)./historia.sh ;;
    4)./usuwanie_historii.sh
    ./menu.sh ;;
    5)./exit.sh ;;
    esac ;;
1)echo "Nacisnoles Anuluj" ;;
255) "Nacisnoles ESC" ;;
esac
