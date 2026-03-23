#!/bin/bash

docker build -f joao-fanti.Dockerfile -t joao-fanti .

docker run --rm -d -p 8080:8080 --name joao-fanti-container joao-fanti