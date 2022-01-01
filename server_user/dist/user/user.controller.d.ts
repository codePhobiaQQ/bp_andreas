import { User } from './user.entity';
import { UserService } from './user.service';
import { BanUserDto, GetUserDto, UnbanUserDto } from "./dto/create-user.dto";
import { UserDtoToClient } from "../auth/dto/login-user.dto";
export declare class UserController {
    private userService;
    constructor(userService: UserService);
    viewAll(): Promise<User[]>;
    logged(headers: any): Promise<UserDtoToClient>;
    ban(banUserDto: BanUserDto): Promise<User>;
    unban(unbanUserDto: UnbanUserDto): Promise<User>;
    getById(getUserDto: GetUserDto): Promise<User>;
    avatar(avatar: any): Promise<string>;
}
