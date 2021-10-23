const { create } = require('./../services/custom-users');

module.exports = {
  async create(ctx) {
    return create(ctx);
  },
};
