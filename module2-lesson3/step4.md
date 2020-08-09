To launch your application inside the container you first need to build an image.

# Example: Build & Launch

The command to build the image is `docker build -t my-nodejs-app .`{{execute}}

The command to launch the built image is `docker run -d --name my-running-app -p 3000:3000 my-nodejs-app`{{execute}}

# Testing Container

You can test the container is accessible using curl. If the application 
responds then you know that everything has correctly started.

`curl http://docker:3000`{{execute}}

