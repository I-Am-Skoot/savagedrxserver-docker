Savage DRX Server for Docker

Dockerhub IMAGE:  iamskoot/savagedrxserver

You can get the client from  https://community-server.info/client/drx

Optional Enviornment Variables

ADMINPASS   Password for remote admin access  
VIPPASS     Password for VIP slot  
MOTD1       Message of the Day line  
NAME        Server Name  


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
```
    
