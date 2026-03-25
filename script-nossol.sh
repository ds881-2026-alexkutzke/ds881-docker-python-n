echo "Criando o container"

docker build -f joao-nossol.Dockerfile -t joao-nossol-python .

docker run --rm -d -p 8080:8080 --name joao-nossol-container joao-nossol-python 