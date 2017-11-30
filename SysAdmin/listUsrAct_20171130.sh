#!/bin/bash
#+++++++++++++++++++++++++++++
#title           : listUsrAct_20171130.sh
#description     : Lista los Usuarios con sesiones activas en el sistema
#author          : IrvingBrito
#date            : 2017-11-30
#++++++++++++++++++++++++++++++


echo "Inicio Script"
who -b
echo " =====================| Usuarios Activos |========================== "
who -uH  #Lista de usuarios Activos
echo " =================================================================== "
echo "Fin Script"
