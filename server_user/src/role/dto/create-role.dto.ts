export class CreateRoleDto {
  readonly name: string;
  readonly description: string;
}

export class AddRoleDto {
  readonly userId: number;
  readonly roleName: string;
}
