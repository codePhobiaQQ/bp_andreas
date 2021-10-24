var jwt = require('jsonwebtoken');

module.exports = {
  async generateToken(user) {
    return jwt.sign({
      ...user
    }, process.env.JWT_SECRET, { expiresIn: '1h' });
  }
}