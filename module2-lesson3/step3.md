After we've installed our dependencies, we want to copy over the rest of our 
application's source code. Splitting the installation of the dependencies and 
copying our source code enables us to use the cache when required.

If we copied our code before running npm install, then it would run every time 
as our code would have changed. By copying just package.json we can be sure 
that the cache is invalidated only when our package contents have changed.

# Task: Deploy Application

Create the desired steps in the Dockerfile to finish the deployment of the 
application.  We can copy the entire directory where our Dockerfile is using 
COPY . dest-dir.

Once the source code has been copied, the ports the application requires to be 
accessed is defined using EXPOSE port.

Finally, the application needs to be started. One neat trick when using Node.js,
is to use the npm start command. This looks in the package.json file to know 
how to launch the application saving duplication of commands.

In the next step, we'll build and launch the image.

