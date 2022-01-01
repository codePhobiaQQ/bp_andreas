import {BadRequestException, HttpException, Injectable, NotFoundException} from '@nestjs/common';
import {InjectRepository} from '@nestjs/typeorm';
import {Repository} from 'typeorm';
import {BanUserDto, CreateUserDto, UnbanUserDto} from './dto/create-user.dto';
import {User} from './user.entity';
import * as bcrypt from 'bcrypt';
import {Role} from 'src/role/role.entity';
import {GiveRoleDto} from 'src/user/dto/give-role.dto';
import {TokenService} from "../token/token.service";
import {RoleService} from "../role/role.service";
import {Inject} from '@nestjs/common';
import {forwardRef} from '@nestjs/common';
import {UserDtoToClient} from "../auth/dto/login-user.dto";
import {FilesService} from 'src/files/files.service';

@Injectable()
export class UserService {
  constructor(
    @InjectRepository(User) private usersRepository: Repository<User>,
    @InjectRepository(Role) private roleRepository: Repository<Role>,
    private tokenService: TokenService,
    @Inject(forwardRef(() => RoleService))
    private roleService: RoleService,
    private fileService: FilesService
  ) {
  }

  async create(userDto: CreateUserDto): Promise<User> {
    //Шифруем пароль
    const hashPassword = await bcrypt.hash(userDto.password, 3);
    //Создаем пользователя в бд
    const user = await this.usersRepository.create({
      email: userDto.email,
      password: hashPassword,
      name: userDto.name,
      isActive: false,
      banned: false,
      banReason: null,
    });
    //Берем дефолтную роль для нового пользователя
    const role = await this.roleService.getByValue("default");
    //Назначаем пользователю эту дефолтную роль
    user.roles = [role];
    //Сохраняем изменения
    user.save();
    return user;
  }

  async logged(token: string): Promise<UserDtoToClient> {
    return this.tokenService.validateAccessToken(token);
  }

  async giveRole(giveRoleDto: GiveRoleDto): Promise<User> {
    //Получаем пользователя
    const user = giveRoleDto.user;
    //Проверяем есть ли добавляемая роль у пользователя
    if (user.roles.includes(giveRoleDto.roles[0])) {
      throw new BadRequestException("The user already has this role");
    }
    //Добавляем новую роль в массив ролей
    user.roles.push(giveRoleDto.roles[0]);
    //Сохраняем изменения
    await this.usersRepository.save(user);
    return user;
  }

  async viewAll(): Promise<User[]> {
    return await this.usersRepository.find({relations: ['roles']});
  }

  async ban({id, reason}: BanUserDto): Promise<User> {
    const user = await this.getUserById(id);
    if (!user) {
      throw new NotFoundException("The user with this id was not found");
    }
    user.banned = true;
    user.banReason = reason;
    await this.usersRepository.save(user);
    return user;
  }

  async unban({id}: UnbanUserDto): Promise<User> {
    const user = await this.getUserById(id);
    if (!user) {
      throw new NotFoundException("The user with this id was not found");
    }
    user.banned = false;
    user.banReason = null;
    await this.usersRepository.save(user);
    return user;
  }

  async getUserById(id: number): Promise<User> {
    const user = await this.usersRepository.findOne({
      where: {id},
      relations: ['roles'],
    });
    if (!user) {
      throw new NotFoundException("The user with this id was not found");
    }
    return user;
  }

  async avatar(avatar: any) {
    return this.fileService.createFile(avatar);
  }
}
