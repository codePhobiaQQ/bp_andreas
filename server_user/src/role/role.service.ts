import {
  BadRequestException,
  forwardRef,
  HttpException,
  HttpStatus,
  Inject,
  Injectable,
  NotFoundException
} from '@nestjs/common';
import {AddRoleDto, CreateRoleDto} from './dto/create-role.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Role } from './role.entity';
import { Repository } from 'typeorm';
import { GiveRoleDto } from '../user/dto/give-role.dto';
import { UserService } from '../user/user.service';
import { User } from '../user/user.entity';

@Injectable()
export class RoleService {
  constructor(
    @InjectRepository(Role) private readonly roleRepository: Repository<Role>,
    @InjectRepository(User) private readonly userRepository: Repository<User>,
    @Inject(forwardRef(() => UserService))
    private userService: UserService,
  ) {}

  async create(roleDto: CreateRoleDto): Promise<Role> {
    const role = await this.roleRepository.create({
      name: roleDto.name,
      description: roleDto.description,
    });
    await this.roleRepository.save(role);
    return role;
  }

  async getByValue(value: string): Promise<Role> {
    try {
      const role = await this.roleRepository.findOne({
        where: { name: value },
      });
      console.log('role', role);
      return role;
    } catch (e) {
      console.log(e);
      throw new HttpException(e.message, HttpStatus.INTERNAL_SERVER_ERROR);
    }
  }

  async add({ userId, roleName }: AddRoleDto): Promise<User> {
    const role = await this.getByValue(roleName);
    if (!role) {
      throw new NotFoundException("Such a role was not found");
    }
    const user = await this.userService.getUserById(userId);
    if (!user) {
      throw new NotFoundException("The user with this id was not found");
    }
    let userHasRole = 0;
    user.roles.map((userRole) => {
      if (JSON.stringify(userRole) === JSON.stringify(role)) {
        userHasRole = 1;
      }
    });
    if (userHasRole) {
      throw new BadRequestException("The user already has such a role");
    }
    user.roles.push(role);
    await this.userRepository.save(user);
    return user;
  }

  async remove({ userId, roleName }: AddRoleDto): Promise<User> {
    const role = await this.getByValue(roleName);
    if (!role) {
      throw new NotFoundException("Such a role was not found");
    }
    const user = await this.userService.getUserById(userId);
    if (!user) {
      throw new NotFoundException("The user with this id was not found");
    }
    let userHasRole = 0;

    const finalRoles: Role[] = [];
    user.roles.reduce((memo, userRole) => {
      if (!(JSON.stringify(userRole) === JSON.stringify(role))) {
        memo.push(userRole);
        console.log("test ", userRole);
      } else {
        userHasRole = 1;
      }
      return memo;
    }, finalRoles)

    if (!userHasRole) {
      throw new BadRequestException("The user does not have this role");
    }
    user.roles = finalRoles;
    await this.userRepository.save(user);
    return user;
  }
}
