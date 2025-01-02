docker run -d --name mysql-container -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes mysql-image  //to run the container
docker exec -it mysql-container bash //to login into container