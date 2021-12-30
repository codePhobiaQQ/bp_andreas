import { Role } from 'src/role/role.entity';

export class GenerateTokenDto {
  id: number;
  email: string;
  isActivated: boolean;
  roles: Role[];
  name: string;

  constructor(id: number, email: string, isActivated: boolean, roles: Role[], name: string) {
    this.id = id;
    this.email = email;
    this.isActivated = isActivated;
    this.roles = roles;
    this.name = name;
  }
}
