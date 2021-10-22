class UserToClientDto {
  constructor(ctx) {
    this.username = ctx.username;
    this.lastname = ctx.lastname;
    this.email = ctx.email;
    this.id = ctx.id;
    this.confirmed = ctx.confirmed;
    this.blocked = ctx.blocked;
    this.role = ctx.role.id;
  }
}

module.exports = UserToClientDto