import { User } from "src/user/user.entity";

export interface RegisterUserI {
  readonly user: User;
  readonly accessToken: string;
}