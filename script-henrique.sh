echo "Subindo Container"

docker build -f henrique.Dockerfile -t henrique-app:v1 .

docker run --rm -d -p 8080:8080 --name calculadora-henrique-docker henrique-app:v1