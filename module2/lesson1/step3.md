Joe is happy that Redis is running, but is frustrated that he cannot 
access it. The reason for this is, that each container is sandboxed. 
If a service needs to be accessible by a process not running in a 
container, then the port needs to be exposed via the Host.

Once exposed, it is possible to access the process as if it were 
running on the host OS itself.

Joe finds that by default, Redis runs on port 6379. He has learned that, 
by default, other applications and libraries expect a Redis instance to 
be listening on that port.

After reading the documentation, Joe discovers that ports are bound 
when containers are started using the -p host-port:container-port 
option. Joe also discovers, that it's useful to define a name when 
starting the container. Doing this means he doesn't have to use Bash 
piping or keep looking up the name when trying to access the logs.

Joe finds the best way to solve his problem of running Redis in the 
background, with a name of redisHostPort on port 6379, is using the 
following command: 
`docker run -d --name redisHostPort -p 6379:6379 redis:latest`{execute}

<b>PROTIP</b>

By default, the port on the host is mapped to 0.0.0.0, which means all 
IP addresses. You can specify a particular IP address when you define 
the port mapping, for example, -p 127.0.0.1:6379:6379

Your assignment today, is to re-run the Redis container, in the 
background, give it the name Redis-MLU, and bind port 6379 on the host 
to port 6379 in the container.
