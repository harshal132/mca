var imp= require('./create_module');
console.log(imp.myDateTime());


//calculator functions
imp.addition(20,20);
imp.subtraction(20,10);
imp.multiply(30,40);
imp.divide(30,15);

console.log(); //leave a blank line

//import in different way
var diffWay = require('./create_module_diff_type');
diffWay.addition(20,20);
diffWay.subtraction(48,32);
diffWay.divide(13,2);
diffWay.multiply(30,45);