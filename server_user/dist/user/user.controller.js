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
var __param = (this && this.__param) || function (paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.UserController = void 0;
const common_1 = require("@nestjs/common");
const user_service_1 = require("./user.service");
const create_user_dto_1 = require("./dto/create-user.dto");
const platform_express_1 = require("@nestjs/platform-express");
let UserController = class UserController {
    constructor(userService) {
        this.userService = userService;
    }
    viewAll() {
        return this.userService.viewAll();
    }
    logged(headers) {
        console.log(headers.token);
        return this.userService.logged(headers.token);
    }
    ban(banUserDto) {
        return this.userService.ban(banUserDto);
    }
    unban(unbanUserDto) {
        return this.userService.unban(unbanUserDto);
    }
    getById(getUserDto) {
        console.log(getUserDto.id);
        return this.userService.getUserById(getUserDto.id);
    }
    avatar(avatar) {
        return this.userService.avatar(avatar);
    }
};
__decorate([
    common_1.Get('all-users'),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", Promise)
], UserController.prototype, "viewAll", null);
__decorate([
    common_1.Post('logged'),
    __param(0, common_1.Headers()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", Promise)
], UserController.prototype, "logged", null);
__decorate([
    common_1.Post('ban'),
    __param(0, common_1.Body()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [create_user_dto_1.BanUserDto]),
    __metadata("design:returntype", Promise)
], UserController.prototype, "ban", null);
__decorate([
    common_1.Post('unban'),
    __param(0, common_1.Body()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [create_user_dto_1.UnbanUserDto]),
    __metadata("design:returntype", Promise)
], UserController.prototype, "unban", null);
__decorate([
    common_1.Get('get-by-id/:id'),
    __param(0, common_1.Param()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [create_user_dto_1.GetUserDto]),
    __metadata("design:returntype", Promise)
], UserController.prototype, "getById", null);
__decorate([
    common_1.Post('avatar'),
    common_1.UseInterceptors(platform_express_1.FileInterceptor('avatar')),
    __param(0, common_1.UploadedFile()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", void 0)
], UserController.prototype, "avatar", null);
UserController = __decorate([
    common_1.Controller('user'),
    __metadata("design:paramtypes", [user_service_1.UserService])
], UserController);
exports.UserController = UserController;
//# sourceMappingURL=user.controller.js.map