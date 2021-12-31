import { Role } from 'src/role/role.entity';
export declare class LoginUserDto {
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
export declare class UserDtoToClient {
    email: string;
    id: number;
    isActive: boolean;
    roles: Role[];
    banned: boolean;
    banReason: string;
    constructor(user: any);
}
export {};
