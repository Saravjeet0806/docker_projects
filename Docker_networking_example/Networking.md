Networking example scenario 
 1. create a login container using docker run -d --name login nginx:latest
 2. docker exec -it login /bin/bash = for login and install the ping command
 3. create logout container
 4. docker ps = to see containers
 5. docker inspect (container_name)
 6. create a network call secure network using - docker network create secure-network 
 7. docker run -d --name finance --network=secure-network nginx:latest and inspect finance
 8. to create docker container using host networking use - docker run -d --name hsot-demo --network=host nginx:latest