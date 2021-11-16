class LoginUserDto {
  constructor(user, token) {
    this.user = {
      id: user.id,
      name: user.name,
      secondName: user.secondName,
      level: user.level,
      email: user.email,
      blocked: user.blocked,
      confirmed: user.confirmed,
    };
    this.jwt = token;
  }
}

module.exports = LoginUserDto