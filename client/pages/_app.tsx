import "bootstrap/dist/css/bootstrap-grid.css";
import "bootstrap/dist/css/bootstrap.min.css";
import "../styles/main.sass";
import "../styles/admin.scss";
import "../styles/LoaderPage.css";
import type { AppProps } from "next/app";
import React, { FC, useEffect, useState } from "react";
import withRedux from "next-redux-wrapper";
import { makeStore } from "../redux/store";
import { useDispatch } from "react-redux";
import { setUser, isLogged } from "../redux/slices/UserSlice";
import { setLoading } from "../redux/slices/AppSlice";
import useTypedSelector from "../hooks/useTypedSelector";
import LoaderPage from "../components/LoaderPage";
import { useRouter } from "next/router";
import Error from "../hoc/Error";
// import 'swiper/css';
// import 'swiper/css/effect-fade';

const MyApp: FC<AppProps> = ({ Component, pageProps }) => {
  const dispatch = useDispatch();
  const isLoading = useTypedSelector((state) => state.app.isLoading);
  const route = useRouter();

  useEffect(() => {
    if (localStorage.getItem("token")) {
      dispatch(isLogged());
    } else {
      // route.push("/");
      dispatch(setLoading(false));
    }
  }, []);

  if (isLoading) {
    return <LoaderPage />;
  }

  return (
      <Error>
        <Component {...pageProps} />
      </Error>
    );
};

// const makeStore = () => store;
// const wrapper = createWrapper(makeStore)

export default withRedux(makeStore)(MyApp);
