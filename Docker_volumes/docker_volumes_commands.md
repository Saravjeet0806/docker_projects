docker volume create v1
docker volume  ls
docker volume inspect v1
docker volume rm v1
docker volume prune -- deletes unused volumes; //stop and kill the container to prune volumes if they are not deleting.


No, Docker does not allow adding a new volume to a running container directly. Volumes must be defined when the container is created. However, there are ways to achieve the goal of mounting multiple volumes, including adding another volume to the same container. We have to recreate the container with both volumes.  
eg-
docker run -d \--name my-container \ -v v1:/data1 \ -v v2:/data2 \ nginx
