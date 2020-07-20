Congrats!  The launched container is now running in the background.  
To list all running containers, use the `docker ps`{execute}} command.  
It will list all running containers, the container ID, the container's 
friendly name, the image used to start the container, and the uptime.

The friendly name and ID can be used to find out information about 
individual containers.

The command docker inspect (friendly-name/container-id), provides more 
details about a running container, such as IP address.

The command docker logs (friendly-name/container-id), will display 
messages the container has written to standard error or standard out.

Your homework for today, is to obtain the IP address of the Redis 
container.
