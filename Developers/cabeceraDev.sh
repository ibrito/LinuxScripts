#!/bin/bash
#+++++++++++++++++++++++++++++
#title           :cabeceras.sh
#description     :Crea la ceberea para Script Developers
#author          :Irving Brito @ibritosistema
#date            :24-12-2017
#++++++++++++++++++++++++++++++
# $1 -> nombre del archivo
# $2 -> ruta de almacenamiento
# $3 -> tipo de archivo
# $4 -> descripcion
# $5 -> autor

 
NAME_F=$1_`date +%Y%-m%-d`
FECHA_F=`date +'%Y-%m-%d'`


if [ -z "$2" ]
 then
   RUTA=`pwd`'/'
 else 
   RUTA=$2
fi

if [ -z "$3" ]
 then
   EXTEN="txt"
 else
  
   EXTEN=$3

fi

if [ -z "$4" ]
 then
   DESCRIPCION="Sin descripcion"
 else
   DESCRIPCION=$4
fi


if [ -z "$5" ]
 then
   AUTOR=`whoami`
 else
   AUTOR=$5
fi


NAME_F=$NAME_F.$EXTEN

touch $RUTA$NAME_F

echo "#!/bin/bash
#+++++++++++++++++++++++++++++
#title           : $NAME_F
#description     : $DESCRIPCION
#author          : $AUTOR
#date            : $FECHA_F
#++++++++++++++++++++++++++++++" > $RUTA$NAME_F

echo "Se ha creado un SCRITP con nombre $NAME_F en: $RUTA"
touch cabeceraDev.log
echo "$FECHA_F	|	$NAME_F		|	$RUTA" >> cabeceraDev.log
