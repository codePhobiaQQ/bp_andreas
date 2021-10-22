import React, {useEffect, useState} from "react";
import Link from "next/link";
import Home from "../components/svg/Home";
import Livestream from "../components/svg/livestream";
import Blog from "../components/svg/Blog";
import {useRouter} from "next/router";
import useTypedSelector from "../hooks/useTypedSelector";
import logo from "../public/assets/img/logoPng.png";
import LkHeaderContent from "./LkHeaderContent";
import Find from "../components/svg/Find";
import FindWindow from "../components/find/FindWindow";
import {CSSTransition} from "react-transition-group";
import Settings from "../components/svg/Settings";

interface IDashboard {
  children?: React.ReactNode;
}

const LkDashboardGrid = ({ children }: IDashboard) => {
  const router = useRouter();
  const [isFind, setIsFind] = useState<boolean>(false);
  const isAuth = useTypedSelector((state) => state.user.isAuth);
  const user = useTypedSelector((state) => state.user.user);
  const isLoading = useTypedSelector((state) => state.app.isLoading);

  useEffect(() => {
    if (!isAuth && !isLoading) {
      router.push("/");
    }
  }, []);

  return (
    <>
      <CSSTransition
        in={isFind}
        timeout={300}
        classNames="fadeInNoTrans"
        unmountOnExit={true}
      >
        <FindWindow onClick={setIsFind} />
      </CSSTransition>

      <div className="admin">

        <header className="admin__header">
          <Link href="/">
            <a className="logo">
              <img src={logo.src} alt="logo"height={40} />
            </a>
          </Link>
          <div className="toolbar">
            <Find onClick={setIsFind} />

            <LkHeaderContent />
          </div>
        </header>

        <nav className="admin__nav">
          <ul className="menu">
            <li className="menu__item">
              <Link href="/home">
                <a className={router.asPath == "/home" ? "active" : ""}>
                  <Home />
                  <span>Home</span>
                </a>
              </Link>
            </li>
            <li className="menu__item">
              <Link href="/livestream">
                <a className={router.asPath == "/livestream" ? "active" : ""}>
                  <Livestream />
                  <span>Livestream</span>
                </a>
              </Link>
            </li>
            <li className="menu__item">
              <Link href="/blog">
                <a className={router.asPath == "/blog" ? "active" : ""}>
                  <Blog />
                  <span>Blog</span>
                </a>
              </Link>
            </li>
          </ul>
          <div className="bottomEls">
            <Link href="/home/settings">
              <a>
                <div className={router.asPath == "/home/settings"
                  ? "settings active"
                  : "settings"
                }>
                  <div className="icon">
                    <Settings />
                  </div>
                  <span>Settings</span>
                </div>
              </a>
            </Link>
            <Link href="#">
              <a>
                <div className="settings help">
                  <div className="icon">
                    <svg
                      width="21"
                      height="12"
                      viewBox="0 0 21 12"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                    >
                      <path
                        d="M19.2086 1.07074C19.0876 1.09203 18.9666 1.15592 18.8657 1.2198L15.7192 3.13635V8.07679L18.8859 9.99333C19.4708 10.3553 20.1969 10.1424 20.5398 9.52485C20.6407 9.33319 20.7012 9.12024 20.7012 8.886V2.30585C20.7012 1.51793 19.9952 0.879083 19.2086 1.07074Z"
                        fill="#BEC5DF"
                      />
                      <path
                        d="M11.8337 0.206116H2.85485C1.6706 0.206116 0.70166 1.18024 0.70166 2.37084V9.66595C0.70166 10.8565 1.6706 11.8307 2.85485 11.8307H11.8337C13.0179 11.8307 13.9869 10.8565 13.9869 9.66595V2.37084C13.9869 1.15859 13.0179 0.206116 11.8337 0.206116Z"
                        fill="#BEC5DF"
                      />
                    </svg>
                  </div>
                  <span>I need help to choose videos</span>
                </div>
              </a>
            </Link>
          </div>
        </nav>
        {children}
      </div>
    </>
  );
};

export default LkDashboardGrid;