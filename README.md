Savage DRX Server for Docker

Dockerhub IMAGE:  [iamskoot/savagedrxserver](https://hub.docker.com/r/iamskoot/savagedrxserver)

You can get the client from  [Community-server.info](https://community-server.info/client/drx)

Optional Enviornment Variables

ADMINPASS   Password for remote admin access  
VIPPASS     Password for VIP slot  
MOTD1       Message of the Day line  
NAME        Server Name  
MAXCLIENT   Maximum clients 
PASSWORD    Server Join Password 
PORT        Server Port 

Maps Used
http://fa.ubergeekinc.com/Maps/

Quick launch
```
docker run -dti -p 11235:11235 -p 11235:11235/udp --name SavageDRXServer iamskoot/savagedrxserver
```

Docker-compose YAML

```
version: "3"
services:

  savage:
    image:  iamskoot/savagedrxserver:latest
    ports:
      - "11235:11235"
      - "11235:11235/udp"
    environment:
      #ADMINPASS: "D0ck3r!"                                     #Default Admin Password
      #VIPPASS: "VIP"                                           #Default VIP Password
      #MOTD1: "Welcome to the Docker Hosted Dedicated Server"
      #NAME: "Docker Savage Server"
      #MAXCLIENT: 64
      #PASSWORD: ""
      #PORT: 11235                 # This should always match the inside ports listed above
```
    
Release History
1.1
 - Added Maxclients, password, and port variables

1.0
  - Initial build