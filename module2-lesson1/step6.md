Joe has been working with Redis as a background process. Joe wonders how 
containers work with foreground processes, such as ps or bash.

Previously, Joe used the -d to execute the container in a detached, 
background, state. Without specifying this, the container would run in 
the foreground. If Joe wanted to interact with the container 
(for example, to access a bash shell) he could use the options -it.

As well as defining whether the container runs in the background or 
foreground, certain images allow you to override the command used to 
launch the image. Being able to replace the default command makes it 
possible to have a single image that can be re-purposed in multiple ways. 
For example, the Debian image can either run OS commands, or run an 
interactive bash prompt using /bin/bash.

The command `docker run debian ps`{{execute}} launches a Debian container, 
and executes the command ps to view all the processes running in the 
container.

Using `docker run -it debian bash`{{execute}} allows Joe to get access to a bash 
shell inside of a container.

Your assignment for today, is to access a Debian bash shell inside
a container.
