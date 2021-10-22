const UserToClientDto = require("../dto/UserToClient.dto");
const JWT = require('jsonwebtoken');
const secret = require('../../../extensions/users-permissions/config/jwt')


module.exports = {
  async logged(ctx) {
    try {
      const user = ctx.state.user;
      console.log(user);
      if (!user) {
        return ctx.request(null, [{message: "Authorised error"}]);
      }
      return new UserToClientDto(user);
    } catch (e) {
      return e.message;
    }
  }
}
