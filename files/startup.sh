#!/bin/bash
[[ ! -z "$ADMINPASS" ]] && sed -i "s/XXADMINPASSXX/$ADMINPASS/g" /var/games/savage-drx/game/startup.cfg || sed -i "s/XXADMINPASSXX/D0ck3r!/g" /var/games/savage-drx/game/startup.cfg
[[ ! -z "$VIPPASS" ]] && sed -i "s/XXVIPPASSXX/$VIPPASS/g" /var/games/savage-drx/game/startup.cfg || sed -i "s/XXVIPPASSXX/VIP/g" /var/games/savage-drx/game/startup.cfg
[[ ! -z "$MOTD1" ]] && sed -i "s/XXMOTD1XX/$MOTD1/g" /var/games/savage-drx/game/startup.cfg || sed -i "s/XXMOTD1XX/Welcome to the Docker Hosted Dedicated Server/g" /var/games/savage-drx/game/startup.cfg
[[ ! -z "$NAME" ]] && sed -i "s/XXNAMEXX/$NAME/g" /var/games/savage-drx/game/startup.cfg || sed -i "s/XXNAMEXX/Docker Savage Server/g" /var/games/savage-drx/game/startup.cfg
[[ ! -z "$MAXCLIENT" ]] && sed -i "s/XXMAXCLIENTXX/$MAXCLIENT/g" /var/games/savage-drx/game/startup.cfg || sed -i "s/XXMAXCLIENTXX/64/g" /var/games/savage-drx/game/startup.cfg
[[ ! -z "$PASSWORD" ]] && sed -i "s/XXPASSWORDXX/$PASSWORD/g" /var/games/savage-drx/game/startup.cfg || sed -i "s/XXPASSWORDXX//g" /var/games/savage-drx/game/startup.cfg
[[ ! -z "$PORT" ]] && sed -i "s/XXPORTXX/$PORT/g" /var/games/savage-drx/game/startup.cfg || sed -i "s/XXPORTXX/11235/g" /var/games/savage-drx/game/startup.cfg

cd /var/games/savage-drx
./silverback.bin dedicated_server 1
