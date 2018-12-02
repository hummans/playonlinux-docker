# playonlinux-docker
Scripts and Dockerfile to create a Docker-Image for running PlayOnLinux in Docker

it automatically pre-installs wine version 2.12-staging (compatible for GTA Vice City).
it creates automatically the startup links for "GTA Vice City" and "GTA Vice City Multiplayer" if the binaries are in drive_c.

## install, setup and run
* git clone https://github.com/mgafner/playonlinux-docker.git
* cd playonlinux-docker
* ./create.sh
* ./play.sh

optional, after first run:
* copy binaries for "GTA Vice City" and "GTA Vice City Multiplayer" to drive_c
* start again with ./play.sh
