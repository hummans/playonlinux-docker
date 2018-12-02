# playonlinux-docker
Scripts and Dockerfile to create a Docker-Image for running PlayOnLinux in Docker

it automatically pre-installs wine version 2.12-staging (compatible for GTA Vice City).
it creates automatically the startup links for "GTA Vice City" and "GTA Vice City Multiplayer" if the binaries are in drive_c.

## install, setup and run
1.) git clone https://github.com/mgafner/playonlinux-docker.git
2.) cd playonlinux-docker
3.) ./create.sh
4.) ./play.sh

optional, after first run:
5.) copy binaries for "GTA Vice City" and "GTA Vice City Multiplayer" to drive_c
6.) start again with ./play.sh
