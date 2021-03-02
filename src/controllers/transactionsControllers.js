const db = require("../../database/db");
const { validationResult } = require("express-validator");

//ADD TRANSACTION
exports.addTransaction = async (req, res) => {
  //VALIDATOR
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  } else {
    const transaction = await req.body;
    const { ammount, user, date, type } = transaction;
    //SAVE IN DATA BASE
    try {
      db.query(
        `INSERT INTO transactions ( ammount, id, date, type ) VALUES (?, ?, ?, ?)`,
        [ammount, user, date, type],
        (error, result) => {
          if (result) {
            res.status(200).json({
              msg: "Transaction created",
            });
          } else {
            console.log(error);
            res.status(400)({
              errors: [
                {
                  msg: "An error occurred",
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
  }
};
//GET LAST TRANSACTIONS
exports.getTransactions = async (req, res) => {
  const id = await req.query.id;
  try {
    db.query(
      `SELECT * FROM transactions WHERE id = ${id} ORDER BY id_transaction DESC LIMIT 10`,
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
          msg: "An error occurred",
        },
      ],
    });
  }
};
//GET SUM TRANSACTIONS
exports.getSumTransactions = async (req, res) => {
  const id = await req.query.id;
  try {
    db.query(
      `SELECT SUM(ammount) AS budget FROM transactions WHERE id = ${id}`,
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
//UPDATE TRANSACTION
exports.updateTransaction = async (req, res) => {
  const user = await req.body;
  const { id, ammount } = user;
  try {
    db.query(
      `UPDATE transactions
      SET ammount = ${ammount}
      WHERE id_transaction = ${id};`,
      (error, result) => {
        if (result) {
          res.status(200).json({
            msg: "Transaction updated",
          });
        }
        if (error) {
          console.log(error);
        }
      }
    );
  } catch (error) {
    console.log(error);
    res.status(400).json({
      errors: [
        {
          msg: "An error occurred",
        },
      ],
    });
  }
};
//DELETE TRANSACTION
exports.deleteTransaction = async (req, res) => {
  const id_transaction = await req.params.id;
  try {
    db.query(
      `DELETE FROM transactions WHERE id_transaction = ${id_transaction}`,
      (error, result) => {
        if (result) {
          res.status(200).json({ result });
        }
        if (error) {
          console.log(error);
        }
      }
    );
  } catch (error) {
    console.log(error);
    res.status(400).json({
      errors: [
        {
          msg: "An error occurred",
        },
      ],
    });
  }
};
