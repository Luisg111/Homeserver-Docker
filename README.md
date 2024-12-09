# Homeserver

this is the setup of my private homeserver

## Features
- [Syncthing](https://syncthing.net/)
- [Beancount](https://github.com/beancount/beancount) accounting with [Fava frontend](https://github.com/beancount/fava)
- [PiHole](https://pi-hole.net/) for ad blocking and local DNS
- [Traefik](https://traefik.io/traefik/) as reverse proxy
- [Portainer](https://www.portainer.io/) for container management
- [homemade "smarthome" integration for my pager](https://github.com/Luisg111/melderserver) (volunteer fire department)
- [Weather station server](https://github.com/Luisg111/Wetterstation_server)
- [restic](https://restic.net/) for automated backups


## Usage
everything is setup to use docker containers.

Some containers have secrets that need to be set. These containers contain an empty .envtemplate file. Copy this file and name it .env. Enter the required secrets there.

## about this repo
this repo (and most of the other repos from me here on Github) does not have much history because I had to recreate it before uploading it to Github.
It was previously hosted in a Gogs instance on my homeserver, but I decided to shut it down and moved all repos to Github instead.
I resetted all repos because they contained personal information and credentials that do not belong in a public repo.
