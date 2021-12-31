import { User } from './user.entity';
import { UserService } from './user.service';
import { GetUserDto } from "./dto/create-user.dto";
export declare class UserController {
    private userService;
    constructor(userService: UserService);
    viewAll(): Promise<User[]>;
    logged(headers: any): Promise<any>;
    getById(getUserDto: GetUserDto): Promise<User>;
}
