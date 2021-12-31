import { Role } from 'src/role/role.entity';
export declare class GenerateTokenDto {
    id: number;
    email: string;
    isActivated: boolean;
    roles: Role[];
    name: string;
    banned: boolean;
    banReason: string;
    constructor(id: number, email: string, isActivated: boolean, name: string, banned: boolean, banReason: string, roles: Role[]);
}
