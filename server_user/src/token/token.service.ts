import {
  HttpException,
  Injectable,
  UnauthorizedException,
} from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { GenerateTokenDto } from './dto/generate-token.dto';
import { UserDtoToClient } from 'src/auth/dto/login-user.dto';

interface ITokens {
  accessToken: string;
}

@Injectable()
export class TokenService {
  constructor(
    private jwtService: JwtService,
  ) {}

  async generateToken(generateTokenDto: GenerateTokenDto): Promise<ITokens> {
    const payload = {
      email: generateTokenDto.email,
      id: generateTokenDto.id,
      isActive: generateTokenDto.isActivated,
      roles: generateTokenDto.roles,
      name: generateTokenDto.name,
      banned: generateTokenDto.banned,
      banReason: generateTokenDto.banReason,
    };
    const accessToken = this.jwtService.sign(payload, {
      secret: process.env.SECRET_ACCESS_TOKEN,
      expiresIn: '24h',
    });
    return {
      accessToken,
    };
  }

  validateAccessToken(token: string): UserDtoToClient {
    try {
      const userData = this.jwtService.verify(token, {secret: process.env.SECRET_ACCESS_TOKEN});
      return new UserDtoToClient(userData);
    } catch (e) {
      console.log(e)
      throw new UnauthorizedException('Пользователь не авторизирован');
    }
  }
}
