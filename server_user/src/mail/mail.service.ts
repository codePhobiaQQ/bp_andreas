import {HttpException, HttpStatus, Injectable} from '@nestjs/common';
import * as nodemailer from 'nodemailer';
import { v4 as uuidv4 } from 'uuid';
import {InjectRepository} from "@nestjs/typeorm";
import {Repository} from "typeorm";
import {User} from "../user/user.entity";
import {CheckResetDto} from "./dto/mail.dto";

@Injectable()
export class MailService {
  constructor(
    @InjectRepository(User) private userRepository: Repository<User>,
  ) {}

  async resetPassword(email: string) {
    let testAccount = await nodemailer.createTestAccount();
    const resetLink = uuidv4();
    let transporter = nodemailer.createTransport({
      host: "smtp.gmail.com",
      port: 587,
      secure: false, // true for 465, false for other ports
      auth: {
        user: " bal.academy2021@gmail.com", // generated ethereal user
        pass: "Sergei2007", // generated ethereal password
      },
    });
    let info = await transporter.sendMail({
      from: '"Fred Foo 👻" <foo@example.com>', // sender address
      to: "vital.pereg@mail.ru", // list of receivers
      subject: "Hello ✔", // Subject line
      text: "Hello world?", // plain text body
      html: `<b>Hello world?</b>
             ${resetLink}`, // html body
    });
    console.log("Message sent: %s", info.messageId);
    console.log("Preview URL: %s", nodemailer.getTestMessageUrl(info));

    const user = await User.findOne(email);
    user.resetLink = resetLink;
    await user.save();
    console.log(user);
  }

  async confirmEmail(email: string) {
    let testAccount = await nodemailer.createTestAccount();
    const confirmLink = uuidv4();
    let transporter = nodemailer.createTransport({
      host: "smtp.ethereal.email",
      port: 587,
      secure: false, // true for 465, false for other ports
      auth: {
        user: testAccount.user, // generated ethereal user
        pass: testAccount.pass, // generated ethereal password
      },
    });
    let info = await transporter.sendMail({
      from: '"Fred Foo 👻" <foo@example.com>', // sender address
      to: "vital.pereg@mail.ru", // list of receivers
      subject: "Hello ✔", // Subject line
      text: "Hello world?", // plain text body
      html: `<b>Hello world?</b>
             ${confirmLink}`, // html body
    });
    console.log("Message sent: %s", info.messageId);
    console.log("Preview URL: %s", nodemailer.getTestMessageUrl(info));

    const user = await User.findOne(email);
    user.confirmLink = confirmLink;
    await user.save();
  }

  async checkReset(data: CheckResetDto) {
    const candidate = await User.find({ resetLink: data.link });
    if (!candidate[0]) {
      throw new HttpException(
        'Пользователя с такой ссылкой нет',
        HttpStatus.NOT_FOUND,
      );
    }
    return candidate[0];
  }

  async checkConfirm(data: CheckResetDto) {
    const candidate = await User.find({ confirmLink: data.link });
    if (!candidate[0]) {
      throw new HttpException(
        'Пользователя с такой ссылкой нет',
        HttpStatus.NOT_FOUND,
      );
    }
    return candidate[0];
  }
}
