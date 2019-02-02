#/bin/bash
# 
# Script para permitir la navegación de un aula
# Se eliminará el rango del aula de /etc/squid/aulas-prohibidas.txt
# Indicar el número de aula al ejecutar el script

if [ $# -ne 1 ]; then
echo "Es necesario introducir el numero de aula"
exit -1
fi
subred=10.0.$1.0/24
echo Permitir navegar aula $1, subred $subred
patron=`echo /10.0.$1.0/d`
cat /etc/squid/aulas-prohibidas.txt | sed -e $patron > /tmp/temp.txt 
cat /tmp/temp.txt > /etc/squid/aulas-prohibidas.txt
/etc/init.d/squid reload
echo Subredes denegadas:
cat /etc/squid/aulas-prohibidas.txt
