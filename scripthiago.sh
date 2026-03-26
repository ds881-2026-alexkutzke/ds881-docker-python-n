#!/bin/bash

echo "Rodando o app..."

docker build -f thiago-zambon.Dockerfile -t thiago-zambon-python .

docker run --rm -d -p 8080:8080 --name thiago-zambon-python-container thiago-zambon-python