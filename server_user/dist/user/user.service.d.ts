import { Repository } from 'typeorm';
import { CreateUserDto } from './dto/create-user.dto';
import { User } from './user.entity';
import { Role } from 'src/role/role.entity';
import { GiveRoleDto } from 'src/user/dto/give-role.dto';
import { TokenService } from "../token/token.service";
import { RoleService } from "../role/role.service";
import { UserDtoToClient } from "../auth/dto/login-user.dto";
export declare class UserService {
    private usersRepository;
    private roleRepository;
    private tokenService;
    private roleService;
    constructor(usersRepository: Repository<User>, roleRepository: Repository<Role>, tokenService: TokenService, roleService: RoleService);
    create(userDto: CreateUserDto): Promise<User>;
    logged(token: string): Promise<UserDtoToClient>;
    giveRole(giveRoleDto: GiveRoleDto): Promise<User>;
    viewAll(): Promise<User[]>;
    getUserById(id: number): Promise<User>;
}
