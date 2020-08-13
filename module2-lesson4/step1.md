Before we Dockerize our app, we will build it just to make sure everything is
working as expected.

`cd go-web-docker/src`{{execute}}

`go mod init github.com/mikelopezuniversity/go-web-docker`{{execute}}

`go mod download`{{execute}}

`go mod vendor`{{execute}}

`go mod verify`{{execute}}

`go build`{{execute}}
