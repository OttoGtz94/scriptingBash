# Scripting Bash
Scripts creados para automatizar mi entorno de trabajo en Linux.

Para crear un alias para cada script y correrlo desde la terminal, abrimos con nuestro editor de texto *.bashrc*
> vim ~/.bashrc

Creamos nuestro alias
> alias create-project="bash ~/ruta/del/script/createProject.sh"

Guardamos, salimos y escribimos
> source .bashrc

Ahora ya podemos ejecutar nuestro alias desde la terminal ubicados en cualquier carpeta.
> **create-project**


## Script createProject
Crea 3 tipos de proyectos, *basico*, *react* y *ECMAs6* con sus respectivos ficheros.

### Basico
Crea una carpeta con el nombre que se le indique y abre **vsCode** en esa carpeta.

La estructura que toma es:

- **js/**
    - **app.js**
- **css/**
    - **style.css**
- **index.html**

#### Configuración del Script
Para configurar el script y se pueda utilizar en su *computadora* se debe de modificar la función de **basico** después de leer el nombre del proyecto dice:
> mkdir ~/Programming/scriptingBash/

Modifica la ruta de tu carpeta que tengas para proyectos, supongamos que tenemos una carpeta llamada **projects** dentro de tu carpeta de usuario.
> ~/projects/

Entonces se tendría que poner esa ruta
> mkdir ~/projects/"$name_project"

AL igual se debe de modificar el **change directory** o **cd** que viene abajo.
> cd ~/Programming/scriptingBash/"$name_project"

pasar a 
> cd ~/projects/"$name_project"

Para abrir en **vsCode** en la línea:
> code ~/Programming/scriptingBash/"$name_project"

Se modificaría a
> code ~/projects/"$name_project"

### React
Crea un proyecto de React con el nombre que se le indique y abre **vsCode** con el proyecto.
#### Configuración
Cambiar las rutas donde se creara
> cd ~/Programming/appsReact/

Si tenemos una carpeta llamada **projects** en nuestra carpeta de usuario y queremos que el proyecto se creé dentro de ella ponemos
> cd ~/projects/

Al igual se modifica la ruta para abrir en **vsCode**
> code ~/projects/"$name_project"

### npm
Crea e inicializa el proyecto en **npm** y abre el proyecto en vsCode
#### Configuración
Cambiar la ruta de **mkdir**, **cd** y **code**
> mkdir ~/Programming/"$name_project"

> cd ~/Programming/"$name_project"

> code ~/Programming/"name_project"






