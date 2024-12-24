# Docker Networking Example Scenario

## Steps to Create and Manage Docker Containers

### 1. Create a Login Container
Run the following command to create a login container using the latest `nginx` image:
```bash
docker run -d --name login nginx:latest
```

### 2. Access the Login Container and Install Ping Command
To log in to the container and install the `ping` command:
```bash
docker exec -it login /bin/bash
```
Inside the container, use the appropriate package manager to install `ping` (e.g., `apt-get` for Debian-based images):
```bash
apt-get update && apt-get install -y iputils-ping
```

### 3. Create a Logout Container
Run the following command to create another container named `logout`:
```bash
docker run -d --name logout nginx:latest
```

### 4. List Running Containers
To view all running containers:
```bash
docker ps
```

### 5. Inspect a Container
Inspect the details of a specific container (e.g., `login`):
```bash
docker inspect login
```

### 6. Create a Secure Network
Create a custom Docker network named `secure-network`:
```bash
docker network create secure-network
```

### 7. Run a Container on the Secure Network
Create a container named `finance` connected to the `secure-network`:
```bash
docker run -d --name finance --network=secure-network nginx:latest
```
Inspect the `finance` container:
```bash
docker inspect finance
```

### 8. Create a Container Using Host Networking
Run a container named `host-demo` using the host networking mode:
```bash
docker run -d --name host-demo --network=host nginx:latest
