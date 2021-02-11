//DB CONECTION
const mysql = require("mysql");
var db = mysql.createConnection({
  host: "root",
  user: "localhost",
  password: "password",
  database: "my_budget",
});

module.exports = db;
