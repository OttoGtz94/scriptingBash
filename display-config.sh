#!/bin/bash

echo "====================================================="
echo "====================================================="
echo "==================display-config====================="
echo "=======================================by:OttoGtz===="
echo "====================================================="
echo ""
echo ""

options="ListarMonitores AddMonitor OneMonitor Salir"
# Funciones
function listarMonitores {
    clear
    xrandr --listmonitors
    menu
}

function monitorConfig {
    xrandr --output $1 --mode $2 --output $3 --mode $4 $5 $1
    echo "xrandr --output $1 --mode $2 --output $3 --mode $4 $5 $1"
    echo ""
    menu
}

function addMonitor {
    echo "Indica nombre de monitor primario"
    read name_monitor_primary
    echo "Indica resolución de monitor primario (Ej. 1366x768)"
    read resolution_primary_monitor
    echo "Indica nombre de monitor secundario"
    read name_monitor_secondary
    echo "Indica resolución de monitor secundario (Ej. 1366x768)"
    read resolution_secondary_monitor
    echo "Indica posición de monitor secundario"
    read res_position

    position_monitor_secondary=''
    if [[ $res_position = "derecha" || $res_position = "der" || $res_position = "right"  ]]; then
        monitorConfig $name_monitor_primary $resolution_primary_monitor $name_monitor_secondary $resolution_secondary_monitor --right-of
        exit
    elif [[ $res_position = "izquierda" || $res_position = "izq" || $res_position = "left" ]]; then
        monitorConfig $name_monitor_primary $resolution_primary_monitor $name_monitor_secondary $resolution_secondary_monitor --left-of
        exit
    elif [[ $res_position = "arriba" || $res_position = "arr" || $res_position = "above"  ]]; then
        monitorConfig $name_monitor_primary $resolution_primary_monitor $name_monitor_secondary $resolution_secondary_monitor --above
        exit
    elif [[ $res_position = "abajo" || $res_position = "aba" || $res_position = "below"  ]]; then
        monitorConfig $name_monitor_primary $resolution_primary_monitor $name_monitor_secondary $resolution_secondary_monitor --below
        exit
    else 
        echo "Posición invalida"
        addMonitor
    fi
}

function oneMonitor {
    echo "Indica el nombre del monitor secundario"
    read name_monitor_secondary
    xrandr --output $name_monitor_secondary --off
    echo "xrandr --output $name_monitor_secondary --off"
    echo ""
    menu
}

function menu {
    echo "Selecciona una opcion:"
    select option in $options;
    do
        if [ $option = "ListarMonitores" ]; then
            echo "Lista de monitores"
            listarMonitores
        elif [ $option = "AddMonitor" ]; then
            echo "Add Monitor"
            addMonitor
        elif [ $option = "OneMonitor" ]; then
            echo "One Monitor"
            oneMonitor
        elif [ $option = "Salir" ]; then
            echo "Adiós"
            exit
        else
            echo "Opción invalida"
            clear
            menu
        fi
    done
}

menu