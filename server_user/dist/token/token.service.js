"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.TokenService = void 0;
const common_1 = require("@nestjs/common");
const jwt_1 = require("@nestjs/jwt");
const login_user_dto_1 = require("../auth/dto/login-user.dto");
let TokenService = class TokenService {
    constructor(jwtService) {
        this.jwtService = jwtService;
    }
    async generateToken(generateTokenDto) {
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
    validateAccessToken(token) {
        try {
            const userData = this.jwtService.verify(token, { secret: process.env.SECRET_ACCESS_TOKEN });
            return new login_user_dto_1.UserDtoToClient(userData);
        }
        catch (e) {
            console.log(e);
            throw new common_1.UnauthorizedException('Пользователь не авторизирован');
        }
    }
};
TokenService = __decorate([
    common_1.Injectable(),
    __metadata("design:paramtypes", [jwt_1.JwtService])
], TokenService);
exports.TokenService = TokenService;
//# sourceMappingURL=token.service.js.map