class CreateUserDto {
  constructor(body) {
    this.email = body.email;
    this.password = body.password;
  }
}

module.exports = CreateUserDto
