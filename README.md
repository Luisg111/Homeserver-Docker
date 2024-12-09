# Homeserver

this is the setup of my private homeserver

## Features
- Syncthing
- Beancount accounting with fava frontend
- PiHole
- Weather station server
- Portainer for container management
- server for my pager (volunteer fire department)
- Traefik as reverse proxy

## Usage
everything is setup to use docker containers.
You can use the top level compose file to start everything or start the components individually by using the corresponding compose file.

Some containers have secrets that need to be set. They contain an empty .envtemplate file.
Copy this file and name it .env. Enter the required secrets there.