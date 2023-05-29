#  En esta seccion tenemos scripts en BASH

## lo que se hace en el [bro.sh](https://github.com/Chuyinnnnnnnnnnnn/LABORATORIOPIA/blob/master/scriptsbash/bro.sh)  es lo siguiente:

Muestra la fecha y hora actual.
Muestra una línea separadora en la consola.
Muestra el menú principal con diferentes opciones.
Lee la opción seleccionada por el usuario.
En función de la opción seleccionada, ejecuta diferentes comandos o acciones:
Opción 1: Ejecuta el script "netdiscover.sh" ubicado en la carpeta del usuario actual.
Opción 2: Muestra el nombre del usuario actual.
Opción 3: Muestra el hostname del sistema y saluda al usuario.
Opción 4: Muestra el mensaje "Bye!" y finaliza la ejecución del script.
Lee el nombre del usuario desde la entrada de la consola.
Muestra un mensaje personalizado saludando al usuario por su nombre.

## lo que se hace en [netdiscover.sh](https://github.com/Chuyinnnnnnnnnnnn/LABORATORIOPIA/blob/master/scriptsbash/netdiscover.sh)  es lo siguiente:

Las primeras líneas muestran un título y un menú con cuatro opciones.
La línea "read -p" espera la entrada del usuario y asigna el valor ingresado a la variable 'c'.
El bloque 'case' realiza una acción dependiendo del valor de 'c':
Si 'c' es igual a 1, se ejecuta el script 'netdiscover.sh' ubicado en la variable de entorno $HOME.
Si 'c' es igual a 2, se muestra el nombre del usuario actual mediante el comando 'whoami'.
Si 'c' es igual a 3, se muestra el nombre del host utilizando el comando 'hostname'.
Si 'c' es igual a 4, se muestra "Bye!" y se sale del script.
La sección 'which ifconfig' verifica si el comando 'ifconfig' existe. Si es así, se ejecutan una serie de comandos para obtener la dirección IP y la subred del sistema utilizando 'ifconfig'. Si 'ifconfig' no existe, se utiliza el comando 'ip' para obtener la información requerida.
Después de obtener la dirección IP y la subred, se realiza un bucle 'for' que itera desde 1 hasta 254 (asumiendo una subred típica de clase C). Dentro del bucle, se realiza un ping a cada dirección IP posible dentro de la subred. Si el ping tiene éxito (el código de salida es 0), se muestra un mensaje indicando que el host responde.


## lo que se hace en [number.sh](https://github.com/Chuyinnnnnnnnnnnn/LABORATORIOPIA/blob/master/scriptsbash/number.sh)  es lo siguiente:

Las primeras líneas muestran un título y un menú con cuatro opciones.
La línea "read -p" espera la entrada del usuario y asigna el valor ingresado a la variable 'c'.
El bloque 'case' realiza una acción dependiendo del valor de 'c':
Si 'c' es igual a 1, se ejecuta el script 'netdiscover.sh' ubicado en la variable de entorno $HOME.
Si 'c' es igual a 2, muestra el nombre del usuario actual utilizando el comando 'whoami'.
Si 'c' es igual a 3, muestra el nombre del host utilizando el comando 'hostname' y luego muestra el mensaje "saludos".
Si 'c' es igual a 4, muestra "Bye!" y sale del script.
Después del bloque 'case', se solicitan tres variables al usuario utilizando el comando 'read -p' y se asignan a las variables 'n1', 'n2' y 'n3', respectivamente.
Finalmente, se imprimen los valores de las tres variables utilizando el comando 'echo', mostrando "Numero 1 - ", "Numero 2 - " y "Numero 3 - " seguido de los valores ingresados por el usuario.

## lo que se hace en [portscanv1.sh](https://github.com/Chuyinnnnnnnnnnnn/LABORATORIOPIA/blob/master/scriptsbash/portscanv1.sh)  es lo siguiente:

Las primeras líneas muestran un título y un menú con cuatro opciones.
La línea "read -p" espera la entrada del usuario y asigna el valor ingresado a la variable 'c'.
El bloque 'case' realiza una acción dependiendo del valor de 'c':
Si 'c' es igual a 1, se ejecuta el script 'netdiscover.sh' ubicado en la carpeta de descargas ($HOME/Downloads/Folder).
Si 'c' es igual a 2, muestra el nombre del usuario actual utilizando el comando 'whoami'.
Si 'c' es igual a 3, muestra el nombre del host utilizando el comando 'hostname' y luego muestra el mensaje "saludos".
Si 'c' es igual a 4, muestra "Bye!" y sale del script.
Después del bloque 'case', se define una variable 'direccion_ip' con el valor "192.168.1.6/24" que representa una dirección IP y su máscara de red.
Se imprime la variable 'direccion_ip' utilizando el comando 'echo'.
La variable 'puertos' contiene una lista de puertos separados por comas.
Se verifica si no se pasaron argumentos a través de la línea de comandos. Si no se pasaron argumentos, muestra un mensaje de uso.
Se itera a través de la variable 'puertos' utilizando un bucle 'for'. Dentro del bucle, se ejecuta el comando 'timeout' con un tiempo límite de 1 segundo para intentar establecer una conexión a través de los puertos especificados en la dirección IP definida. Si la conexión se establece con éxito, se muestra un mensaje indicando que el puerto está abierto. Si la conexión no se establece, se muestra un mensaje indicando que el puerto está cerrado.


## lo que se hace en [superscan.sh](https://github.com/Chuyinnnnnnnnnnnn/LABORATORIOPIA/blob/master/scriptsbash/superscan.sh)  es lo siguiente:

este script muestra un menú interactivo con cuatro opciones. Dependiendo de la opción seleccionada por el usuario, se ejecutará un script específico. Los scripts mencionados ('netdiscover.sh', 'portscanv1.sh' y 'welcome.sh') deben estar ubicados en la carpeta de inicio del usuario ($HOME) y realizarán acciones o mostrarán información relacionada con la opción seleccionada. Si el usuario elige la opción 4, el script muestra "Bye!" y sale del programa.

## lo que se hace en [welcome.sh](https://github.com/Chuyinnnnnnnnnnnn/LABORATORIOPIA/blob/master/scriptsbash/welcome.sh)  es lo siguiente:

este script muestra un menú interactivo y muestra información relacionada con la fecha y la hora actual, el nombre del usuario actual, un saludo personalizado y los usuarios conectados junto con sus procesos.

