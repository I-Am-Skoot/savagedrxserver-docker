#!/bin/bash
[[ ! -z "$ADMINPASS" ]] && sed -i "s/XXADMINPASSXX/$ADMINPASS/g" /var/games/savage-drx/game/startup.cfg || sed -i "s/XXADMINPASSXX/D0ck3r!/g" /var/games/savage-drx/game/startup.cfg
[[ ! -z "$VIPPASS" ]] && sed -i "s/XXVIPPASSXX/$VIPPASS/g" /var/games/savage-drx/game/startup.cfg || sed -i "s/XXVIPPASSXX/VIP/g" /var/games/savage-drx/game/startup.cfg
[[ ! -z "$MOTD1" ]] && sed -i "s/XXMOTD1XX/$MOTD1/g" /var/games/savage-drx/game/startup.cfg || sed -i "s/XXMOTD1XX/Welcome to the Docker Hosted Dedicated Server/g" /var/games/savage-drx/game/startup.cfg
[[ ! -z "$NAME" ]] && sed -i "s/XXNAMEXX/$NAME/g" /var/games/savage-drx/game/startup.cfg || sed -i "s/XXNAMEXX/Docker Savage Server/g" /var/games/savage-drx/game/startup.cfg

cd /var/games/savage-drx
./silverback.bin dedicated_server 1
