var fs=require("fs")
fs.writeFile("writeFile.txt","Hi, I am writing this content through js.",function (err,data){
    if(err){
        console.log(err,data);
    }
    else{
        console.log("File updated successfully");
    }
}
);

