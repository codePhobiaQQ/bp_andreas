const CreateUserDto = require('./../dto/CreateUser.dto');

module.exports = {
  async create(ctx) {
    const user = new CreateUserDto(ctx.request.body);
    // const users = await strapi.models["custom-users"].findAll();
    console.log(users)
    return user;
  }
};
