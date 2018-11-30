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

FROM ubuntu
MAINTAINER Martin Gafner <gafner@puzzle.ch>

RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y sudo wine32 playonlinux

ENV USER wine
ENV UID 1000
ENV GID 1000
ENV HOME /home/$USER
ENV DISPLAY :0
ENV HOSTNAME playonlinux-docker

RUN mkdir -p $HOME
RUN echo "$USER:x:$UID:$GID:$USER,,,:$HOME:/bin/bash" >> /etc/passwd
RUN echo "$USER:x:$UID:" >> /etc/group
RUN echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER
RUN chmod 0440 /etc/sudoers.d/$USER
RUN chown $UID:$GID -R $HOME
RUN usermod -a -G video $USER

USER $USER

ENTRYPOINT ["playonlinux"]
 
