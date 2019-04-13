#!/bin/bash

echo "verWPL v1.0 by Juampa @UnD3sc0n0c1d0 Rodríguez"
echo "<<Identificador de versiones de Plugins en WordPress>>"
echo ""
read -p "Ingrese el sitio web que desea analizar: " ST
echo ""
read -p "Indique el nombre del plugin: " PL
echo ""
RT="/wp-content/plugins/"
RD="/readme.txt"
RS=$(curl -s $ST$RT$PL$RD | grep -i "stable tag" | cut -d ":" -f2 | cut -d " " -f2)
echo "La versión del plugin <<"$PL">> identificada para el sitio web <<"$ST">> es: "$RS
