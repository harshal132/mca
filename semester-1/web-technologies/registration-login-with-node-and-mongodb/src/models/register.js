const mongoose=require("mongoose");

const eschema = new mongoose.Schema(
    {
        firstname:{
            type: String,
            required:true
        },
        lastname : {
            type:String,
            required:true
        },
        username : {
            type:String,
            required:true,
            unique:true
        },
        city : {
            type:String,
            required:true  
        },
        state : {
            type:String,
            required:true  
        },
        zipcode : {
            type:Number,
            required:true  
        }
    }
);

const Register = new mongoose.model("RegisteredEmployees",eschema);
module.exports=Register;