# LinuxScripts/Developers


#### cabeceraDev.sh
######	Uso
------------
La ejecución de este archivo genera un nuevo archivo con una cabecera que posee esta estructura.

```
	#!/bin/bash
	#+++++++++++++++++++++++++++++
	#title           :nombreArchivo_AAAAmmdd.tipoArchivo
	#description     :descripcion
	#author          :autor
	#date            :dd-mm-AAAA
	#++++++++++++++++++++++++++++++
```
Tambien genera un Archivo denomidano cabeceraDev.log donde se registraran
 todos los archivos creados con este Script, este archivo log se almacena en el
 mismo directorio donde se ejecutor el cabeceraDev.sh, los datos registrados en 
el log son los siguientes:

```
AAAA-mm-dd      |       nombreArchivo.tipoArchivo             |      rutaAlamcenamiento
```
La estructura del Script es la sigueinte, puede recibir hasta 5 parametros
separador por un espacio en blanco:
1. nombreArchivo	*"Es el nombre que tendra el archivo generado"*
2. rutaAlmacenamiento	*"si se omite este parametro el archivo se creara por defencto donde se ejecute el Script"*
3. tipoArchivo		*"Sera la extensión de archivo que queramos colocar, si se omite este parametro el archivo de salida sea un .txt"*
4. descripcion		*"es una breve reseña del objetivo del archivo, debe ir entre "" comillas dobles para indicar que es un literal"*
5. autor		*"sera el nombre del creador del nuevo archivo, si se omite se usara el nombre de usuario que este ejecutando el Script"*.
	
```
./cabecera.sh nombreArchivo [rutaAlmacenamiento] [tipoArchivo] [descripcion] [autor]
```

###### Ejemplo
--------------

Si queremos crear un archivo index_20171129.php, almacenarlo en /var/wwww/html/MiProyectoPhp/,  bastaria con ejecutar el script de la siguiente forma.

```
./cabecera.sh index /var/www/html/ php "Archivo index de MiproyectoPhp" ibrito
```


 
