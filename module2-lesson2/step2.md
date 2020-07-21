

With the base image defined, we need to run various commands to configure our image. There are many commands to help with this, the main two being COPY and RUN.

RUN <command> allows you to execute any command as you would at a command prompt. For example, RUN echo "Hello, world!" would display the words Hello, world! on the screen.  The results of the RUN are persisted to the image, so it's important not to leave any unnecessary or temporary files on the disk as these will be included in the image.

COPY <src> <dest> allows you to copy files from the directory containing the Dockerfile to the container's image. This is extremely useful for source code and assets that you want to be deployed inside your container (ie a config or .html file).
Task

A new index.html file has been created for you, which we want to serve from our container. On the next line after the FROM command, use the COPY command to copy index.html into a directory called /usr/share/nginx/html

# Protip

If you're copying a file into a directory then you need to specify the filename as part of the destination.

