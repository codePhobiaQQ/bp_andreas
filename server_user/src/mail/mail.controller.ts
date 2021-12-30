import {Body, Post} from '@nestjs/common';
import { Controller } from '@nestjs/common';
import {MailService} from "./mail.service";
import {CheckResetDto} from "./dto/mail.dto";
import {User} from "../user/user.entity";

@Controller('mail')
export class MailController {
  constructor(private mailService: MailService) {}

  @Post('reset')
  resetPassword(@Body() email: string): Promise<any> {
    return this.mailService.resetPassword(email);
  }

  @Post('confirm')
  confirmEmail(@Body() email: string): Promise<any> {
    return this.mailService.confirmEmail(email);
  }

  @Post('check-reset')
  checkReset(@Body() data: CheckResetDto): Promise<User> {
    return this.mailService.checkReset(data);
  }

  @Post('check-confirm')
  checkConfirm(@Body() data: CheckResetDto): Promise<User> {
    return this.mailService.checkConfirm(data);
  }
}
