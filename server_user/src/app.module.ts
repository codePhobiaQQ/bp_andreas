import { MiddlewareConsumer, Module, NestModule } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserModule } from './user/user.module';
import { AuthModule } from './auth/auth.module';
import { RoleModule } from './role/role.module';
import { TokenModule } from './token/token.module';
import 'reflect-metadata';
import { ResponseMiddleware } from './middleware/response.middleware';
import { ServeStaticModule } from '@nestjs/serve-static';
import { MailModule } from './mail/mail.module';
import OrmConfig from './ormconfig';
import * as path from 'path';

@Module({
  controllers: [],
  providers: [],
  imports: [
    ServeStaticModule.forRoot({ rootPath: path.resolve(__dirname, 'static') }),
    ConfigModule.forRoot({
      envFilePath: `.${process.env.NODE_ENV}.env`,
    }),
    TypeOrmModule.forRoot(OrmConfig),
    UserModule,
    AuthModule,
    RoleModule,
    TokenModule,
    MailModule,
  ],
})
export class AppModule implements NestModule {
  configure(consumer: MiddlewareConsumer) {
    consumer.apply(ResponseMiddleware).forRoutes('/*');
  }
}
