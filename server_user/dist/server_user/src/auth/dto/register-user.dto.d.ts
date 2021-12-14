import { IUser } from "../../../../client/models/IUser";
export interface RegisterUserI {
    readonly user: IUser;
    readonly accessToken: string;
}
