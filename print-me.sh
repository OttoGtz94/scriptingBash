#!/bin/bash
clear

echo -e "\e[31m=====================================================\e[0m"
echo -e "\e[31m=====================================================\e[0m"
echo -e "\e[31m======================\e[0m\e[33mprint-me\e[0m\e[31m=======================\e[0m"
echo -e "\e[31m=======================================\e[36mby:OttoGtz\e[0m\e[31m====\e[0m"
echo -e "\e[31m=====================================================\e[0m"
echo ""
echo ""
echo ""

options="Cola Cancelar Salir"

#Funciones
function listarCola {
    echo "Trabajos en cola"
    lpq
}

function imprimir {
    echo "Imprimiendo $1"
    lpr $1
}

function imprimirMasDeUna {
    echo "Se imprimiran $2 copias del archivo $1"
    lpr -# $2 $1
}

function cancelarImpresion {
    echo "Cancelando impresión"
    lprm -
    echo "Impresión cancelada"
}

function menu {
    echo -e "\e[1;32m==>\e[0m   \e[32mSelecciona una opcion: (ej. 1)\e[0m\e[36m"
    select option in $options;
    do
        #if [ $option = "Imprimir" ]; then
          #  imprimir $1
         #   exit
        #el
        if [ $option = "Cola" ]; then
            listarCola
        elif [ $option = "Cancelar" ]; then
            cancelarImpresion
        elif [ $option = "Salir" ]; then
            echo "Adiós"
            exit
        else
            echo -e "\e[1;31mOpcion invalida\e[0m"
            exit
        fi
    done
}

if [ -z "$1" ]; then
    menu
elif [[ -s "$1" && -z "$2" || "$2" -eq 1 ]]; then
    imprimir $1
elif [[ -s "$1" && ! -z "$2" && "$2" -ge 2 && "$2" -le 30 ]]; then
    imprimirMasDeUna $1 $2
elif [ ! -s "$1" ]; then
    echo -e "\e[1;31mEl archivo esta vacio\e[0m"
    exit
else
    echo -e "\e[1;31mEsto no es una ruta\e[0m"
    exit
fi
