

With the Docker image configured and having defined which ports we want accessible, we now need to define 
the command that launches the application.

The CMD line in a Dockerfile defines the default command to run when a container is launched. If the 
command requires arguments then it's recommended to use an array, for example ["cmd", "-a", "arga value", "-b", "argb-value"], 
which will be combined together and the command cmd -a "arga value" -b argb-value would be run.

# Task

The command to run NGINX is nginx -g daemon off;. Set this as the default command in the Dockerfile.

# Protip

An alternative approach to CMD is ENTRYPOINT. While a CMD can be overridden when the container starts, an ENTRYPOINT defines a command which can have arguments passed to it when the container launches.

In this example, NGINX would be the entrypoint with -g daemon off; the default command.

