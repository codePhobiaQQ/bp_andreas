import React, {useState} from "react";
import {useRouter} from "next/router";
import {IRegistrationTab, ITestTab} from "../auth";
import {AxiosResponse} from "axios";
import {AuthResponse} from "../../models/response/AuthResponse";

interface ITest {
  testAction: ({ username, email }: ITestTab) =>
    Promise<AxiosResponse<any> | undefined>;
}

const TestTab = ({testAction}: ITest) => {
  const route = useRouter();
  const [username, setName] = useState("");
  const [email, setEmail] = useState("");

  return (
    <>
      <label htmlFor="Reg-name">Name</label>
      <input
        onChange={(e) => setName(e.target.value)}
        id="Test-name"
        type="text"
      />

      <label htmlFor="Reg-email">Email</label>
      <input
        onChange={(e) => setEmail(e.target.value)}
        id="Test-email"
        type="text"
      />
      <button
        onClick={() => testAction({ username, email })}
      >
        Start the test
      </button>
    </>
  );
};

export default TestTab;