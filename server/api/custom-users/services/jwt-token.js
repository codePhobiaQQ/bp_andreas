const jwt = require('jsonwebtoken');
const ToJwtDto = require('./../dto/ToJwt.dto');

module.exports = {
  async generateToken(user) {
    return jwt.sign({
      ...user
    }, process.env.JWT_SECRET, { expiresIn: '1h' });
  },

  async verifyUser(token,ctx) {
    console.log(token);
    const user = jwt.decode(token);
    if (!user) {
      ctx.throw("User is not logged in", 400);
    }
    const newToken = await strapi.services['jwt-token'].generateToken( new ToJwtDto(user) );
    return { user, token: newToken };
  }
}