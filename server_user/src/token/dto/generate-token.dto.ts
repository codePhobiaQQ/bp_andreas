import { Role } from 'src/role/role.entity';

export class GenerateTokenDto {
  id: number;
  email: string;
  isActivated: boolean;
  roles: Role[];
  name: string;
  banned: boolean;
  banReason: string;

  constructor(id: number, email: string, isActivated: boolean, name: string,
              banned: boolean, banReason: string, roles: Role[]) {
    this.id = id;
    this.email = email;
    this.isActivated = isActivated;
    this.name = name;
    this.banned = banned;
    this.banReason = banReason;
    this.roles = roles;
  }
}
