import $api from "../http";
import { AxiosResponse } from "axios";
import { AuthResponse } from "../models/response/AuthResponse";
import { IUser } from "../models/IUser";

interface ResponseI {
  data: {
    user: IUser;
  }
}

interface BanI {
  id: number;
  reason: string;
}

export default class UserServices {
  static fetchUsers(): Promise<AxiosResponse<IUser[]>> {
    return $api.get<IUser[]>('/all-users');
  }

  static async logged(): Promise<{data: IUser}> {
    return $api.post('/user/logged', {}, { headers: { token: localStorage.getItem('token') } });
  }

  static logout(): void {
    localStorage.removeItem('token');
  }

  static ban({id, reason}: BanI): Promise<AxiosResponse<IUser>> {
    return $api.post('/user/ban', {id, reason});
  }

  static unban(id: number): any {
    return $api.post('/user/unban', {id});
  }

  static makePremium(id: number) {
    return $api.post('/role/add', {userId: id, roleName: "premium"});
  }

  static removePremium(id: number) {
    return $api.post('/role/remove', {userId: id, roleName: "premium"});
  }
}
