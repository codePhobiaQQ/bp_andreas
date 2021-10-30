const CreateUserDto = require('./../dto/CreateUser.dto');
const LoginUserDto = require('./../dto/LoginUser.dto');
const validator = require("email-validator");
const bcrypt = require('bcrypt');
const passwordValidator = require('password-validator');

module.exports = {
  async create(ctx) {
    const model = strapi.query('custom-users');
    const schema = new passwordValidator();
    schema
      .is().min(5)
      .is().max(100)
      .has().lowercase()
      .has().digits(2)
      .has().not().spaces()
      .is().not().oneOf(['Passw0rd', 'Password123']);

    const candidate = new CreateUserDto(ctx.request.body);
    candidate.password = await bcrypt.hash(candidate.password, 2);

    // validation ------------------------------------------------------------
    if (!validator.validate(candidate.email)) {
      ctx.throw("Incorrect email", 400);
    }
    const isUnique = await strapi.query('custom-users').findOne({ email: ctx.request.body.email });
    if (isUnique) {
      ctx.throw("User with this email is already exists", 400);
    }
    if (!schema.validate(ctx.request.body.password)) {
      ctx.throw("Incorrect password", 400);
    }
    // ------------------------------------------------------------------------
    await model.create(candidate);
    return candidate;

  },
  async login(ctx) {
    const userData = ctx.request.body;
    console.log(userData.email);
    const candidate = await strapi.query('custom-users').findOne({ email: userData.email });
    console.log(candidate);
    if (!candidate) {
      ctx.throw("User with this email doesn't exists", 404);
    }
    const isPasswEqual = await bcrypt.compare(userData.password, candidate.password);
    if (!isPasswEqual) {
      ctx.throw("Incorrect password", 400);
    }
    return new LoginUserDto(candidate);
    return candidate;
  },
};

