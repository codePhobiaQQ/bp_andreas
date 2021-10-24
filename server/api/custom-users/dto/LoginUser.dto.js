class LoginUserDto {
  constructor(user) {
    this.id = user.id;
    this.name = user.name;
    this.secondName = user.secondName;
    this.level = user.level.level;
    this.email = user.email;
  }
}

module.exports = LoginUserDto