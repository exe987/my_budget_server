//DB CONECTION
const mysql = require("mysql");
const db = mysql.createConnection({
  user: "root",
  host: "localhost",
  password: "password",
  database: "my_budget",
});
module.exports = db;
