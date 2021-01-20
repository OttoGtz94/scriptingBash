#!/bin/bash
echo "====================================================="
echo "====================================================="
echo "====================createProject===================="
echo "=======================================by:OttoGtz===="
echo "====================================================="

projects="Basico React ECMAS6 Salir"

function basico {
    echo "Dame el nombre del proyecto:"
    read name_project
    mkdir ~/Programming/scriptingBash/"$name_project"
    cd ~/Programming/scriptingBash/"$name_project"
    mkdir js css
    touch index.html
    touch js/app.js
    touch css/style.css
    echo "La ruta del proyecto $name_project es" 
    pwd
    code ~/Programming/scriptingBash/"$name_project"
    exit
}

function react {
    echo "Proyecto de React"
}

function ecmas6 {
    echo "Proyecto de ECMAS6"
}

echo "Selecciona el tipo de proyecto: (ej. 1)"
select project in $projects;
do
    if [ $project = "Basico" ]; then
        basico
    elif [ $project = "React" ]; then
        react
    elif [ $project = "ECMAS6" ]; then
        ecmas6
    elif [ $project = "Salir" ]; then
        echo "bye"
        exit
    else
        echo "Opcion invalida"
        exit 
    fi
done

