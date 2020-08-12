This section will explain the benefits of using Docker during development, and walk you through the steps required to use Docker in development.
Configuring Docker for Development

We’ll use a Dockerfile to configure Docker for development. The setup should 
satisfy the following requirements for the development environment:

 - We will use the application mentioned in the previous section,
 - The files should be accessible both from inside and outside of the container,
 - We will use the bee tool, this will be used to live-reload the app 
(inside the Docker container) during development,
 - Docker will expose the application on port 8010,
 - The name of the Docker image we’ll create for development will be mathapp.

# Step 1 – The Dockerfile

Go back to the top level of your project:

`cd ..`{{execute}}

Lets have a look at the Dockerfile

`Dockerfile`{{open}}

This should fill all the requirements just fine.

Let's take a look at what this does:

Line 1 sets the base image to golang:1.14
Lines 2-5 set run-time environment variables
Lines 6-7 set build-time variables.  We will define these when we build the 
image.
Line 8 tells Go to download bee
Line 9 adds the user app, and sets his user and group ID
line 10 makes app's home directory, and sets app up as the directory owner
Line 11 sets the working directory to /go/src/mathapp
Line 12 adds the main.go file from the machine to the container
Line 13 initializes go package manager
Line 14 tells go to download the modules in the go.mod file created durring 
last step.
Line 15 Installs module dependencies into the vendor directory, which is where
GO will look for them.
Line 16 tells GO to build the package
Line 17 opens port 8010 in the container
Line 18 uses bee to run the application
