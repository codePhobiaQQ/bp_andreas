export class CreateUserDto {
  readonly email: string;
  readonly password: string;
  readonly name: string;
}

export class GetUserDto {
  readonly id: number;
}
