import { Role } from 'src/role/role.entity';
import { User } from '../../user/user.entity';

export class LoginUserDto {
  readonly email: string;
  readonly password: string;
  readonly name: string;
}

interface IUserDto {
  email: string;
  id: number;
  isActive: boolean;
  banned: boolean;
  banReason: string;
}

export interface ReturnLoginDto {
  accessToken: string;
  user: IUserDto;
}

export class UserDtoToClient {
  email: string;
  id: number;
  isActive: boolean;
  roles: Role[];
  banned: boolean;
  banReason: string;

  constructor(user) {
    this.email = user.email;
    this.id = user.id;
    this.isActive = user.isActive;
    this.roles = user.roles;
    this.banned = user.banned;
    this.banReason = user.banReason;
  }
}
