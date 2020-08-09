In the previous set, we configured the foundation of our configuration and how 
we want the application to be deployed. The next stage is to install the 
dependencies required to run the application. For Node.js, this means running 
NPM install.

To keep build times to a minimum, Docker caches the results of executing a line
in the Dockerfile for use in a future build. If something has changed, then 
Docker will invalidate the current and all following lines to ensure everything 
is up-to-date.

With NPM we only want to re-run npm install if something within our 
package.json file has changed. If nothing has changed then we can use the cache 
version to speed up deployment. By using COPY package.json <dest> we can cause 
the RUN npm install command to be invalidated if the package.json file has 
changed. If the file has not changed, then the cache will not be invalidated, 
and the cached results of the npm install command will be used.

# Task: Add Dockerfile Lines

The following two lines are required in order Dockerfile to run npm install.
<pre class="file" data-filename="Dockerfile" data-target="append">
COPY package.json /src/app/package.json

RUN npm install
</pre>

Copy the lines to the Dockerfile now so they can be used in the build later.

# Protip

If you don't want to use the cache as part of the build, then set the option 
--no-cache=true as part of the docker build command.
