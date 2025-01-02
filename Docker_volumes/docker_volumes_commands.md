docker volume create v1
docker volume  ls
docker volume inspect v1
docker volume rm v1
docker volume prune -- deletes unused volumes; //stop and kill the container to prune volumes if they are not deleting.
docker run -d --name my-container --mount source=my-volume,target=/path/in/container my-image //to attach a volume to container
docker system df -- to check size of each resource
docker system df -v -- to get detailed info of memory used by each resource
 


No, Docker does not allow adding a new volume to a running container directly. Volumes must be defined when the container is created. However, there are ways to achieve the goal of mounting multiple volumes, including adding another volume to the same container. We have to recreate the container with both volumes.  
eg-
docker run -d \--name my-container \ -v v1:/data1 \ -v v2:/data2 \ nginx


Yes, multiple containers can use the same named volume in Docker. By mounting the same volume (e.g., my-volume) into different containers, they can share data. For example, if both containers areunted to /data, any changes made by one container will be visible to the other. Volumes persist independently of containers, so even if a container is removed, the data remains intact and can be reused by other containers. However, caution is needed when both containers are writing to the same data to avoid conflicts or data corruption.