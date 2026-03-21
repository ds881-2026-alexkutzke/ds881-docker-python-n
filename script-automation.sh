#!/bin/bash

echo "Fazendo o build da imagem..."
docker build -f ingrid.Dockerfile -t calculadora:1.1 .
docker run -d -p 8080:8080 --name container-calculadora calculadora:1.1
echo "Executando imagem..."