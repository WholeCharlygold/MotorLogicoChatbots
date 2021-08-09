# MotorLogicoChatbots

Este proyecto es el complementario y el encargado de poder transmitir los chatbots del sistema gráfico a Facebook. Para poder correrlo se necesita tener instalado jupyter-notebook/jupyter-lab así como todas las dependencias que se usan en los siguientes archivos:


- servidorCargarChatbot
- updateChatblocks
- servidor
- interprete

Para poder ejecutar el archivo de "servidor" debemos de tener localmente ejecutandose una instancia de RabbitMQ la mejor forma de hacer esto es desde la instancia de RabbitMQ en Docker (https://www.rabbitmq.com/download.html).

## Notas Importantes

Importante resaltar es que en este punto **ya debes de tener instalado en Postgres la base de datos**. El archivo para inicializar la base de datos se encuentra en este mismo repo o igualmente esta en el repo del [sistema gráfico](https://github.com/luisgmdz/sistema-grafico).

La conexión a la base de datos como el nombre de la base, el usuario y la contraseña **se deben de cambiar según su configuración en cada uno de los archivos de la lista de arriba**, en caso contrario lo más problable es que de un error de conexión a la base de datos.
