MY_BUDGET_SERVER 🚀

Es una aplicación servidor para https://github.com/exe987/my_budget_client.

Vas a poder clonar el repositorio desde https://github.com/exe987/my_budget_server.

Requisitos 📋

Para que la aplicación funcione deberás tener instalado Node JS, Mysql y Workbench en tu sistema.

Desde Node JS he instalado los paquetes que utilicé para el desarrollo del proyecto.

Instalación 🔧

Una vez clonado el repo, a través de la consola nos ubicamos sobre el directorio de my_budget_server y ejecutamos:

npm install

Esto descargará todos los paquetes para el desarrollo del proyecto. Luego de que termine de descargar para prender el servidor ejecutamos:

npm run dev

La app empezará a correr en el http://localhost:4000 

Procederemos a activar mysql en segundo plano a través de la consola:
![alt text](https://i.ibb.co/QvyTQFg/turn-on-mysql-in-console.jpg)

Luego en el archivo db de la carpeta database, coloca tu contraseña de mysql:
![alt text](https://i.ibb.co/b5WJkD6/conexion-a-db.png)

Abrimos Mysql Workbench e introducimos nuestro password para poder conectarnos a la base de datos.

En los Schemas no va a estar la db my_budget. Primero debemos importarla:
![alt text](https://i.ibb.co/ncQPxKv/importar-db-1.png)
![alt text](https://i.ibb.co/ncS2dc3/importar-db-2.png)

Puede testear la app creando un usuario desde la interfaz de usuario e iniciando sesión.

Si la conexión falla, verificar password, si no colocar la siguiente query en Workbench:

![alt text](https://i.ibb.co/8PhCvwt/possible-connection-problem.png)

Si la conexión es exitosa ya podés empezar a utilizar la app desde el navegador.

Autor✒️

Soto, Angel Exequiel

github: https://github.com/exe987

linkedin: https://linkedin.com/in/exesoto

