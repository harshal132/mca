var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "nodedb"
});

con.query("CREATE TABLE customers(username varchar(25), password varchar(25))",(err, result)=>{
    if (err){
        throw err;
    }
    else{
        console.log("Table created");
    }
});