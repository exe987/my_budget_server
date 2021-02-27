const express = require("express");
const app = express();
const cors = require("cors");
//SETTINGS
app.set("port", process.env.PORT || 4000);
//MIDDLEWARES
app.use(express.json());
app.use(cors());
app.use(express.urlencoded({ extended: false }));
app.use(express.json({ extended: true }));
//ROUTES
app.use(require("./routes/users"));
app.use(require("./routes/transactions"));
//INITIALIZATIONS
app.listen(app.get("port"), () => {
  console.log(`Server on port`, app.get("port"));
});
