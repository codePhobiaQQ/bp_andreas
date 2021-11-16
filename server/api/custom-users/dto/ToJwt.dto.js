class ToJwtDto {
  constructor(user) {
    this.id = user.id,
    this.name = user.name,
    this.secondName = user.secondName,
    this.level = user.level,
    this.email = user.email,
    this.blocked = user.blocked,
    this.confirmed = user.confirmed
  }
}

module.exports = ToJwtDto