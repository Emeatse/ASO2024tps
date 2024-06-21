#!/bin/bash

echo -e "Como quieres jugar?:\n1: piedra\n2: papel\n3: tijera"
while [[ $jugador -lt 1 || $jugador -gt 3 ]];
do
read -p "[>]: " jugador

if [[ $jugador -lt 1 || $jugador -gt 3 ]]; then
    echo -e "\nOpcion no valida"
fi
done

programa=$(( ( RANDOM % 3 ) + 1 ))


opciones=("Piedra" "Papel" "Tijera") 
jugador_texto=${opciones[$((jugador-1))]}
programa_texto=${opciones[$((programa-1))]}


echo -e "Usuario: $jugador_texto vs Programa: $programa_texto"


if [ $jugador -eq $programa ]; then
    echo "Empataron!"
elif [ $jugador -eq 1 ] && [ $programa -eq 3 ] || [ $jugador -eq 2 ] && [ $programa -eq 1 ] || [ $jugador -eq 3 ] && [ $programa -eq 2 ]; then
    echo "¡Ganaste!"
else
    echo "¡Perdiste!"
fi