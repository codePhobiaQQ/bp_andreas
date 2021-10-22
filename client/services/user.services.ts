import $api from "../http";
import axios, { AxiosResponse } from "axios";
import { AuthResponse } from "../models/response/AuthResponse";
import { IUser } from "../models/IUser";
import {back_url} from "../vars";
import {ILevel} from "../models/ILevel";

export default class UserServices {
  static fetchUsers(): Promise<AxiosResponse<IUser[]>> {
    return $api.get<IUser[]>('/users');
  }

  static async logged(): Promise<any> {
    return $api.post('/user/logged');
  }

  static logout(): void {
    localStorage.removeItem('token');
  }

  static async getLeveles(): Promise<ILevel[]> {
    return fetch(`${back_url}/leveles`).then(
      (res) => res.json()
    );
  }
}
