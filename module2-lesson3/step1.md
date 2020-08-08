As we described in the previous scenario, all images start with a base image,
ideally as close to the desired configuration as possible. Node.js has pre-
built images available with tags for each released version.

The image for Node 10.0 is node:10-alpine. It's an Alpine-based build which is
smaller, and more streamlined than the official image.

Along with the base image, we also need to create the base directories where
our  application will run. Using the RUN <command>, we can execute commands as
if they're running from a command shell. By using mkdir, we can create the
application's directories. In this case, an ideal directory would be /src/app,
as the environment user has read/write access to that directory.

We can define a working directory using WORKDIR <directory>.  This is done
to ensure that all future commands are executed from the directory relative
to our application.

# Task: Define Base Environment

Set the FROM <image>:<tag>, RUN <command>, and WORKDIR <directory> on separate
lines to configure the base environment for deploying your application.

