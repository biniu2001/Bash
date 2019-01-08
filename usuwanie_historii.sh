#!/bin/bash

COUNT=0
(while [ $COUNT != 101 ]
do
echo $COUNT
COUNT=`expr $COUNT + 1`
sleep 0.02
done
) | dialog --title "Autor: Mateusz Binkowski" --gauge "Trwa usuwanie Historii" 6 50 0

rm -r his