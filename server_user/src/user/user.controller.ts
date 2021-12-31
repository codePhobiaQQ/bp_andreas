import { Controller, Get, Param, Post, UseGuards, Headers } from '@nestjs/common';
import { User } from './user.entity';
import { UserService } from './user.service';
import {GetUserDto} from "./dto/create-user.dto";

@Controller('user')
export class UserController {
  constructor(private userService: UserService) {}

  @Get('all-users')
  viewAll(): Promise<User[]> {
    return this.userService.viewAll();
  }

  @Post('logged')
  logged(@Headers() headers): Promise<any> {
    console.log(headers.token)
    return this.userService.logged(headers.token);
  }


  @Get('get-by-id/:id')
  getById(@Param() getUserDto: GetUserDto): Promise<User> {
    console.log(getUserDto.id);
    return this.userService.getUserById(getUserDto.id);
  }
}
