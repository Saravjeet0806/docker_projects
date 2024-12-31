docker volume create v1
docker container run --name c1 -e MYSQL_ALLOW_EMPTY_PASSWORD=true -v v1:/var/lib/mysql mysql
docker container exec -it c1 bash