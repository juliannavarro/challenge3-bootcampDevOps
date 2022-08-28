!/bin/bash
echo -e "\nCreando y corriendo el contenedor\n"
docker run -d --name servidor_web -p 8181:80 nginx
echo -e "\nListado de los contenedores corriendo\n"
docker ps
echo -e "\nListado de las imágenes\n"
docker images
echo -e "\nStopeando el contenedor\n"
docker stop servidor_web
echo -e "\Eliminando el contenedor\n"
docker rm servidor_web
echo -e "\Listando los contenedores\n"
docker ps


docker rmi nginx
docker ps -a