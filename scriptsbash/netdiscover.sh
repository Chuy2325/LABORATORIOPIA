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
        1) $HOME/netdiscover.sh;;
        2) whoami;;
        3) echo "Tu host es:"
                hostname
                echo "saludos";;
        4) echo "Bye!"; exit 0;;
esac
which ifconfig && { echo "Comando ifconfig existe...";
     direccion_ip=`ifconfig |grep inet |grep -v "127.0.0.1" |awk '{print $2}'`;
     echo "esta es tu direccion ip:"$direccion_ip;
     subred=`ifconfig | grep inet| grep -v "127.0.0.1" |awk '{print $2}' |awk -F. '{print $1"."$2"."$3"."}'`;
     echo "Esta es tu subred;"$subred;
     }\
|| { echo "No existe el comando ifconfig... usando ip";
     direccion_ip=`ip addr show |grep inet | grep -v "127.0.0.1"| awk '{print $2}'`;
     echo "Esta es tu direccion ip:"$direccion_ip;
     subred=`ip addr show | grep inet | grep -v "127.0.0.1" | awk -F. '{print $1"."$2"."$3"."}'`;
     echo "Esta es tu subred:"$subred;



}
for ip in {1..254}
do
ping -q -c 4 ${subred}${ip} > /dev/null $2
if [ $? -eq 0 ]
then 
echo "Host responde" ${subred}${ip}
fi
done





