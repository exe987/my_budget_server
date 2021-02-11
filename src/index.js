const db = require("../database/db");
const express = require("express");
const app = express();
const cors = require("cors");
//SETTINGS
app.set("port", process.env.PORT || 4000);
//MIDDLEWARES
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(cors());
//GLOBAL VARIABLES
app.use((req, res, next) => {
  next();
});
//ROUTES
app.use(require("./routes/index"));
app.use(require("./routes/authentication"));
//INITIALIZATIONS
app.listen(app.get("port"), () => {
  console.log(`Server on port `, app.get("port"));
});
