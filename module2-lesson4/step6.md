Lets create the rest of the files:

`touch views/result.html`{{execute}}

`views/result.html`{{open}}

<pre class="file" data-filename="views/result.html" data-target="append">
<!-- views/result.html -->
<!doctype html>
<html>
    <head>
        <title>MathApp - {{.operation}}</title>
    </head>
    <body>
        The {{.operation}} of {{.num1}} and {{.num2}} is {{.result}}
    </body>
</html>
</pre>

`touch views/invalid-route`{{execute}}

`views/invalid-route.html`{{open}}
<pre class="file" data-filename="views/invalid-route.html data-target="append">
<!-- invalid-route.html -->
<!doctype html>
<html>
    <head>
        <title>MathApp</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="UTF-8">
    </head>

    <body>
        Invalid operation
    </body>
</html>
</pre>

`touch conf/app.conf`{{execute}}

`conf/app.conf`{{open}}

The content is as follows:

<pre class="file" data-filename="conf/app.conf" data-target="append">
appname = mathapp
runmode = "dev"
httpport = 8010
</pre>

In this file:

appname: is the name of the process that the application will run as,

runmode: specifies which mode the application should run in. Valid values 
include dev for development and prod for production.

httpport: is the port on which the application will be served
