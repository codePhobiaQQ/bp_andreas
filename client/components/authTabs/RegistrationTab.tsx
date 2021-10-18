import React, { useState } from "react";
import {IRegistrationTab} from "../auth";
import {IUser} from "../../models/IUser";
import { AxiosResponse } from "axios";
import { AuthResponse } from "../../models/response/AuthResponse";

interface IRegistration {
  registrationAction: ({ email, password, username }: IRegistrationTab) =>
    Promise<AxiosResponse<AuthResponse> | undefined>;
}

const RegistrationTab = ({ registrationAction }: IRegistration) => {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  return (
    <>
      <label htmlFor="Reg-name">Name</label>
      <input
        onChange={(e) => setName(e.target.value)}
        id="Reg-name"
        type="text"
      />

      <label htmlFor="Reg-email">Email</label>
      <input
        onChange={(e) => setEmail(e.target.value)}
        id="Reg-email"
        type="text"
      />

      <label htmlFor="Reg-password">Password</label>
      <input
        onChange={(e) => setPassword(e.target.value)}
        id="Reg-password"
        type="text"
      />

      <button onClick={() => registrationAction({ email, password, username: name })}>
        Register
      </button>
    </>
  );
};

export default RegistrationTab;
