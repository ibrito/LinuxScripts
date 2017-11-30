#!/bin/bash
#+++++++++++++++++++++++++++++
#title           : iniciarServidores_20171130.sh
#description     : Inicia los servicios de Httpd(apache) y Mysql
#author          : Irving Brito
#date            : 2017-11-30
#++++++++++++++++++++++++++++++

FACTUAL=$(date +"%Y_%m_%d_%S_%N")
S_APACHE="/var/log/MiWeb/s_apache_$(date +"%Y_%m_%d").log"
S_MYSQL="/var/log/MiWeb/s_mysql_$(date +"%Y_%m_%d").log"

echo "Script para iniciar servicios de APACHE
***********************
*******$FACTUAL*******
***********************
==========================" > $S_APACHE
sleep 1s
service httpd start >> $S_APACHE
echo "Se inicio El servidor Apache con este resultado" >> $S_APACHE
sleep 3s
service httpd status >> $S_APACHE
echo "==========================" >> $S_APACHE

echo "Script para iniciar servicios de  MySQL
***********************
*******$FACTUAL*******
***********************
==========================" > $S_MYSQL
sleep 1s
service mysqld start >> $S_MYSQL
echo "Se inicio El servidor MySql con este resultado" >> $S_MYSQL
sleep 3s
service mysqld status >> $S_MYSQL
echo "==========================" >> $S_MYSQL
