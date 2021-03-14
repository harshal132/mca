const welcome ={
    
currTime: new Date().toLocaleDateString(),
lecture:"Web Technologies",
addition : function(value1, value2){
        console.log("Addition of given values is "+(value1+value2));
},
subtraction : function(value1, value2){
    console.log("Subtraction of given values is "+(value1-value2));
},
multiply : function(value1, value2){
    console.log("Multiplication of given values is "+(value1*value2));
},
divide : function(value1, value2){
    console.log("Division of given values is "+(value1/value2));
}
}

module.exports = welcome;