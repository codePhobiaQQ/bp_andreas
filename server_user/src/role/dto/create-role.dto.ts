import {IsNumber, IsString} from "class-validator";

export class CreateRoleDto {
  @IsString()
  readonly name: string;
  @IsString()
  readonly description: string;
}

export class AddRoleDto {
  @IsNumber()
  readonly userId: number;
  @IsString()
  readonly roleName: string;
}
