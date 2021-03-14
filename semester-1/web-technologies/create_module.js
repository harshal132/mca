//Practical 2c : Local Module creation and importing in different programs.
exports.myDateTime = function () {
    return "Current Date and Time : "+Date();
};

exports.addition = function(value1, value2){
        console.log("Addition of given values is "+(value1+value2));
}
exports.subtraction = function(value1, value2){
    console.log("Subtraction of given values is "+(value1-value2));
}
exports.multiply = function(value1, value2){
    console.log("Multiplication of given values is "+(value1*value2));
}
exports.divide = function(value1, value2){
    console.log("Division of given values is "+(value1/value2));
}