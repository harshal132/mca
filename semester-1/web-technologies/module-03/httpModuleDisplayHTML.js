const http = require("http");
var fs = require("fs");
var fileData = '';

http.createServer(function (req, response) {
    if(req.url=='/'){
        response.writeHead(200, { 'Content-Type': 'text/html'})
        //code to read HTML file
        fs.readFile("F:/Repositories/mca/semester-1/web-technologies/design/index.html",function(error,data){
            if(error){
                console.log("Error Reading File");
            }
            else{
                fileData = data.toString();
            }
        });
        response.write(fileData);
    }
    else if(req.url == '/register'){
        response.writeHead(200, { 'Content-Type': 'text/html'})
        //code to read HTML file
        fs.readFile("F:/Repositories/mca/semester-1/web-technologies/design/register.html",function(error,data){
            if(error){
                console.log("Error Reading File");
            }
            else{
                fileData = data.toString();
            }
        });
        response.write(fileData);
    }
    else{
        response.writeHead(404, { 'Content-Type': 'text/plain'})
        response.write("Invalid Request");
    }

    response.end(); //end the response
}).listen(4000); //the server object listens on port 4000