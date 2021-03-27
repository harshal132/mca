// Import events module
var events = require('events');

// Create an eventEmitter object
var eventEmitter = new events.EventEmitter();

var primeNumber = function primeNumber(number) {
    console.log('Prime Number Found =>'+number);
 }

 eventEmitter.addListener('prime', primeNumber);
var i =0;
var num =0;
var limit = 20;
for (i = 1; i <= limit; i++) { 		  	  
	var counter=0; 	  
	for(num =i; num>=1; num--){
		if(i%num==0){
		    counter = counter + 1;
		}
	}
	if (counter ==2){
		//Appended the Prime number to the String
		eventEmitter.emit('prime',i);
	}	
}	
 console.log("Program Ended");