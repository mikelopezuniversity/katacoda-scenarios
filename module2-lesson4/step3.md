# Step 2 – Building the Image


`docker build \
         --build-arg USER_ID=1001 \
         --build-arg GROUP_ID=1001 \
         -t mathapp .`{{execute}}

Executing the above command will create an image named mathapp:

--build-arg: sets a build time variable. We’ll use it to set the user and 
group ID.

-t mathapp: sets the tag name for the new image, we can reference the image later as mathapp:latest
    Don’t forget to type the last dot (.) in the command.

This command can be used by everyone working on this application. This will 
ensure that an identical development environment is used across the team.

To see the list of images on your system, run the following command:

`docker images`{{execute}}

Note that the exact names and number of images might vary. However, you should 
see at least the golang and mathapp images in the list.

Notice the size of our image.  1.13 GB!!!  The golang image alone is 810 MB! 
What if we could compile our application, then get rid of all that unnecessary
code?  That would make the image much smaller, wouldn't it? Well, we can! We
use a multi-stage build.  The first stage contains everything necessary to
compile our app.  The second stage just contains our app, and it's 
configuration files.  This results in a much smaller, more portable image.
