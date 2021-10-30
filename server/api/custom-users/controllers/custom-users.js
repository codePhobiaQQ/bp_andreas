const { create, login } = require('./../services/custom-users');
const { generateToken } = require('./../services/jwt-token');

module.exports = {
  async create(ctx) {
    const user = await create(ctx);
    console.log(user);
    return user;
  },
  async login(ctx) {
    try {
      const userData = await login(ctx);
      console.log(userData);
      const token = await generateToken(userData);
      return {
        user: userData,
        jwt: token
      }
    } catch (e) {
      return e;
    }
  }
};
