We’ll use Go mod, the official module manager, to handle Go modules in a 
portable way without having to worry about GOPATH.

We’ll start by creating a GitHub repository:

    Go to <a href="https://github.com">GitHub</a> and login or sign up.
    Create a new repository.
    Select Go as the language:
    Use the clone function to clone the new repo locally like so:
git clone https://github.com/your_username/your_repository_name.git
cd your_repository_name

Next we need to set some environment variables.  

`export GOFLAGS=-mod=vendor`{{execute}}

`export GO111MODULE=on`{{execute}}

go mod init github.com/your_username/your_repository_name
