var fs=require("fs")
//Create and Write Files
fs.writeFile("writeFile.txt","Hi, I am writing this content through js.",function (err,data){
    if(err){
        console.log(err,data);
    }
    else{
        console.log("File updated successfully");
    }
}
);
//Append Files
fs.appendFile("writeFile.txt","\nUpdate Files - New Content",function (err,data){
    if(err){
        console.log(err,data);
    }
    else{
        console.log("File updated successfully");
    }
}
);
