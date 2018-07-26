# Example: Docker-Compose running 2 Docker Containers

In addition to the Rails app, this app also contains a PostgreSQL service running in a 2nd docker container.

Git clone this repo. There is no need to run `bundle install` on this repo - why?

Use `docker-compose build` to build the docker images, and `docker-compose up` to start the whole thing. Then, go over to `http://localhost:3000` or `http://192.168.99.100:3000` (W10 Home) to access the app.

 Examine `Dockerfile` and `docker-compose.yml` and `config/database.yml` to see how the 2 docker containers are linked.