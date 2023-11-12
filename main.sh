#!/bin/bash
tamanyArbre=$(($1+5))
tamanySegonTriangle=$((10+$tamanyArbre))
ffplay audio.mp3 &
for ((repit=0;repit<200;++repit))
do
for ((pos=$tamanyArbre;pos<100;++pos))
do
    bash script.sh $tamanyArbre $pos 0
    bash script.sh $tamanySegonTriangle $(($pos+$tamanyArbre-$tamanySegonTriangle)) $(($tamanyArbre-5))
    sleep 0.05
    clear
done 
for ((pos=100;pos>$tamanySegonTriangle;--pos))
do
    bash script.sh $tamanyArbre $pos 0
    bash script.sh $tamanySegonTriangle $(($pos+$tamanyArbre-$tamanySegonTriangle)) $(($tamanyArbre-5))
    sleep 0.05
    clear
done 
done