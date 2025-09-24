


# docker compose up --build
Meaning (broken down):
docker compose
Invokes Docker Compose (v2 CLI plugin — works as docker compose, not the old docker-compose binary).
up
Tells Compose to:
Create containers for all services defined in your docker-compose.yml
Create a default network (if not exists)
Create named volumes (if not exists)
Start the containers (in foreground unless -d used)
Essentially: "Bring the whole application stack up."
--build
Forces Docker Compose to build (or rebuild) the images before starting containers — even if the image already exists locally.
It runs the docker build process using the build: section of each service in the compose file.
If you changed your Dockerfile, dependencies, or code, this ensures you get a fresh image before running.
