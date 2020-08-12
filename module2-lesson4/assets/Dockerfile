FROM golang:1.14

ENV GO111MODULE=on
ENV GOFLAGS=-mod=vendor
ENV APP_USER app
ENV APP_HOME /go/src/mathapp

ARG GROUP_ID
ARG USER_ID

RUN groupadd --gid $GROUP_ID app && useradd -m -l --uid $USER_ID --gid $GROUP_ID $APP_USER
RUN mkdir -p $APP_HOME && chown -R $APP_USER:$APP_USER $APP_HOME

WORKDIR $APP_HOME
ADD src/main.go .
RUN go mod init github.com/mikelopezuniversity/go-web-docker
RUN go mod download
RUN go mod vendor
RUN go build

EXPOSE 8010

CMD ["./go-web-docker"] 
