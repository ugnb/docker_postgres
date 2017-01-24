# Docker postgres:latest based image
This image will restore postgres database dump when container is run.
## Usage
Put postgres database dump named `latest.dump` in the same directory with Dockerfile.

Build image:

`docker build -t <IMAGE_NAME> .`

Run container

`docker run --rm -it -e POSTGRES_DB=<DATABASE_NAME> -e POSTGRES_PASSWORD=<POSTGRES_PASSWORD> -p <PORT_ON_HOST>:5433 <IMAGE_NAME>`

## Usage with healthcheck
Docker compose example with healthcheck:

```
version: '2.1'

services:
  web:
    build: .
    ports:
      - "80:5000"
    depends_on:
      db:
        condition: service_healthy
    environment:
      ASPNETCORE_ENVIRONMENT: "Production"
    links:
      - db
  db:
    image: <YOUR_POSTGRES_IMAGE>:latest
    environment:
      POSTGRES_DB: "dbname"
      POSTGRES_PASSWORD: "postgres"
```
