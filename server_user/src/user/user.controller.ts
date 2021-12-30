import { Controller, Get, Param, Post, UseGuards, Headers } from '@nestjs/common';
import { User } from './user.entity';
import { UserService } from './user.service';

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
  getById(@Param() id: number): Promise<User> {
    console.log(typeof id);
    return this.userService.getUserById(id);
  }
}
