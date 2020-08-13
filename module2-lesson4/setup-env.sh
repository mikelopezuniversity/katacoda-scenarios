sh -c "wget https://golang.org/dl/go1.14.7.linux-amd64.tar.gz"
sh -c "tar -C /usr/local -xzf go1.14.7.linux-amd64.tar.gz"
sh -c "export PATH=$PATH:/usr/local/go/bin"
sh -c "git clone https://github.com/mikelopezuniversity/go-web-docker.git"
sh -c "mkdir src && mkdir src/conf && mkdir src/views"
sh -c "export GOFLAGS=-mod=vendor"
sh -c "export GO111MODULE=on"
