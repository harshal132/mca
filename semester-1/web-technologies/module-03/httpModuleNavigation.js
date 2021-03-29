const http = require("http");

http.createServer(function (req, response) {
    if(req.url=='/'){
        response.writeHead(200, { 'Content-Type': 'text/html'})
        response.write("<h1>Hello World!</h1><br><h3>This is Homepage</h3>");
    }
    else if(req.url == '/contact'){
        response.writeHead(200, { 'Content-Type': 'text/html'})
        response.write("<h1>Hello There!</h1><br><h3>This is Contact Page</h3>");
    }
    else{
        response.writeHead(404, { 'Content-Type': 'text/plain'})
        response.write("Invalid Request");
    }

    response.end(); //end the response
}).listen(4000); //the server object listens on port 8080