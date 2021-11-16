const { create, login, logged } = require('./../services/custom-users');

module.exports = {
  async create(ctx) {
    return create(ctx);
  },

  async login(ctx) {
    return login(ctx);
  },

  async logged(ctx) {
    return logged(ctx);
  },
};
