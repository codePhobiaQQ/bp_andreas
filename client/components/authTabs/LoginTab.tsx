import React, { useState } from "react";
import AuthServices from "../../services/auth.services";
import { AuthResponse } from "../../models/response/AuthResponse";
import { setUser } from "../../redux/slices/UserSlice";
import { IUser } from "../../models/IUser";
import { useRouter } from "next/router";
import { ILoginTab } from "../auth";

interface LoginTabI {
  loginAction: ({ email, password }: ILoginTab) => Promise<IUser>
}

const LoginTab = ({ loginAction }: LoginTabI) => {

  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  return (
    <>
      <label htmlFor="Reg-email">Email</label>
      <input
        onChange={(e) => setEmail(e.target.value)}
        id="Login-email"
        type="text"
      />

      <label htmlFor="Reg-password">Password</label>
      <input
        onChange={(e) => setPassword(e.target.value)}
        id="Login-password"
        type="text"
      />

      <button onClick={() => loginAction({email, password})}>Login</button>
    </>
  );
};

export default LoginTab;
