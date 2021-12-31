import { Body, Controller, Post } from '@nestjs/common';
import {AddRoleDto, CreateRoleDto} from './dto/create-role.dto';
import { RoleService } from './role.service';
import { Role } from './role.entity';
import { User } from '../user/user.entity';

@Controller('role')
export class RoleController {
  constructor(private roleService: RoleService) {}

  @Post('create')
  create(@Body() roleDto: CreateRoleDto): Promise<Role> {
    return this.roleService.create(roleDto);
  }

  @Post('add')
  async add(@Body() addRoleDto: AddRoleDto): Promise<User> {
    return this.roleService.add(addRoleDto);
  }

  @Post('remove')
  async remove(@Body() removeRoleDto: AddRoleDto): Promise<User> {
    return this.roleService.remove(removeRoleDto);
  }
}
