const { create, login } = require('./../services/custom-users');
const { generateToken } = require('./../services/jwt-token');

module.exports = {
  async create(ctx) {
    return create(ctx);
  },
  async login(ctx) {
    const userData = await login(ctx);
    console.log(userData);
    const token = await generateToken(userData);
    return {
      user: userData,
      jwt: token
    };
  }
};
