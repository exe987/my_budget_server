const express = require("express");
const router = express.Router();
const db = require("../../database/db");
router.post("/createuser", (req, res) => {
    const user = req.body.user
    const {name, email, password} = user
  db.query(
    "INSERT INTO users ( email, password) VALUES (?, ?, ?)",
    [email, password],
    (err, result) => {
        console.log(err)
    }
  );
});

module.exports = router;
