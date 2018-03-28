@echo off
cd Docker
docker build -t mywebserverimage:v1 .
docker stop mywebservercontainer
docker rm mywebservercontainer
docker run -d -p 8080:80 --name mywebservercontainer mywebserverimage:v1
cd ..
echo Try localhost:8080 in your browser