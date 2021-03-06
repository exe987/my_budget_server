const express = require("express");
const router = express.Router();
const userController = require("../controllers/usersControllers");
const { check } = require("express-validator");
const auth = require("../middleware/auth");

//SIGNUP
router.post(
  "/api/createuser",
  [
    check("name", "name is required").not().isEmpty(),
    check("email", "add email valid").isEmail(),
    check("password", " password must be 6 characters").isLength({ min: 6 }),
  ],

  userController.createUser
);
//LOGIN
router.post(
  "/api/login",
  [
    check("email", "add email valid").isEmail(),
    check("password", " password must be 6 characters").isLength({ min: 6 }),
  ],
  userController.logIn
);
//AUTENTICATED 
router.get("/api/login", auth, userController.authenticatedUser);
//PUT BUDGET USER
router.put("/api/user/ammount", userController.updateBudget);

module.exports = router;
