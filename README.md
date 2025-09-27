app/__init__.py is a special Python file that marks the app directory as a Python package, allowing it to contain modules and subpackages. Its primary function is to tell the Python interpreter to treat the directory as a package for import purposes. Additionally, the file's code executes upon package import, enabling initialization, setting up the package's namespace, and defining a cleaner API for accessing its components.  




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
