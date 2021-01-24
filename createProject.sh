#!/bin/bash
echo -e "\e[31m=====================================================\e[0m"
echo -e "\e[31m=====================================================\e[0m"
echo -e "\e[31m====================\e[0m\e[33mcreateProject\e[0m\e[31m====================\e[0m"
echo -e "\e[31m=======================================\e[36mby:OttoGtz\e[0m\e[31m====\e[0m"
echo -e "\e[31m=====================================================\e[0m"

projects="Basico React npm Salir"

function basico {
    echo "===>  Dame el nombre del proyecto:"
    read name_project
    mkdir ~/projects/"$name_project"
    cd ~/projects/"$name_project"
    mkdir js css
    touch index.html
    touch js/app.js
    touch css/style.css
    #echo "La ruta del proyecto $name_project es" 
    #pwd
    echo -e "\e[1;31m===>\e[0m  \e[1;36mSe creo el proyecto $name_project\e[0m"
    code ~/projects/"$name_project"
    exit
}

function react {
    echo "===>  Dame el nombre del proyecto:"
    read name_project
    cd ~/projects/
    npm create-react-app "$name_project"
    echo -e "\e[1;31m===>\e[0m  \e[1;36mSe creo el proyecto $name_project\e[0m"
    code ~/projects/"$name_project"
    exit
}

function npm {
    echo -e "===>  Dame el nombre del proyecto:"
    read name_project
    mkdir ~/projects/"$name_project"
    cd ~/projects/"$name_project"
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
    
    echo -e "\e[1;31m===>\e[0m  \e[1;36mSe creo el proyecto $name_project\e[0m"
    code ~/projects/"name_project"
    exit
}

echo -e "\e[1;32m==>\e[0m   \e[32mSelecciona el tipo de proyecto: (ej. 1)\e[0m\e[36m"
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
        echo -e "\e[1;31mOpcion invalida\e[0m"
        exit 
    fi
done

