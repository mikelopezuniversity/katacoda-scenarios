With the image successfully created, you can now launch the container in the same way we described 
in the first scenario.

# Task

Launch an instance of your newly built image using either the ID result from the build command or the friendly name you assigned it.

NGINX is designed to run as a background service, so you should include the option -d. To make the web 
server accessible, bind it to port 80 using -p 80:80

For example:

docker run -d -p 80:80 <image-id|friendly-tag-name>

# Protip

You can check the container is running using `docker ps`{{execute}}

You can view the webpage being served by the container, by clicking on the + in the terminal window, 
and selecting "View HTTP port 80 on host 1"
