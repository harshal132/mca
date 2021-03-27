    //Blocking Code Example
    var fs = require("fs");
    var data = fs.readFileSync('input.txt');
    console.log(data.toString());
    console.log("Program Ended");
    /* 
    output:
    Tutorials Point is giving self learning content
    to teach the world in simple and easy way!!!!! 
    Program Ended
    */ 

    //Non-Blocking Code Example
    fs.readFile('input.txt', function (err, data) {
        if (err) {
            return console.error(err);
        }
        else{
            console.log(data.toString());
        }
    });
    console.log("Program Ended");
    /*
    output:
    Program Ended
    Tutorials Point is giving self learning content
    to teach the world in simple and easy way!!!!!
    */
