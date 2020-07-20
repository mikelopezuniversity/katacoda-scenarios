After working with containers for a few days, Joe realises that the 
data stored keeps being removed when he deletes and re-creates a 
container. Joe needs the data to persist when containers are re-created.

Containers are designed to be stateless. Binding directories 
(also known as volumes) is done using the option 
-v host-dir:container-dir. When a directory is mounted, the files which 
exist in that directory on the host can be accessed by the container, 
and any data changed/written to the directory inside the container will 
be stored on the host. This allows you to upgrade or change containers 
without losing your data.

Using the Docker Hub documentation for Redis, Joe has investigated that 
the official Redis image stores logs and data into a /data directory.

Any data which needs to be saved on the Docker Host, and not inside 
containers, should be stored in /opt/docker/data/redis.

The complete command to solve the task is `docker run -d --name redisMapped -p 6379 -v /opt/docker/data/redis:/data redis`{execute}

Your assignment today, is to launch another Redis container.  Have it run in the background, bind container port 6379 to a random, available, host port, and mount the host directory /opt/docker/data/redis to the directory /data in the container.  You may name it whatever you wish.

<b>PROTIP</b>

Docker allows you to use $PWD as a placeholder for the current directory.
