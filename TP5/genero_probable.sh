#!/bin/bash

# INSTALAR JQ (sudo apt-get update y tambien sudo apt-get install jq)

echo -e "Ingrese un nombre"
read -p "[>]: " nombre

respuesta=$(curl -s "https://api.genderize.io/?name=${nombre}")

genero=$(echo $respuesta | jq -r '.gender')


if [ "$genero" == "null" ]; then
    traducido="Desconocido"
elif [ "$genero" == "male" ]; then
    traducido="Masculino"
else
    traducido="Femenino"
fi

if [ "$genero" != "null" ]; then
    echo "El nombre ingresado: '$nombre' es de genero $traducido."
else
    echo "EL nombre'$nombre' no corresponde a ningún genero."
fi