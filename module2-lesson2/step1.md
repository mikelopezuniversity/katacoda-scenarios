

Almost all Docker images start from a base image. A base image is the same images from the Docker Registry which are used to start containers. For example, the Debian image we ran in Lesson 1 is a base imahge.  Along with the image name, we can also include the image tag to indicate which particular version we want, by default, this is latest.

These base images are used as the foundation for your additional changes to run your application. For example, in this scenario, we require NGINX to be configured and running on the system before we can deploy our static HTML files. As such we want to use NGINX as our base image.

Dockerfile's are simple text files with a command on each line. To define a base image we use the instruction FROM <image-name>:<tag>

# Task: Creating a Dockerfile

The first line of the Dockerfile should be FROM nginx:alpine

Make the change in the Dockerfile editor. Within the environment, a new Dockerfile will be created with the contents of the editor.


