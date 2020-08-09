With Docker, environment variables can be defined when you launch the 
container. For example, with Node.js applications, you should define an 
environment variable for NODE_ENV when running in production.

Using -e option, you can set the name and value as -e NODE_ENV=production

# Example

`docker run -d --name my-production-running-app -e NODE_ENV=production -p 3000:3000 my-nodejs-app`{{execute}}
