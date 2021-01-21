# Scripting Bash

Scripts creados para automatizar mi entorno de trabajo en Linux.

Para crear un alias para cada script y correrlo desde la terminal, abrimos con nuestro editor de texto _.bashrc_

> vim ~/.bashrc

Creamos nuestro alias

> alias create-project="bash ~/ruta/del/script/createProject.sh"

Guardamos, salimos y escribimos

> source .bashrc

Ahora ya podemos ejecutar nuestro alias desde la terminal ubicados en cualquier carpeta.

> **create-project**

**NOTA:**
No olvidemos darle permiso de ejecución al Script a ejecutar.

> chmod +x nombreScript.sh

## Script createProject

Crea 3 tipos de proyectos, _basico_, _react_ y _ECMAs6_ con sus respectivos ficheros.

### Basico

Crea una carpeta con el nombre que se le indique y abre **vsCode** en esa carpeta.

La estructura que toma es:

- **js/**
  - **app.js**
- **css/**
  - **style.css**
- **index.html**

#### Configuración del Script

Para configurar el script y se pueda utilizar en su _computadora_ se debe de modificar la función de **basico** después de leer el nombre del proyecto dice:

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

## Script print-me

Imprime desde consola una o más copías de un archivo.

Comprueba si es un archivo y que no este vacio, si lo es retornara un mensaje y **NO** lo imprimira.

Se le puede pasar 0, 1 o 2 parametros, si no recibe un parametro mostrara un **menú** con las opciones:

- Cola: Mostrara las impresiones en cola de la impresora.
- Cancelar: Cancelara la impresión actual en la impresora.
- Salir: Salir del Script.

Si recibe _parametros_

- El primer parametro será la ruta donde este el _documento_ e imprimira _una sola copia_
  > ./print-me.sh ~/Documents/documento.docx
- El segundo parametro sera el _número de copías a imprimir_. Si se le pasa **1** imprimira _una sola copia_ como si no se le hubiera pasado un segundo parametro. Su **limite** son **30 copias**
  > ./print-me.sh ~/Documents/documento.docx 3

_Si en alguno de los dos parametros se le pasa algo invalido no imprimira y mandara un mensaje de error, por ejemplo si como segundo parametro se le pasa_ **n <= 0** || **n >= 31** || **n != enteros** _mandara un mensaje de error y no imprimira._

### Crear alias

En **.bashrc** creamos el alias.

> nano .bashrc

Y escribimos

> alias print-me="bash ~/projects/scriptingBash/print-me.sh"

El nombre del alias puede cambiar, en lugar de _print-me_ podemos poner otro, al igual la ruta donde tengan el script guardado, por ejemplo:

> alias imprime="bash ~/.config/scripts/print-me.sh"

En el anterior ejemplo el alias se llama _imprime_ y el script esta en una carpeta llamada _scripts_ dentro de _.config_.
