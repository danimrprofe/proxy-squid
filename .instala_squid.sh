#!/bin/bash

config_folder=/etc/squid

if [ -z $1 ]
then
	echo "Uso del comando:"
	echo "---------------"
	echo "instala_squid.sh"
	echo "Ejemplos:"
  echo "sh instala_squid"
  echo "./instala_squid.sh"
else
  
  # Instalacion de squid
  
  read -p "instalación de squid" parada

  sudo apt $silent install squid -y
    
  # Borramos configuraciones anteriores

  if [[ ! -d $config_folder ]]; then
      mkdir $config_folder
  else
      rm -rf $config_folder/*
  fi

  cp -R * $config_folder
 
 # Reiniciar servicios
 
  read -p "reinicio de servicios" parada
  sudo systemctl restart squid
  
fi
