#!/bin/bash
echo "====================================================="
echo "====================================================="
echo "====================createProject===================="
echo "=======================================by:OttoGtz===="
echo "====================================================="

projects="Basico React npm Salir"

function basico {
    echo "===>  Dame el nombre del proyecto:"
    read name_project
    mkdir ~/Programming/scriptingBash/"$name_project"
    cd ~/Programming/scriptingBash/"$name_project"
    mkdir js css
    touch index.html
    touch js/app.js
    touch css/style.css
    #echo "La ruta del proyecto $name_project es" 
    #pwd
    echo "===>  Se creo el proyecto $name_project"
    code ~/Programming/scriptingBash/"$name_project"
    exit
}

function react {
    echo "===>  Dame el nombre del proyecto:"
    read name_project
    cd ~/Programming/appsReact/
    npx create-react-app "$name_project"
    echo "===>  Se creo el proyecto $name_project"
    code ~/Programming/appsReact/"$name_project"
    exit
}

function npm {
    echo "===>  Dame el nombre del proyecto:"
    read name_project
    mkdir ~/Programming/"$name_project"
    cd ~/Programming/"$name_project"
    mkdir src
    mkdir src/js
    touch src/js/index.js
    mkdir src/sass
    touch src/sass/index.scss
    mkdir src/img
    touch src/index.html
    #touch webpack.config.js
    touch README.md
    
    exec npm init
    
    echo "===>  Se creo el proyecto $name_project"
    code ~/Programming/"name_project"
    exit
}

echo "==>   Selecciona el tipo de proyecto: (ej. 1)"
select project in $projects;
do
    if [ $project = "Basico" ]; then
        basico
    elif [ $project = "React" ]; then
        react
    elif [ $project = "npm" ]; then
        npm
    elif [ $project = "Salir" ]; then
        echo "==>   Saliendo..."
        exit
    else
        echo "Opcion invalida"
        exit 
    fi
done

