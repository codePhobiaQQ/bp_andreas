import { JwtService } from '@nestjs/jwt';
import { GenerateTokenDto } from './dto/generate-token.dto';
import { UserDtoToClient } from 'src/auth/dto/login-user.dto';
interface ITokens {
    accessToken: string;
}
export declare class TokenService {
    private jwtService;
    constructor(jwtService: JwtService);
    generateToken(generateTokenDto: GenerateTokenDto): Promise<ITokens>;
    validateAccessToken(token: string): UserDtoToClient;
}
export {};
