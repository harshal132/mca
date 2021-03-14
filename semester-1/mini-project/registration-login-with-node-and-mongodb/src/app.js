const express = require('express');
const path = require("path");
const app = express();
const hbs=require("hbs");

const port = process.env.PORT || 4000
//import mongodb connection
require("./db/conn");
const Register = require("./models/register");
const static_path = path.join(__dirname,"/public")
const partials_path = path.join(__dirname,"../templates/partials/")
const views_path = path.join(__dirname,"../templates/views/")

app.use(express.json());
app.use(express.static(static_path));
app.use(express.urlencoded({extended:false}));

app.set("view engine","hbs");
app.set("views",views_path);
hbs.registerPartials(partials_path);
//homepage
app.get("/", (req,res) =>{
    res.render("index");
});

app.post("/register", async(req,res) =>{
    try {
        const registerEmployee = Register({
            firstname : req.body.firstname,
            lastname : req.body.lastname,
            username : req.body.username,
            city : req.body.city,
            state : req.body.state,
            zipcode : req.body.zipcode 
        });

        const registered = await registerEmployee.save();
        res.status(201).send("Data Stored Successfully!");
    } catch (error) {
        res.status(400).send(error);  
    }    
});

//start server
app.listen(port, ()=>{
    console.log("server connected on port => "+port);
});