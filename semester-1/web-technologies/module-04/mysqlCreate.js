var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: ""
});

con.connect(function(err) {
  if (err){
    throw err;
  }
  else{
    console.log("Connected!");
    con.query("CREATE DATABASE nodedb", function (err, result) {
        if (err){
            throw err;
        }
        else{
            console.log("Database created");
        }
    });
  }
});