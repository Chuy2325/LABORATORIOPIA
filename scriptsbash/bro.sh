#!/bin/bash
#Script bro.sh
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

read -p "Escribe tu nombre:" nombre
echo "Hola, $nombre. Seamos amigos"


