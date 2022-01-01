import $api from "../http";
import axios, { AxiosResponse } from "axios";
import { AuthResponse } from "../models/response/AuthResponse";
import { back_url } from "../vars";

export default class AuthServices {
  static async login(
    email: string,
    password: string
  ): Promise<AxiosResponse<AuthResponse>> {
    try {
      const user = await axios.post<AuthResponse>(
        `${back_url}/auth/login`,
        { email, password }
      );
      console.log(user.data);
      localStorage.setItem("token", user.data.accessToken);
      return user;
    } catch (e) {
      console.log(e.message);
      return e;
    }
  }

  static async registration(
    email: string,
    password: string,
    username: string
  ): Promise<AxiosResponse<AuthResponse>> {
    console.log(email, password, username);
    return $api.post<AuthResponse>("/auth/registration", {
      email,
      password,
      name: username,
    });
  }
}
