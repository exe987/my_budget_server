const express = require("express");
const router = express.Router();
const { check } = require("express-validator");
const transactionController = require("../controllers/transactionsControllers");

//ADD TRANSACTION
router.post(
  "/api/transaction",
  [
    check("ammount", "ammount is required").not().isEmpty(),
    check("type", "type is required").not().isEmpty(),
    check("date", "date is required").isDate().not().isEmpty(),
  ],
  transactionController.addTransaction
);
//GET TRANSACTIONS
router.get("/api/transaction", transactionController.getTransactions);
//GET TRANSACTIONS SUM
router.get("/api/transaction/sum", transactionController.getSumTransactions);
//UPDATE TRANSACTIONS
router.put("/api/transaction", transactionController.updateTransaction);
//DELETE TRANSACTIONS
router.delete("/api/transaction/:id", transactionController.deleteTransaction);

module.exports = router;
