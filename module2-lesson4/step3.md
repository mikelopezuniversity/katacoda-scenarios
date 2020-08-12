# Step 2 – Building the Image

Building this particular image as root can cause problems, so we need to add a
user, add that user to Docker group, and finally become that user.  All this 
is done with the following commands":

`useradd someuser`{{execute}}

`usermod -aG docker someuser`{{execute}}

`su someuser`{{execute}}

We can verify we've successfully become the new user with the following command:\

`id`{{execute}}

Now we are free to build our image with the following command:

`docker build \
         --build-arg USER_ID=$(id -u) \
         --build-arg GROUP_ID=$(id -g) \
         -t mathapp .`{{execute}}

Executing the above command will create an image named mathapp:

--build-arg: sets a build time variable. We’ll use it to make the user and 
group IDs in your machine and the container match.

-t mathapp: sets the tag name for the new image, we can reference the image later as mathapp:latest
    Don’t forget to type the last dot (.) in the command.

This command can be used by everyone working on this application. This will 
ensure that an identical development environment is used across the team.

To see the list of images on your system, run the following command:

`docker images`{{execute}}

Note that the exact names and number of images might vary. However, you should 
see at least the golang and mathapp images in the list.


