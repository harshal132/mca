var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "nodedb"
});

var query = "INSERT INTO customers values('andongre','64MPCAMIFIRST')";
con.query(query,(err, result)=>{
    if (err){
        throw err;
    }
    else{
        console.log("1 Row Inserted!");
    }
});

//retrieve data
con.query("SELECT * FROM customers", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
    console.log(fields);
});

//reference:- https://www.w3schools.com/nodejs/nodejs_mysql_update.asp