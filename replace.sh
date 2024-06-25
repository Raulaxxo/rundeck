#!/bin/bash

# Assign the filename
filename="docker-compose.yml"

# Take the search string
read -p "Ingresa texto a reemplazar: " search

# Take the replace string
read -p "Ingresa nuevo texto: " replace

if [[ $search != "" && $replace != "" ]]; then
sed -i "s/$search/$replace/" $filename
fi
