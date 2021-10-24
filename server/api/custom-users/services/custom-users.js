const CreateUserDto = require('./../dto/CreateUser.dto');
const LoginUserDto = require('./../dto/LoginUser.dto');
const validator = require("email-validator");
const bcrypt = require('bcrypt');
const passwordValidator = require('password-validator');

module.exports = {
  async create(ctx) {
    try {
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
        throw new Error("Incorrect email");
      }
      const isUnique = await strapi.query('custom-users').findOne({ email: ctx.request.body.email });
      if (isUnique) {
        throw new Error("User with this email is already exists");
      }
      if (!schema.validate(ctx.request.body.password)) {
        throw new Error("Incorrect password");
      }
      console.log(!schema.validate(ctx.request.body.password))
      // ------------------------------------------------------------------------

      await model.create(candidate);
      return candidate;
    } catch (e) {
      return e.message;
    }
  },
  async login(ctx) {
    try {
      const userData = ctx.request.body;
      console.log(userData.email);
      const candidate = await strapi.query('custom-users').findOne({ email: userData.email });
      console.log(candidate);
      if (!candidate) {
        throw new Error("User with this email doesn't exists");
      }
      const isPasswEqual = await bcrypt.compare(userData.password, candidate.password);
      console.log(isPasswEqual);
      if (!isPasswEqual) {
        throw new Error("Incorrect password");
      }
      return new LoginUserDto(candidate);
      return candidate;
    } catch (e) {
      return e.message;
    }
  },
};

