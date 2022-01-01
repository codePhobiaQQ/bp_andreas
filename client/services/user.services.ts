import $api from "../http";
import { AxiosResponse } from "axios";
import { AuthResponse } from "../models/response/AuthResponse";
import { IUser } from "../models/IUser";

export default class UserServices {
  static fetchUsers(): Promise<AxiosResponse<IUser[]>> {
    return $api.get<IUser[]>('/all-users');
  }

  static async logged(): Promise<any> {
    return $api.post('/custom-users/logged', {}, { headers: { token: localStorage.getItem('token') } });
  }

  static logout(): void {
    localStorage.removeItem('token');
  }
}
