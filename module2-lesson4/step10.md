# Step 3 – Running the Container

Once you have mathapp, you can start a container with:

`docker run -it --rm -p 8010:8010 -v $PWD/src:/go/src/mathapp mathapp`{{execute}}

Let’s break down the above command to see what it does.

- The docker run command is used to run a container from an image,
- The -it flag starts the container in an interactive mode (tie it to the current shell),
- The --rm flag cleans out the container after it shuts down,
- The --name mathapp-instance names the container mathapp-instance,
- The -p 8010:8010 flag maps port 8010 on the host system, to port 8010 in the 
continer
- The -v $PWD/src:/go/src/mathapp is more involved. It maps the src/ directory 
from the machine to /go/src/mathapp in the container. This makes the development 
files available inside and outside the container, and
- The mathapp part specifies the image name to use in the container.

Executing the above command starts the Docker container. This container exposes 
your application on port 8010. It also rebuilds your application automatically 
whenever you make a change.
