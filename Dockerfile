FROM ubuntu:22.04
LABEL maintainer="scott@ubergeekinc.com"
COPY files/World.zip /tmp/World.zip
COPY files/savage-drx_2023.03.29-1.deb /tmp/savage-drx_2023.03.29-1.deb
RUN  apt-get update -y && apt-get upgrade -y && apt-get install unzip -y && apt-get install /tmp/savage-drx_2023.03.29-1.deb -y && unzip -o /tmp/World.zip -d /var/games/savage-drx/game/world/
COPY files/startup.cfg /var/games/savage-drx/game/startup.cfg
COPY files/rotation.cfg /var/games/savage-drx/game/rotation.cfg
COPY files/autoexec.cfg /var/games/savage-drx/game/autoexec.cfg
COPY files/startup.sh /root/startup.sh
EXPOSE 11235
CMD ["bash","/root/startup.sh"]
