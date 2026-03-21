#!/bin/bash

echo "Iniciando container..."

docker build -f kauan-macedo.Dockerfile -t kauan-macedo-python .

docker run --rm -d -p 8080:8080 --name kauan-macedo-python-container kauan-macedo-python