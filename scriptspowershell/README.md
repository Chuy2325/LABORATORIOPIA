# En esta seccion tenemos scripts de Powershell


##  [link script 1](https://github.com/Chuyinnnnnnnnnnnn/LABORATORIOPIA/blob/master/scriptspowershell/scan_alivev1.ps1) Este script lo que hace es lo siguiente:
Muestra en la consola el mensaje "Tu gateway es: " seguido del valor de $subred.
Calcula el rango de direcciones IP correspondiente a la subred obtenida.
Verifica si el rango termina con un punto decimal y, de lo contrario, agrega un punto decimal al final.
Crea un arreglo de números del 1 al 254 y lo asigna a la variable $rango_ip.
En un bucle foreach, para cada número en el rango IP:
Construye una dirección IP combinando el rango y el número actual.
Utiliza Test-Connection para verificar si el host responde a una prueba de conexión ICMP.
Si el host responde, muestra en la consola el mensaje "Host responde" seguido de la dirección IP en color verde.

## [link script 2](https://github.com/Chuyinnnnnnnnnnnn/LABORATORIOPIA/blob/master/scriptspowershell/scan_alivev2.ps1) Este script lo que hace es lo siguiente:
Obtiene la dirección IP del gateway de red.
Muestra el mensaje "==Determinando tu gateway ..." seguido de la dirección IP del gateway.
Calcula el rango de subred correspondiente al gateway.
Muestra el mensaje "==Determinando tu rango de subred ..." seguido del valor del rango de subred.
Verifica si el rango termina con un punto decimal y, de lo contrario, lo agrega.
Crea un arreglo de números del 1 al 254 para representar las direcciones IP dentro del rango de subred.
Muestra información sobre la subred actual y el rango que se va a escanear.
Escanea cada dirección IP en el rango de subred.
Utiliza Test-Connection para verificar si cada host responde a una prueba de conexión ICMP.
Si un host responde, muestra el mensaje "Host responde:" seguido de la dirección IP en color verde.
