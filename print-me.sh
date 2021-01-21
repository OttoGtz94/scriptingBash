#!/bin/bash
clear

echo "====================================================="
echo "====================================================="
echo "=====================print-me========================"
echo "=======================================by:OttoGtz===="
echo "====================================================="
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
    echo "Selecciona una opcion:"
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
            echo "Opción invalida"
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
    echo "El archivo esta vacio"
    exit
else
    echo "Esto no es una ruta"
    exit
fi
