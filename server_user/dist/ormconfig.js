"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const config = {
    type: 'postgres',
    host: 'localhost',
    port: 5432,
    username: 'postgres',
    password: '2007',
    database: 'andreas_users',
    entities: [__dirname + '/**/*.entity{.ts,.js}'],
    migrations: [__dirname + '/migrations/**/*{.ts,.js}'],
    synchronize: false,
    cli: {
        migrationsDir: 'src/migrations',
    },
};
exports.default = config;
//# sourceMappingURL=ormconfig.js.map