#!/bin/bash
#+++++++++++++++++++++++++++++
#title           : iniciarLogs_20171130.sh
#description     : Crea El directorio para  log del Script iniciarServidores.sh
#author          : IrvingBrito
#date            : 2017-11-30
#++++++++++++++++++++++++++++++
#!/bin/bash

DIRECTORIO="/var/log/MiWeb/"


	if [ -d $DIRECTORIO ];
		then
			echo "Sí existe $DIRECTORIO"
		else
			echo "No existe $DIRECTORIO "
			echo "Se creara el directorio $DIRECTORIO"
			mkdir $DIRECTORIO
			echo "se creo $DIRECTORIO"
	fi
