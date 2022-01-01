import { Repository } from 'typeorm';
import { BanUserDto, CreateUserDto, UnbanUserDto } from './dto/create-user.dto';
import { User } from './user.entity';
import { Role } from 'src/role/role.entity';
import { GiveRoleDto } from 'src/user/dto/give-role.dto';
import { TokenService } from "../token/token.service";
import { RoleService } from "../role/role.service";
import { UserDtoToClient } from "../auth/dto/login-user.dto";
import { FilesService } from 'src/files/files.service';
export declare class UserService {
    private usersRepository;
    private roleRepository;
    private tokenService;
    private roleService;
    private fileService;
    constructor(usersRepository: Repository<User>, roleRepository: Repository<Role>, tokenService: TokenService, roleService: RoleService, fileService: FilesService);
    create(userDto: CreateUserDto): Promise<User>;
    logged(token: string): Promise<UserDtoToClient>;
    giveRole(giveRoleDto: GiveRoleDto): Promise<User>;
    viewAll(): Promise<User[]>;
    ban({ id, reason }: BanUserDto): Promise<User>;
    unban({ id }: UnbanUserDto): Promise<User>;
    getUserById(id: number): Promise<User>;
    avatar(avatar: any): Promise<string>;
}
