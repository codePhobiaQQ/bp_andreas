export declare class CreateUserDto {
    readonly email: string;
    readonly password: string;
    readonly name: string;
}
export declare class GetUserDto {
    readonly id: number;
}
export declare class BanUserDto {
    readonly id: number;
    readonly reason: string;
}
export declare class UnbanUserDto {
    readonly id: number;
}
