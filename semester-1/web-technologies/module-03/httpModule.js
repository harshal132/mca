var http = require("http");
var url = require('url');
//create a server object:
//If the response from the HTTP server is supposed to be displayed as HTML, 
//you should include an HTTP header with the correct content type:
http.createServer(function (req, res) {
    res.write('Hello World!<br>'); //write a response to the client
    res.write("Accessing This URL => "+req.url);
    var q = url.parse(req.url, true).query;
    var txt = "<br> Parsing URL: "+q.year + " " + q.month;
    res.end(txt);
    //res.end(); //end the response
}).listen(4000); //the server object listens on port 8080