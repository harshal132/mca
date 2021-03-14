/*
basename()	    Returns the last part of a path
delimiter	    Returns the delimiter specified for the platform
dirname()	    Returns the directories of a path
extname()	    Returns the file extension of a path
format()	    Formats a path object into a path string
isAbsolute()	Returns true if a path is an absolute path, otherwise false
join()	        Joins the specified paths into one
normalize()	    Normalizes the specified path
parse()	        Formats a path string into a path object
posix	        Returns an object containing POSIX specific properties and methods
relative()	    Returns the relative path from one specified path to another specified path
resolve()	    Resolves the specified paths into an absolute path
sep	            Returns the segment separator specified for the platform
win32	        Returns an object containing Windows specific properties and methods 
*/
var path = require("path");
console.log("Directory Name\t:"+path.dirname("C:/Users/harschav/Desktop/repos/mca/semester-1/web-technologies/path_module.js"));
console.log(path.parse("C:/Users/harschav/Desktop/repos/mca/semester-1/web-technologies/path_module.js"));
console.log("File Base\t:"+path.basename("C:/Users/harschav/Desktop/repos/mca/semester-1/web-technologies/path_module.js"));

const mypath= path.parse("C:/Users/harschav/Desktop/repos/mca/semester-1/web-technologies/path_module.js");
console.log("File Root\t:"+mypath.root);
console.log("File Name\t:"+mypath.name);
console.log("File Extension\t:"+mypath.ext);
console.log("File Base\t:"+mypath.base);
console.log("File Directory\t:"+mypath.dir);