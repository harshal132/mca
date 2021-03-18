/*
escape()	Returns an escaped querystring
parse()	    Parses the querystring and returns an object
stringify()	Stringifies an object, and returns a query string
unescape()	Returns an unescaped query string
*/
var query=require("url");
var querystring = require('querystring');

const googleUrl = "https://www.google.com/search?rlz=1C1GCEB_enIN883IN883&ei=MZ5FYK6pJsG9rQH5qpaABw&q=querystring+module+in+nodejs&oq=queryString+module+in+node.js&gs_lcp=Cgdnd3Mtd2l6EAMYADIFCAAQzQIyBQgAEM0CMgUIABDNAjoGCAAQBxAeOggIABAIEAcQHlDMn_MBWMfS8wFgx97zAWgCcAB4AIABlgKIAcYQkgEGMC4xMS4zmAEAoAEBqgEHZ3dzLXdpesABAQ&sclient=gws-wiz"
const myurl= "http://user:pass@host.com:8080/p/a/t/h?wada=batata&year=2017&month=february&price=15#hash"

/*
simple code for querystring without url module 
var q = querystring.parse('year=2017&month=february');
console.log(q.year);
 */
console.log(querystring.parse(query.parse(googleUrl,true).search));
parsedData = querystring.parse(query.parse(myurl,true).search);

console.log("Year: "+parsedData.year);
console.log("Wada: "+parsedData.wada);
console.log("month: "+parsedData.month);
console.log("Price: " +parsedData.price);
