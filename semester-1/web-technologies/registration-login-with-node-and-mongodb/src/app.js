const express = require('express');
const path = require("path");
const app = express();
const port = process.env.PORT || 4000
//import mongodb connection
require("./db/conn");
const static_path = path.join(__dirname,"../public")
app.use(express.static(static_path));
//homepage
app.get("/", (req,res) =>{
    res.send("Hello World!");
});

//start server
app.listen(3131, ()=>{
    console.log("server connected on port => "+port);
});