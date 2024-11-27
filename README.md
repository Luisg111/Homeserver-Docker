# Homeserver

this is the setup of my private homeserver

## Features
- Syncthing
- Beancount accounting with fava frontend
- PiHole
- Gogs Git Server
- Weather station server
- Portainer for container management
- Samba Fileserver
- server for my pager (volunteer fire department)

## Usage
everything is setup to use docker containers.
They can be started using the up.sh file.
Credentials and other sensitive data is stored in a .env file called creds (see empty example_creds.env).