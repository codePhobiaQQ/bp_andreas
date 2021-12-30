import { User } from './user.entity';
import { UserService } from './user.service';
export declare class UserController {
    private userService;
    constructor(userService: UserService);
    viewAll(): Promise<User[]>;
    logged(headers: any): Promise<any>;
    getById(id: number): Promise<User>;
}
