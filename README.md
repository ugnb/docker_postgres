# Docker postgres:latest based image
## Usage

Put postgres database dump named `latest.dump` in the same directory with Dockerfile.

Build image:

`docker build -t <IMAGE_NAME> .`

Run container

`docker run --rm -it -e POSTGRES_DB=<DATABASE_NAME> -e POSTGRES_PASSWORD=<POSTGRES_PASSWORD> -p <PORT_ON_HOST>:5433 <IMAGE_NAME>`
