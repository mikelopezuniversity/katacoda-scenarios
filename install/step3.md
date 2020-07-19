Next, we will download the Docker installation script.
This is done with the command curl.  Not to worry,
nothing will be downloaded onto your computer.  It
all happens in the virtual terminal.
# TASK
To complete this step, download Docker install script.
`curl -fsSL https://getdocker.mikelopezuniversity.ml -o getdocker.sh`{{execute}}
Let's take a look at exactly what that command does.
curl: Tells the system to download something
-fsSL curl options.  Type `curl --help`{{execute}} if
you're curious about what they do.
https://getdocker.mikelopezuniversity.ml: The URL of the
file to download.  -o getdocker.sh:Tells curl to save
the output as a file called getdocker.sh rather than
print file contents on the screen.  You could name the 
file anything you like, but it really should end in .sh
