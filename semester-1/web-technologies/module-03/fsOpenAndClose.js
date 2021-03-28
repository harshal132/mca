var fs = require("fs");

//Create and Write File
fs.writeFile('openAndClose.txt', 'Steps To be Performed On this file:\n\t'
            +'1. Open.\n\t2. Read\n\t3. Close\n\t4. Delete', 
    function (err) {
    if (err){
        throw err;
    }
    else{
        console.log('Created And Appended File!');
    }  
});

//Open and Read File Content
fs.open('openAndClose.txt', 'r', function (err, file) {
    if (err) {
        throw err;
    }
    else{
        fs.readFile(file, function (err, data) {
            if (err) {
                return console.error("Error Reading File => "+err);
            }
            else{
                console.log(data.toString());
            }
        })
    }
});

//close file
file_descriptor = fs.openSync("openAndClose.txt");
console.log("The file descriptor is:", file_descriptor);
  
// Close the file descriptor
fs.close(file_descriptor, (err) => {
  if (err)
    console.error('Failed to close file', err);
  else {
    console.log("\n> File Closed successfully");
  }
});

//delete file
fs.unlink("openAndClose.txt", (err => {
    if (err) console.log(err);
    else {
      console.log("\nDeleted file: openAndClose.txt");
      // Get the files in current diectory
      // after deletion
    }
}));