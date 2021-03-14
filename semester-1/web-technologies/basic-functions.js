function findPercent(marks, total){
    percent=(marks/total)*100;
    return percent;
}

function findMarksBasedOnPercent(percent, total){
    marks=(percent*total)/100;
    return marks;
}

function squares(value){
    return value*value;
}

function mergeName(firstName, lastName){
    return "Hello "+firstName+" "+lastName;
}

console.log(findPercent(424,500));
console.log(findMarksBasedOnPercent(84.8, 500));
console.log(squares(3));
console.log(mergeName("Harshal", "Chavan"));