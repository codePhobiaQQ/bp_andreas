import { BaseEntity } from 'typeorm';
import { Role } from '../role/role.entity';
export declare class User extends BaseEntity {
    id: number;
    email: string;
    password: string;
    name: string;
    avatar: string;
    banned: boolean;
    banReason: string;
    isActive: boolean;
    roles: Role[];
}
