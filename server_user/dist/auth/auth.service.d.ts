import { CreateUserDto } from '../user/dto/create-user.dto';
import { UserService } from '../user/user.service';
import { User } from '../user/user.entity';
import { RoleService } from '../role/role.service';
import { LoginUserDto, ReturnLoginDto } from './dto/login-user.dto';
import { Repository } from 'typeorm';
import { TokenService } from '../token/token.service';
import { RegisterUserI } from "./dto/register-user.dto";
import { MailService } from "../mail/mail.service";
export declare class AuthService {
    private usersRepository;
    private userService;
    private roleService;
    private tokenService;
    private mailService;
    constructor(usersRepository: Repository<User>, userService: UserService, roleService: RoleService, tokenService: TokenService, mailService: MailService);
    registration(userDto: CreateUserDto): Promise<RegisterUserI>;
    login(loginDto: LoginUserDto): Promise<ReturnLoginDto>;
    validateUser(loginDto: LoginUserDto): Promise<User>;
}
