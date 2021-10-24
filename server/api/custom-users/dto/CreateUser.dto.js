class CreateUserDto {
  constructor(body) {
    this.email = body.email;
    this.password = body.password;
    this.name = body.name;
  }
}

module.exports = CreateUserDto
