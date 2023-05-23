#!/bin/bash
#Script number.sh 
#<3/5/2023>-<Jesus Eduardo Garcia Campos>
# Ejemplo de Menu en BASH
#
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
read -p "Variable 1:" n1
read -p "Variable 2:" n2
read -p "Variable 3:" n3
echo "Numero 1 - $n1"
echo "Numero 2 - $n2"
echo "Numero 3 - $n3"



