echo "Iniciando build"

docker build -f milena.Dockerfile -t milena-image:1.1 .

echo "Build finalizado"

echo "Executando imagem"

docker run -d -p 8080:8080 --name milena-container milena-image:1.1