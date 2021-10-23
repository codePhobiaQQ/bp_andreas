const { parseMultipartData, sanitizeEntity } = require('strapi-utils');
const loggedService = require('../services/users')

module.exports = {
  async logged(ctx) {
    return loggedService.logged(ctx);
  },
  async change(ctx) {
    try {
      console.log(ctx.state.user)
    } catch (e) {
      return e.message;
    }
  }
};
