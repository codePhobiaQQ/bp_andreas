import { CanActivate, ExecutionContext } from '@nestjs/common';
import { Observable } from 'rxjs';
import { TokenService } from '../token/token.service';
import { Reflector } from '@nestjs/core';
export declare class RoleGuard implements CanActivate {
    private tokenService;
    private readonly reflector;
    constructor(tokenService: TokenService, reflector: Reflector);
    canActivate(context: ExecutionContext): boolean | Promise<boolean> | Observable<boolean>;
}
