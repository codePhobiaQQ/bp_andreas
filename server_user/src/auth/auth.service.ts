import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateUserDto } from '../user/dto/create-user.dto';
import { UserService } from '../user/user.service';
import { User } from '../user/user.entity';
import { RoleService } from '../role/role.service';
import {
  LoginUserDto,
  ReturnLoginDto,
  UserDtoToClient,
} from './dto/login-user.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import * as bcrypt from 'bcrypt';
import { TokenService } from '../token/token.service';
import { GenerateTokenDto } from '../token/dto/generate-token.dto';
import {RegisterUserI} from "./dto/register-user.dto";
import {MailService} from "../mail/mail.service";

@Injectable()
export class AuthService {
  constructor(
    @InjectRepository(User) private usersRepository: Repository<User>,
    private userService: UserService,
    private roleService: RoleService,
    private tokenService: TokenService,
    private mailService: MailService,
  ) {}

  async registration(userDto: CreateUserDto): Promise<RegisterUserI> {
    //Создаем пользователя
    const user = await this.userService.create(userDto);
    console.log(user);
    //Берем для него дефолтную роль юзера
    const role = await this.roleService.getByValue('default');
    //Даем ему эту роль
    await this.userService.giveRole({ user, roles: [role] });
    //Возвращаем юзера
    const tokenPayload = new GenerateTokenDto(
      user.id,
      user.email,
      user.isActive,
      user.roles,
      user.name,
    );
    const token = await this.tokenService.generateToken(tokenPayload);
    await this.mailService.confirmEmail(user.email);
    return { user, accessToken: token.accessToken };
  }

  async login(loginDto: LoginUserDto): Promise<ReturnLoginDto> {
    //Валлидируем есть ли такой пользователь
    const user = await this.validateUser(loginDto);
    const userDto = new UserDtoToClient(user);
    const tokenPayload = new GenerateTokenDto(
      user.id,
      user.email,
      user.isActive,
      user.roles,
      user.name,
    );
    //Генерируем для него новый токен
    const token = await this.tokenService.generateToken(tokenPayload);

    //Возвращаем новый токен, чтобы перезаписать его в localstorage
    return {
      accessToken: token.accessToken,
      user: userDto,
    };
  }

  //Валлидируем логин и пароль (есть ли такой пользователь в таблице)
  async validateUser(loginDto: LoginUserDto): Promise<User> {
    const candidate = await this.usersRepository.findOne({
      where: { email: loginDto.email },
      relations: ['roles'],
    });
    if (!candidate) {
      throw new HttpException(
        'Пользователя с таким email нет',
        HttpStatus.NOT_FOUND,
      );
    }
    const passEqual = await bcrypt.compare(
      loginDto.password,
      candidate.password,
    );
    if (!passEqual) {
      throw new HttpException('Неверный пароль', HttpStatus.BAD_REQUEST);
    }
    return candidate;
  }
}
