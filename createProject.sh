#!/bin/bash
echo "====================================================="
echo "====================================================="
echo "====================createProject===================="
echo "=======================================by:OttoGtz===="
echo "====================================================="

projects="Basico React npm Salir"

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
    echo "Dame el nombre del proyecto de React"
    read name_project
    cd ~/Programming/appsReact/
    npx create-react-app "$name_project"
    echo "Se creo el proyecto $name_project"
    code ~/Programming/appsReact/"$name_project"
    exit
}

function npm {
    echo "Proyecto de ECMAS6"
}

echo "Selecciona el tipo de proyecto: (ej. 1)"
select project in $projects;
do
    if [ $project = "Basico" ]; then
        basico
    elif [ $project = "React" ]; then
        react
    elif [ $project = "npm" ]; then
        ecmas6
    elif [ $project = "Salir" ]; then
        echo "bye"
        exit
    else
        echo "Opcion invalida"
        exit 
    fi
done

