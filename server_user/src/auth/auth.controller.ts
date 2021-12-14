import { Body, Controller, Get, Post, Req, Res } from '@nestjs/common';
import { CreateUserDto } from '../user/dto/create-user.dto';
import { AuthService } from './auth.service';
import { User } from '../user/user.entity';
import { TokenService } from '../token/token.service';
import { Request, Response } from 'express';
import {RegisterUserI} from "./dto/register-user.dto";

interface IRegister {
  user: User;
  accessToken: string;
}

@Controller('auth')
export class AuthController {
  constructor(
    private authService: AuthService,
    private tokenService: TokenService,
  ) {}

  @Post('registration')
  async registration(
    @Body() userDto: CreateUserDto,
  ): Promise<RegisterUserI> {
    return this.authService.registration(userDto);
  }

  @Post('login')
  async login(
    @Body() userDto: CreateUserDto,
    @Res({ passthrough: true }) response: Response,
    @Req() request: Request,
  ) {
    const user = await this.authService.login(userDto);
    return response.json({ user: user.user, accessToken: user.accessToken });
  }

  @Post('logout')
  async logout(@Res() response: Response, @Req() request: Request) {
    response.clearCookie('token');
    return response.json({ message: 'success' });
  }
}
