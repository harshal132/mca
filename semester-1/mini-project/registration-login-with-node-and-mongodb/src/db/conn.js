const mongoose = require("mongoose");
mongoose.connect("mongodb://127.0.0.1:27017/employees",{
    useNewUrlParser:true,
    useUnifiedTopology:true,
    useCreateIndex:true
}).then(()=>{
    console.log("connected to database");
}).catch((e)=>{
    console.log("Not able to coonect to Database "+e);
});
