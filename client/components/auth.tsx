import React, { Dispatch, useState } from "react";
import { Nav, Tab } from "react-bootstrap";
import { css } from "@emotion/react";
import Image from "next/image";
import RegistrationTab from "./authTabs/RegistrationTab";
import LoginTab from "./authTabs/LoginTab";
import { useDispatch } from "react-redux";
import { IUser } from "../models/IUser";
import { setUser } from "../redux/slices/UserSlice";
import AuthServices from "../services/auth.services";
import { useRouter } from "next/router";
import { RingLoader } from "react-spinners";

interface IAuth {
  setAuthVisible: Dispatch<React.SetStateAction<boolean>>;
}

export interface ILoginTab {
  email: string;
  password: string;
}

export interface IRegistrationTab {
  email: string;
  password: string;
  username: string;
}

const Auth = (props: IAuth) => {

  const [loading, setLoadingPre] = useState<boolean>(false);
  const dispatch = useDispatch();
  const route = useRouter();

  const override = css`
    display: block;
    margin-top: 25%;
    margin-left: calc(50% - 105px);
  `;

  const loginAction = async ({email, password}: ILoginTab): Promise<IUser> => {
    try {
      setLoadingPre(true);
      const response = await AuthServices.login(email, password);
      const user: IUser = response.data.user;
      dispatch(setUser(user));
      route.push("/home");
      return user;
    } catch (e) {
      setTimeout(() => {
        setLoadingPre(false);
      }, 700);
      console.log(e);
      return e;
    }
  };


  const registrationAction = async (data: IRegistrationTab) => {
    try {
      setLoadingPre(true);
      const response = await AuthServices.registration(data.email, data.password, data.username);
      const user: IUser = response.data.user;
      dispatch(setUser(user));
      route.push("/home");
      return user;
    } catch (e) {
      setTimeout(() => {
        setLoadingPre(false);
      }, 700);
      console.log(e.message);
      return e;
    }
  };

  return (
    <div className="auth">
      <img
        onClick={() => props.setAuthVisible(false)}
        src="/assets/svg/close.svg"
        width={30}
        height={30}
        alt="close"
        className="close"
      />
      <div className="auth__content">
        <h3>Your text, Andy!</h3>
        <p>
          Write us whatever you want. We will answer to you as fast as possible.
        </p>
        {loading
          ? <RingLoader color={"#5779F0"} size={150} css={override} />
          : (<Tab.Container id="left-tabs-example" defaultActiveKey="SingIn">
            <Nav variant="pills">
              <Nav.Item>
                <Nav.Link eventKey="SingIn">Sing in</Nav.Link>
              </Nav.Item>
              <Nav.Item>
                <Nav.Link eventKey="Register">Register</Nav.Link>
              </Nav.Item>
              <Nav.Item>
                <Nav.Link eventKey="Test">Test</Nav.Link>
              </Nav.Item>
            </Nav>


          <Tab.Content>
            <Tab.Pane eventKey="SingIn">
              <LoginTab loginAction={loginAction} />
            </Tab.Pane>

            <Tab.Pane eventKey="Register">
              <RegistrationTab registrationAction={registrationAction} />
            </Tab.Pane>

            <Tab.Pane eventKey="Test">ahahah3</Tab.Pane>

          </Tab.Content>
        </Tab.Container>)}
      </div>
      <div className="auth__img">
        <Image
          src="/assets/img/auth-img.png"
          width={475}
          height={613}
          alt="andreas"
        />
      </div>
    </div>
  );
};

export default Auth;
