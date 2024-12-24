# Docker CLI Commands: Notes

## Container Management

### `attach`
Attach local standard input, output, and error streams to a running container.
```bash
docker attach <container_name_or_id>
```

### `commit`
Create a new image from a container's changes.
```bash
docker commit <container_name_or_id> <new_image_name>
```

### `cp`
Copy files or folders between a container and the local filesystem.
```bash
docker cp <container_name_or_id>:<container_path> <local_path>
```

### `create`
Create a new container without starting it.
```bash
docker create <image_name>
```

### `diff`
Inspect changes to files or directories on a container's filesystem.
```bash
docker diff <container_name_or_id>
```

### `events`
Get real-time events from the Docker server.
```bash
docker events
```

### `export`
Export a container's filesystem as a tar archive.
```bash
docker export <container_name_or_id> -o <file_name.tar>
```

## Image Management

### `history`
Show the history of an image.
```bash
docker history <image_name>
```

### `import`
Import the contents from a tarball to create a filesystem image.
```bash
docker import <file_name.tar> <new_image_name>
```

### `inspect`
Return low-level information on Docker objects (containers, images, networks, etc.).
```bash
docker inspect <object_name_or_id>
```

### `load`
Load an image from a tar archive or STDIN.
```bash
docker load < <file_name.tar>
```

### `rmi`
Remove one or more images.
```bash
docker rmi <image_name_or_id>
```

### `save`
Save one or more images to a tar archive (streamed to STDOUT by default).
```bash
docker save -o <file_name.tar> <image_name>
```

### `tag`
Create a tag for the target image that refers to the source image.
```bash
docker tag <source_image> <target_image>
```

## Container Runtime Management

### `kill`
Kill one or more running containers.
```bash
docker kill <container_name_or_id>
```

### `logs`
Fetch the logs of a container.
```bash
docker logs <container_name_or_id>
```

### `pause`
Pause all processes within one or more containers.
```bash
docker pause <container_name_or_id>
```

### `port`
List port mappings or a specific mapping for a container.
```bash
docker port <container_name_or_id>
```

### `rename`
Rename a container.
```bash
docker rename <old_name> <new_name>
```

### `restart`
Restart one or more containers.
```bash
docker restart <container_name_or_id>
```

### `rm`
Remove one or more containers.
```bash
docker rm <container_name_or_id>
```

### `start`
Start one or more stopped containers.
```bash
docker start <container_name_or_id>
```

### `stats`
Display a live stream of resource usage statistics for containers.
```bash
docker stats
```

### `stop`
Stop one or more running containers.
```bash
docker stop <container_name_or_id>
```

### `top`
Display the running processes of a container.
```bash
docker top <container_name_or_id>
```

### `unpause`
Unpause all processes within one or more containers.
```bash
docker unpause <container_name_or_id>
```

### `update`
Update the configuration of one or more containers.
```bash
docker update <container_name_or_id> --memory <memory_limit>
```

### `wait`
Block until one or more containers stop, then print their exit codes.
```bash
docker wait <container_name_or_id>
```
