Let's take a look at a multi-stage build Dockerfile:

`Dockerfile.deploy`{{open}}

Let's see what each of these lines do:


FROM golang:1.14 as builder
Sets the base image to golang's official image, AND identifies the start of a
stage in a multi-stage build.

ENV APP_USER app
ENV APP_HOME /go/src/mathapp
Sets run-time environment variables, same as in the original Dockerfile.

RUN mkdir -p $APP_HOME && chown -R $APP_USER:$APP_USER $APP_HOME
RUN groupadd $APP_USER && useradd -m -g $APP_USER -l $APP_USER
Creates and owns App's home directory, and add's app to his group

WORKDIR $APP_HOME
Sets the active working directory within the container to $APP_HOME

USER $APP_USER
Switches the user to APP_USER

COPY src/ .
Copies the src directory on the machine to the current directory in the 
container

RUN go mod download
RUN go mod verify
RUN go build -o mathapp
Downloads required go modules, verifies dependencies, then 
builds our app, naming it mathapp.

FROM debian:buster
Sets the base image to (a MUCH smaller) debian:buster. This is the start of 
the second stage.

ENV APP_USER app
ENV APP_HOME /go/src/mathapp
Re-sets runtime environment variables.  This is necessary because we are in a
new environment.

RUN groupadd $APP_USER && useradd -m -g $APP_USER -l $APP_USER
RUN mkdir -p $APP_HOME

COPY src/conf/ conf/
COPY src/views/ views/
Copies the src/conf directory on the machine, to the conf/ directory in the
container. I then copies  the src/views directory on the machine, to the
views directory in the container.

COPY --chown=0:0 --from=builder $APP_HOME/mathapp $APP_HOME
chown's and copies our app from the build environment, to the current one.

EXPOSE 8010
Opens port 8010 in the container

USER $APP_USER
Switches the user to APP_USER

CMD ["./mathapp"]
Executes our application


