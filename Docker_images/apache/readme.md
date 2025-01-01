docker build -t apache-image . --build image

docker run -dit --name my-apache-container -p 8080:80 my-apache-image --run container

docker exec -it apache-image /bin/bash  --to login into container