const jwt = require('jsonwebtoken');
const config = require('config');

module.exports = function (req, res, next) {
  // get the token from the Authorization header
  const token = req.header('Authorization')?.split(' ')[1]; // Extract token from 'Bearer <token>'

  if (!token) {
    return res.status(401).json({ msg: 'No token, authorization denied.' });
  }

  try {
    // use the secret from config
    const decoded = jwt.verify(token, config.get('jwtSecret'));
    req.user = decoded.user; // attach user data to the request object
    next();
  } catch (err) {
    console.error(err.message);
    return res.status(401).json({ msg: 'Token is not valid' });
  }
};
