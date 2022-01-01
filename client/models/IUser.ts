import IRole from "./IRole";

export interface IUser {
  name: string
  email: string;
  blocked: boolean;
  confirmed: boolean;
  roles: IRole[];
  id: number;
  resetLink: string;
  confirmLink: string;
  banned: boolean;
  banReason: string;
  avatar: string;
  isActive: boolean;
}
