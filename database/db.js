//DB CONECTION
const mysql = require("mysql");
const db = mysql.createConnection({
  user: "root",
  host: "localhost",
  password: "milodor1234M_",
  database: "my_budget",
});
module.exports = db;
