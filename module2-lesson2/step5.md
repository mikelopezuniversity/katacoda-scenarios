After writing your Dockerfile you need to use docker build to turn it into an image. The build command 
takes in a directory containing the Dockerfile, executes the steps and stores the image in your local 
Docker Engine. If one fails because of an error then the build stops.  The syntax
for the command, is docker build options location of Dockerfile (use . for current directory)

# Task

Using the docker build command, build the image. You can give the image a friendly name by using the -t name option.

# Protip

You can use `docker images`{{execute}} to see a list of the images on your local machine.

