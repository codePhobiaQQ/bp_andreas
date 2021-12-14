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
    };
    const accessToken = this.jwtService.sign(payload, {
      secret: process.env.SECRET_ACCESS_TOEKN,
      expiresIn: '2h',
    });
    return {
      accessToken,
    };
  }

  validateAccessToken(token: string): UserDtoToClient {
    try {
      const userData = this.jwtService.verify(token, {
        secret: process.env.SECRET_ACCESS_TOEKN,
      });
      const userToClient = new UserDtoToClient(userData);
      return userToClient;
    } catch (e) {
      throw new UnauthorizedException('Пользователь не авторизирован');
    }
  }
}
