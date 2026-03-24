echo "subindo container"

docker build -f pedro.Dockerfile -t pedro-app:v1.2 .

docker run --rm -d -p 8080:8080 --name container-pedro pedro-app:v1.2