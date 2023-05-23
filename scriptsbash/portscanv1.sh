#!/bin/bash
#Script netdiscover.sh
#<3/5/2023>-<Jesus Eduardo Garcia Campos>

date
    echo "|"
    echo "|---------------------------|"
    echo "|   Menu Principal          |"
    echo "|---------------------------|"
    echo "|1. Net Discover"
    echo "|2. Actual User"
    echo "|3. Hostname"
    echo "|4. Exit"
    echo "|"
read -p "Opción  [ 1 - 4 ] " c
case $c in
        1) $HOME/Downloads/Folder/netdiscover.sh;;
        2) whoami;;
        3) echo "Tu host es:"
                hostname
                echo "saludos";;
        4) echo "Bye!"; exit 0;;
esac

direccion_ip=192.168.1.6/24
echo $direccion_ip
puertos="20,21,22,23,25,50,51,53,80,110,119,135,136,137,138,139,143,161,162,389,443,445,636,1025,1443,3389,5985,5986,8080,10000"
[ $# -eq 0 ] && { echo "Modo de uso $0 $direccion_ip"; }
 
for port in $puertos 
do 
   
timeout 1 bash -c "echo > /dev/tcp/$direccion_ip/$port > /dev/null 2>&1" &&\
echo $direccion_ip":"$port"is open"\
||\
echo $direccion_ip":"$port"is closed"
done

