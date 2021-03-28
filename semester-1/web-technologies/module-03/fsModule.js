/*
 *Common use for the File System module:
    Read files
    Create files
    Update files
    Delete files
    Rename files 
 */
var fs = require("fs");
/**
 * The File System module has methods for creating new files:
    fs.appendFile()
    fs.open()
    fs.writeFile()
 */

//The fs.appendFile() method appends specified content to a file. If the file does not exist, the file will be created:
fs.appendFile('input.txt', 'Hello World! This is updated content with appendFile method', function (err) {
    if (err){
        throw err;
    }
    else{
        console.log('Saved!');
    }  
});

//The fs.readFile() method is used to read files on your computer.
fs.readFile('input.txt', function (err, data) {
    if (err) {
        return console.error("Error Reading File => "+err);
    }
    else{
        console.log(data.toString());
    }
});

/*The fs.open() method takes a "flag" as the second argument, if the flag is "w" for "writing", 
the specified file is opened for writing. If the file does not exist, an empty file is created:*/
fs.open('input.txt', 'w', function (err, file) {
    if (err) {
        throw err;
    }
    else{
        console.log('Saved!');
    }
});

/*
 * The fs.writeFile() method replaces the specified file and content if it exists. 
 * If the file does not exist, a new file, containing the specified content, will be created:
 */
fs.writeFile('input.txt', 'Hello content! Changed Content Of File with writeFile method', function (err) {
    if (err) {
        throw err;
    }
    else{
        console.log('Saved!');
    }
});

//The fs.rename() method renames the specified file:
fs.rename('input.txt', 'fileNameChanged.txt', function (err) {
    if (err) throw err;
    console.log('File Renamed!');
});

//The fs.unlink() method deletes the specified file:
// Get the files in current diectory
// before deletion
getFilesInDirectory();
  
// Delete fileNameChanged.txt
fs.unlink("fileNameChanged.txt", (err => {
  if (err) console.log(err);
  else {
    console.log("\nDeleted file: fileNameChanged.txt");
    // Get the files in current diectory
    // after deletion
    getFilesInDirectory();
  }
}));

function getFilesInDirectory() {
    console.log("\nFiles present in directory:");
    let files = fs.readdirSync(__dirname);
    files.forEach(file => {
      console.log(file);
    });
}