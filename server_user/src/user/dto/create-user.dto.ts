import {IsEmail, IsString, Length} from "class-validator";

export class CreateUserDto {

  @IsString({message: "Must be a string"})
  @IsEmail({}, {message: "Incorrect email"})
  readonly email: string;

  @IsString({message: "Must be a string"})
  @Length(4, 16, {message: "More 4 less 16"})
  readonly password: string;

  // @IsString({message: "Must be a string"})
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
