#!/bin/bash
#Script superscan.sh
#<3/5/2023>-<Jesus Eduardo Garcia Campos>

date
    echo "|"
    echo "|---------------------------|"
    echo "|   Menu Principal          |"
    echo "|---------------------------|"
    echo "|1. Net Discover"
    echo "|2. portscanv1"
    echo "|3. welcome"
    echo "|4. Exit"
    echo "|"
read -p "Opción  [ 1 - 4 ] " c
case $c in
        1) $HOME/netdiscover.sh;;
        2) $HOME/portscanv1.sh;;
        3) $HOME/welcome.sh;;
        4) echo "Bye!"; exit 0;;
esac

