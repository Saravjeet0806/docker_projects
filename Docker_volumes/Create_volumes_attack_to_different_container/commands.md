1. docker volume create v1
2. docker container run --name c1 -e MYSQL_ALLOW_EMPTY_PASSWORD=true -v v1:/var/lib/mysql mysql
3. docker container exec -it c1 bash
4. docker container rm -f c1
5. docker container run --name c2 -e MYSQL_ALLOW_EMPTY_PASSWORD=true -v v1:/var/lib/mysql mysql
6. docker container exec -it c1 bash 
7. show databases ;