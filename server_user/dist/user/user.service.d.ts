import { Repository } from 'typeorm';
import { CreateUserDto } from './dto/create-user.dto';
import { User } from './user.entity';
import { Role } from 'src/role/role.entity';
import { GiveRoleDto } from 'src/user/dto/give-role.dto';
import { TokenService } from "../token/token.service";
export declare class UserService {
    private usersRepository;
    private roleRepository;
    private tokenService;
    constructor(usersRepository: Repository<User>, roleRepository: Repository<Role>, tokenService: TokenService);
    create(userDto: CreateUserDto): Promise<User>;
    logged(token: string): Promise<any>;
    giveRole(giveRoleDto: GiveRoleDto): Promise<User>;
    viewAll(): Promise<User[]>;
    getUserById(id: number): Promise<User>;
}
