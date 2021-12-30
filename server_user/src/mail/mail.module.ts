import {forwardRef, Module} from '@nestjs/common';
import { MailController } from './mail.controller';
import { MailService } from './mail.service';
import {TypeOrmModule} from "@nestjs/typeorm";
import {User} from "../user/user.entity";

@Module({
  controllers: [MailController],
  providers: [MailService],
  imports: [
    TypeOrmModule.forFeature([User]),
  ],
  exports: [MailService],
})
export class MailModule {}
