import React, { useEffect, useState } from "react";
import logo from "../public/assets/img/logo.svg";
import { useRouter } from "next/router";
import Link from "next/link";
import useTypedSelector from "../hooks/useTypedSelector";
import UserServices from "../services/user.services";
import Home from "../components/svg/Home";
import Livestream from "../components/svg/livestream";
import Blog from "../components/svg/Blog";

interface IDashbord {
  children: React.ReactNode;
}

const LkDashbord = (props: IDashbord) => {
  const router = useRouter();
  const [activeLink, setActiveLink] = useState();
  const isAuth = useTypedSelector((state) => state.user.isAuth);
  const user = useTypedSelector((state) => state.user.user);
  const isLoading = useTypedSelector((state) => state.app.isLoading);
  const isAdmin = UserServices.findRole("admin", user);

  // useEffect(() => {
  //   if (!isAuth && !isLoading) {
  //     router.push("/");
  //   }
  // }, []);

  console.log(process.env)

  useEffect(() => {
    if (router.pathname == "/add-video" && !isAdmin) {
      router.push("/home");
    }
  }, [router.pathname]);

  return (
    <div className="lkWrapper">
      <div className="dashWrapper">
        <Link href="/">
          <a className="logo">
            <img src={logo.src} alt="logo" />
          </a>
        </Link>
        <ul className="linksDash">
          <li>
            <Link href="/home">
              <a className={router.asPath == "/home" ? "active" : ""}>
                <Home />
                <span>Home</span>
              </a>
            </Link>
          </li>
          <li>
            <Link href="/livestream">
              <a className={router.asPath == "/livestream" ? "active" : ""}>
                <Livestream />
                <span>Livestream</span>
              </a>
            </Link>
          </li>
          <li>
            <Link href="/blog">
              <a className={router.asPath == "/blog" ? "active" : ""}>
                <Blog />
                <span>Blog</span>
              </a>
            </Link>
          </li>
        </ul>
        <div className="bottomEls">
          <Link href="#">
            <a>
              <div className="settings">
                <div className="icon">
                  <svg
                    width="21"
                    height="21"
                    viewBox="0 0 21 21"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M20.1025 12.2101L18.2642 10.7726C18.2875 10.5509 18.3075 10.2918 18.3075 10.0176C18.3075 9.74343 18.2883 9.48429 18.2642 9.26261L20.1042 7.82429C20.4458 7.55429 20.5392 7.07511 20.3217 6.67597L18.41 3.36843C18.2058 2.99511 17.7583 2.80343 17.3042 2.97093L15.135 3.84175C14.7192 3.54175 14.2833 3.28843 13.8325 3.08593L13.5025 0.785112C13.4483 0.348433 13.0683 0.0184326 12.6192 0.0184326H8.78585C8.33667 0.0184326 7.95753 0.348433 7.90417 0.778433L7.57335 3.08761C7.13667 3.28429 6.70753 3.53429 6.27335 3.84343L4.09835 2.97011C3.69081 2.81261 3.20331 2.98925 3.00081 3.36093L1.08667 6.67261C0.860849 7.05429 0.954169 7.55011 1.30335 7.82679L3.14167 9.26429C3.11249 9.54511 3.09835 9.78929 3.09835 10.0185C3.09835 10.2477 3.11253 10.4918 3.14167 10.7735L1.30167 12.2118C0.95999 12.4826 0.86749 12.9618 1.08499 13.3601L2.99667 16.6676C3.20085 17.0401 3.64417 17.2334 4.10249 17.0651L6.27167 16.1943C6.68667 16.4935 7.12249 16.7468 7.57335 16.9501L7.90335 19.2501C7.95749 19.6884 8.33667 20.0184 8.78667 20.0184H12.62C13.0692 20.0184 13.4492 19.6884 13.5025 19.2584L13.8333 16.9501C14.27 16.7526 14.6983 16.5034 15.1333 16.1934L17.3083 17.0668C17.4133 17.1076 17.5225 17.1284 17.635 17.1284C17.9583 17.1284 18.2558 16.9518 18.4058 16.6768L20.3258 13.3518C20.5392 12.9618 20.4458 12.4826 20.1025 12.2101ZM10.7025 13.3518C8.86417 13.3518 7.36917 11.8568 7.36917 10.0184C7.36917 8.18011 8.86417 6.68511 10.7025 6.68511C12.5408 6.68511 14.0358 8.18011 14.0358 10.0184C14.0358 11.8568 12.5408 13.3518 10.7025 13.3518Z"
                      fill="#BEC5DF"
                    />
                  </svg>
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
      </div>

      <div className="contentWrapper">{props.children}</div>
    </div>
  );
};

export default LkDashbord;
