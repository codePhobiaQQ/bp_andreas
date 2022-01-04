import "bootstrap/dist/css/bootstrap-grid.css";
import "bootstrap/dist/css/bootstrap.min.css";
import "../styles/main.sass";
import "../styles/test.sass";
import "../styles/admin.scss";
import "../styles/teachers.sass";
import "../styles/LoaderPage.css";
import "../styles/Circles.sass";
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
import {AnimatePresence} from "framer-motion";


const MyApp: FC<AppProps> = ({ Component, pageProps }) => {
  const dispatch = useDispatch();
  const isLoading = useTypedSelector((state) => state.app.isLoading);
  const route = useRouter();

  useEffect(() => {
    if (localStorage.getItem("token")) {
      dispatch(isLogged());
    } else {
      setTimeout(() => {
        dispatch(setLoading(false));
      }, 2000)
    }
  }, []);

  if (isLoading) {
    return (
      <AnimatePresence>
        <LoaderPage />
      </AnimatePresence>
    );
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
