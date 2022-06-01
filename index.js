const http = require("http");
const fs = require("fs");

http
  .createServer((req, res) => {
    if (req.url === "/" && req.method == "GET") {
      fs.readFile("index.html", (err, data) => {
        if (err) {
          res.statusCode = 500;
          res.end();
        } else {
          res.setHeader("content-type", "text/html");
          res.end(data);
        }
      });
    }
  })



.listen(3000, console.log("hola"));
