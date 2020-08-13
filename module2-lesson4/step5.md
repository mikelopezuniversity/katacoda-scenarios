Now it is time to build, and run our application.

`docker build \
    -t mathapp-prod \
    -f Dockerfile.deploy .`{{execute}}

Lets take a closer look at what this command does:
  - docker build - build an image from a Dockerfile
  - -t mathapp-prod - name the built image mathapp-prod
  - -f Dockerfile.deploy - The name (and optionally the location) of the Dockerfile
to use to build the image.

Now lets take a look at the size of the new image.

`docker images`{{execute}}

132 MB! Much better! Now it is time to run the container.  The following 
command will accomplish this.

`docker run -it -p 8010:8010 mathapp-prod`{{execute}}

Notice we don't map any directories.  That is because all the source files are
in the container.

To see all our hard work in action, click the link below

https://[[HOST_SUBDOMAIN]]-8010-[[KATACODA_HOST]].environments.katacoda.com/sum/10/5

