const db = require("../../database/db");
const bcrypt = require("bcryptjs");
const { validationResult } = require("express-validator");
const jwt = require("jsonwebtoken");

//SIGN UP
exports.createUser = async (req, res) => {
  //VALIDATOR
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }
  const user = req.body;
  const { name, email, password, ammount } = user;
  const salt = bcrypt.genSaltSync(10);
  const passwordHashed = bcrypt.hashSync(password, salt);
  //SAVE IN DATA BASE
  try {
    const result = db.query(
      `INSERT INTO users ( name, email, password, ammount) VALUES (?, ?, ?, ?)`,
      [name, email, passwordHashed, ammount],
      (error, result) => {
        if (result) {
          res.status(200).json({
            msg: "USER CREATED",
          });
        } else {
          console.log(error);
          res.status(400)({
            errors: [
              {
                msg: "An error occurred ",
              },
            ],
          });
        }
      }
    );
  } catch (error) {
    console.log(error);
    res.status(400)({
      errors: [
        {
          msg: "An error occurred ",
        },
      ],
    });
  }
};
//LOGIN
exports.logIn = async (req, res) => {
  //VALIDATOR
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }
  const user = await req.body;
  const { email, password } = user;
  //QUERY
  try {
    db.query(
      `SELECT * FROM users WHERE email = ?`,
      [email],
      async (error, result) => {
        if (error) {
          console.log(error);
          res.status(400).json({
            errors: [
              {
                msg: "An error occurred ",
              },
            ],
          });
        }
        //IF USER EXIST COMPARE PASSWORD
        if (result.length > 0) {
          const passCorrect = await bcrypt.compare(
            password,
            result[0].password
          );
          //IF PASSWORD DOESNOT MATCH
          if (!passCorrect) {
            return res.status(400).json({
              errors: [
                {
                  msg: "Wrong email/password combination",
                },
              ],
            });
          } else {
            //CREATE TOKEN FOR SESION
            const payload = {
              email: email,
            };
            jwt.sign(
              payload,
              "SECRET WORD",
              {
                expiresIn: 3600,
              },
              (error, token) => {
                if (error) throw error;
                res.json({ token });
              }
            );
          }
        } else {
          res.status(400).json({
            errors: [
              {
                msg: "User does not exist",
              },
            ],
          });
        }
      }
    );
  } catch (error) {
    console.log(error);
    res.status(400).json({
      errors: [
        {
          msg: "An error occurred ",
        },
      ],
    });
  }
};
//GET AUTHENTICATED USER
exports.authenticatedUser = async (req, res) => {
  const email = await req.email;
  db.query(`SELECT * FROM users WHERE email = ?`, [email], (error, result) => {
    try {
      if (result) {
        res.status(200).json({ result });
      }
    } catch (error) {
      console.log(error);
      res.status(500).json({
        errors: [
          {
            msg: "An error occurred ",
          },
        ],
      });
    }
  });
};
//UPDATE BUDGET
exports.updateBudget = async (req, res) => {
  const user = await req.body;
  const { id, ammount } = user;
  try {
    db.query(
      `UPDATE users
      SET ammount = ${ammount}
      WHERE id = ${id};`,
      (error, result) => {
        if (result) {
          res.status(200).json({ result });
        }
      }
    );
  } catch (error) {
    console.log(error);
    res.status(400).json({
      errors: [
        {
          msg: "An error occurred ",
        },
      ],
    });
  }
};
