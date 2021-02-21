const jwt = require("jsonwebtoken");

module.exports = (req, res, next) => {
  const token = req.header("x-auth-token");
   if (!token) {
    return res.status(400).json({ msg: "No token" });
  }
  try {
    const cifrated = jwt.verify(token, "SECRET WORD");
    req.email = cifrated.email;
    next();
  } catch (error) {
    res.status(400).json({ msg: "Token is not valid" });
  }
};
