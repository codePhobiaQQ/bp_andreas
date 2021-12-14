import { CreateUserDto } from '../user/dto/create-user.dto';
import { UserService } from '../user/user.service';
import { User } from '../user/user.entity';
import { RoleService } from '../role/role.service';
import { LoginUserDto, ReturnLoginDto } from './dto/login-user.dto';
import { Repository } from 'typeorm';
import { TokenService } from '../token/token.service';
import { RegisterUserI } from "./dto/register-user.dto";
export declare class AuthService {
    private usersRepository;
    private userService;
    private roleService;
    private tokenService;
    constructor(usersRepository: Repository<User>, userService: UserService, roleService: RoleService, tokenService: TokenService);
    registration(userDto: CreateUserDto): Promise<RegisterUserI>;
    login(loginDto: LoginUserDto): Promise<ReturnLoginDto>;
    validateUser(loginDto: LoginUserDto): Promise<User>;
}
