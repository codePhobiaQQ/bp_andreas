import {BadRequestException, HttpException, Injectable, NotFoundException} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CreateUserDto } from './dto/create-user.dto';
import { User } from './user.entity';
import * as bcrypt from 'bcrypt';
import { Role } from 'src/role/role.entity';
import { GiveRoleDto } from 'src/user/dto/give-role.dto';
import { TokenService } from "../token/token.service";
import { RoleService } from "../role/role.service";
import { Inject } from '@nestjs/common';
import { forwardRef } from '@nestjs/common';
import {UserDtoToClient} from "../auth/dto/login-user.dto";

@Injectable()
export class UserService {
  constructor(
    @InjectRepository(User) private usersRepository: Repository<User>,
    @InjectRepository(Role) private roleRepository: Repository<Role>,
    private tokenService: TokenService,
    @Inject(forwardRef(() => RoleService))
    private roleService: RoleService,
  ) {}

  async create(userDto: CreateUserDto): Promise<User> {
    //Шифруем пароль
    const hashPassword = await bcrypt.hash(userDto.password, 3);
    //Создаем пользователя в бд
    const user = await this.usersRepository.create({
      email: userDto.email,
      password: hashPassword,
      name: userDto.name,
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
    return await this.usersRepository.find({ relations: ['roles'] });
  }

  async getUserById(id: number): Promise<User> {
    console.log("here")
    const user = await this.usersRepository.findOne({
      where: { id },
      relations: ['roles'],
    });
    if (!user) {
      throw new NotFoundException("The user with this id was not found");
    }
    return user;
  }
}
