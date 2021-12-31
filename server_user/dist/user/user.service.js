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
exports.UserService = void 0;
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const typeorm_2 = require("typeorm");
const user_entity_1 = require("./user.entity");
const bcrypt = require("bcrypt");
const role_entity_1 = require("../role/role.entity");
const give_role_dto_1 = require("./dto/give-role.dto");
const token_service_1 = require("../token/token.service");
const role_service_1 = require("../role/role.service");
const common_2 = require("@nestjs/common");
const common_3 = require("@nestjs/common");
let UserService = class UserService {
    constructor(usersRepository, roleRepository, tokenService, roleService) {
        this.usersRepository = usersRepository;
        this.roleRepository = roleRepository;
        this.tokenService = tokenService;
        this.roleService = roleService;
    }
    async create(userDto) {
        const hashPassword = await bcrypt.hash(userDto.password, 3);
        const user = await this.usersRepository.create({
            email: userDto.email,
            password: hashPassword,
            name: userDto.name,
        });
        const role = await this.roleService.getByValue("default");
        user.roles = [role];
        user.save();
        return user;
    }
    async logged(token) {
        return this.tokenService.validateAccessToken(token);
    }
    async giveRole(giveRoleDto) {
        const user = giveRoleDto.user;
        if (user.roles.includes(giveRoleDto.roles[0])) {
            throw new common_1.BadRequestException("The user already has this role");
        }
        user.roles.push(giveRoleDto.roles[0]);
        await this.usersRepository.save(user);
        return user;
    }
    async viewAll() {
        return await this.usersRepository.find({ relations: ['roles'] });
    }
    async getUserById(id) {
        console.log("here");
        const user = await this.usersRepository.findOne({
            where: { id },
            relations: ['roles'],
        });
        if (!user) {
            throw new common_1.NotFoundException("The user with this id was not found");
        }
        return user;
    }
};
UserService = __decorate([
    common_1.Injectable(),
    __param(0, typeorm_1.InjectRepository(user_entity_1.User)),
    __param(1, typeorm_1.InjectRepository(role_entity_1.Role)),
    __param(3, common_2.Inject(common_3.forwardRef(() => role_service_1.RoleService))),
    __metadata("design:paramtypes", [typeorm_2.Repository,
        typeorm_2.Repository,
        token_service_1.TokenService,
        role_service_1.RoleService])
], UserService);
exports.UserService = UserService;
//# sourceMappingURL=user.service.js.map