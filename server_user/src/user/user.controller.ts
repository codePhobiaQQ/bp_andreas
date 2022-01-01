import {Controller, Get, Param, UploadedFile, UseInterceptors, Post, UseGuards, Headers, Body} from '@nestjs/common';
import { User } from './user.entity';
import { UserService } from './user.service';
import {BanUserDto, GetUserDto, UnbanUserDto} from "./dto/create-user.dto";
import {FileInterceptor} from "@nestjs/platform-express";

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

  @Post('ban')
  ban(@Body() banUserDto: BanUserDto): Promise<User> {
    return this.userService.ban(banUserDto);
  }

  @Post('unban')
  unban(@Body() unbanUserDto: UnbanUserDto): Promise<User> {
    return this.userService.unban(unbanUserDto);
  }

  @Get('get-by-id/:id')
  getById(@Param() getUserDto: GetUserDto): Promise<User> {
    console.log(getUserDto.id);
    return this.userService.getUserById(getUserDto.id);
  }

  @Post('avatar')
  @UseInterceptors(FileInterceptor('avatar'))
  avatar(@UploadedFile() avatar) {
    return this.userService.avatar(avatar);
  }
}
