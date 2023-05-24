#!/usr/bin/env bash
#jesus eduardo garcia campos
#2000965

echo -e "1 para escaneo de red \n2 para escaneo individual\n3 para escaneo udp\n4 para escaneo de scripts\n5 para salir"
read -p "que elijes?" condicional
while [ $condicional -ne 5 ];
do 



case $condicional in 
1) read -p "Subred:" leer_subred
   nmap -sn $leer_subred -oN escaneosubred.txt
;;
2) read -p "ip individual:" leer_ip
   nmap -v -A $leer_ip -oN escaneoindividual.txt
;;
3) read -p "ip individual:" leer_ip
   sudo nmap -n -Pn -sU -p- -v $leer_ip -oN escaneoudp.txt
;;
4) read -p "ip individual:" leer_ip
   read -p "script:" script  
   nmap --script $script $leer_ip -oN escaneoscripts.txt
;;
esac
echo -e "1 para escaneo de red \n2 para escaneo individual\n3 para escaneo udp\n4 para escaneo de scripts\n5 para salir"
read -p "que elijes?" condicional
done 
