#!/bin/bash
# This file is part of playonlinux-docker
# https://github.com/mgafner/playonlinux-docker
#
# This is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this file.  If not, see <http://www.gnu.org/licenses/>.

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
if [ ! -d "$SCRIPTPATH/config" ]; then
  mkdir -p "$SCRIPTPATH/config"
fi
docker run -it --privileged --device /dev/dri/card0:/dev/dri/card0 -e DISPLAY -v $SCRIPTPATH/config:/home/wine/.PlayOnLinux:rw -v /tmp/.X11-unix:/tmp/.X11-unix:rw -v /dev/snd:/dev/snd:rw --hostname playonlinux-docker playonlinux
