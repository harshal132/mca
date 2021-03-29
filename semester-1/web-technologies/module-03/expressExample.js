const express = require("express");
const app = express();

app.get('/',(req, res)=>{
    res.send("<h1>Hello! This is created using express</h1>");
    res.send(req.header('Content-Type'));
});

app.listen(4000);
console.log("Started server on port 4000");