# Scripting Bash
Scripts creados para automatizar mi entorno de trabajo en Linux.

## createProject
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




