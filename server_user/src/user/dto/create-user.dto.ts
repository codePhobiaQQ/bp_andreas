export class CreateUserDto {
  readonly email: string;
  readonly password: string;
  readonly name: string;
}

export class GetUserDto {
  readonly id: number;
}

export class BanUserDto {
  readonly id: number;
  readonly reason: string;
}

export class UnbanUserDto {
  readonly id: number;
}
