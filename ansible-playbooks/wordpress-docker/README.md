# Wordpress Docker

## Getting started with Docker

```zsh
docker-compose up -d
```

If you are using Docker Machine, you can run the command `docker-machine ip MACHINE_VM` to get the machine address, and then open `http://MACHINE_VM_IP:8000` in a web browser.

Port: `8000`

eg. `http://localhost:8000`

### Prerequesites

- [Docker Compose](https://docs.docker.com/compose/install/)


### Resources

- [Docker compose wordpress](https://docs.docker.com/compose/wordpress/)
- [How To Install WordPress With Docker Compose](https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose)

### Shutting down

keep the database: `docker-compose down`
kill everything: `docker-compose down --volumes`

### Install pluginss

`brew install wp-cli`

`wp plugin install --activate`

### Online demo

https://woocommercedemo.cloudaccess.host/wp-login