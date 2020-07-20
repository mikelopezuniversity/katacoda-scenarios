Your first task is to identify the name of the Docker Image that is 
configured to run Redis. With Docker, all containers are started based 
on a Docker Image. These images contain everything required to launch 
the process. The host doesn't require any configuration, or dependencies.

Joe knows he can find existing images at https://registry.hub.docker.com, 
or by using the command docker search name. For example, to find an image 
for Redis, the command would be, `docker search redis`{execute}.

Using the search command, Joe has found that the Redis Docker Image is 
called redis, and he wants to run the latest release. Since Redis is a 
database, he wants to run it as a background service while he continues 
to work.

# TASK

To complete this step, you must launch a container in the background 
running an instance of Redis based on the official image.

To accomplish this,you would use the CLI command, docker run.  The 
syntax for the command, is docker run options image-name:version-tag.
By default, Docker will run the latest version available.  If a specific 
version was required, it would be specified after the : in the image name.  
So to run say version 3.2 of the official Redis image, the command would 
be docker run redis:3.2.

Also by default, Docker will run the image in the foreground. Since Joe 
wants it to run in the background, he would use the -d option.

Your assignment today is to launch a container, running the latest 
official Redis image, in the background.
