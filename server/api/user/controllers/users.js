const { parseMultipartData, sanitizeEntity } = require('strapi-utils');
const loggedService = require('../services/users')

module.exports = {
  async logged(ctx) {
    return loggedService.logged(ctx);
  },
  async change(ctx) {
    const entity = await strapi.services["user"];
    console.log(ctx.state.user);
    ctx.state.user.email = "sergei1@mail.ru";
    await ctx.state.user.save();
    return "change";
  },
  async find(ctx) {
    const entity = await strapi.services["users-permissions_user"];
    console.log(entity);
    return entity;
  },
};
