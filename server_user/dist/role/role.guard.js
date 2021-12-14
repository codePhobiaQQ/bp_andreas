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
exports.RoleGuard = void 0;
const common_1 = require("@nestjs/common");
const token_service_1 = require("../token/token.service");
const core_1 = require("@nestjs/core");
let RoleGuard = class RoleGuard {
    constructor(tokenService, reflector) {
        this.tokenService = tokenService;
        this.reflector = reflector;
    }
    canActivate(context) {
        const req = context.switchToHttp().getRequest();
        const roles = this.reflector.get('roles', context.getHandler());
        try {
            const authHeader = req.headers.authorization;
            const bearer = authHeader.split(' ')[0];
            const token = authHeader.split(' ')[1];
            if (bearer !== 'Bearer' || !token) {
                throw new common_1.UnauthorizedException({
                    message: 'Пользователь не авторизован',
                });
            }
            const user = this.tokenService.validateAccessToken(req.headers.authorization.split(' ')[1]);
            const userRoles = [];
            user.roles.forEach((role) => {
                userRoles.push(role.name);
            });
            const intersection = userRoles.filter((role) => roles.includes(role));
            if (intersection.length != 0) {
                return true;
            }
            return false;
        }
        catch (e) {
            console.log(e);
            throw new common_1.UnauthorizedException({
                message: 'Пользователь не авторизован',
            });
        }
        return false;
    }
};
RoleGuard = __decorate([
    common_1.Injectable(),
    __metadata("design:paramtypes", [token_service_1.TokenService,
        core_1.Reflector])
], RoleGuard);
exports.RoleGuard = RoleGuard;
//# sourceMappingURL=role.guard.js.map