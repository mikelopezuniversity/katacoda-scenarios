The problem with running processes on a fixed port, is that you can only 
run one instance. Joe would prefer to run multiple Redis instances, and 
configure the application depending on which port Redis is running on.

After experimenting, Joe discovers that just using the option -p 6379, 
enables him to expose Redis, but on a randomly available port. 
He decides to test his theory using `docker run -d --name redisDynamic -p 6379 redis:latest`{{execute}}

While this works, now he doesn't know which port has been assigned. 
Thankfully, this is discovered with the command `docker port redisDynamic 6379`{{execute}}

Joe also notices, that listing the running containers with docker ps, 
will reveal the port numbers as well.

Your assignment for today, is to run 3 simultaneous instances of Redis, 
in the background, with random ports, name them redisdynamic1, 2, and 3, 
and obtain their ports and IP addresses.
