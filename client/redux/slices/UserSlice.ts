import { createAsyncThunk, createSlice, PayloadAction } from "@reduxjs/toolkit";
import { AppThunk } from "../store";
import { IUser } from "../../models/IUser";
import UserServices from "../../services/user.services";
import AuthServices from "../../services/auth.services";
import { setLoading } from "./AppSlice";
import {isAdmin, isSuperAdmin} from "../../functions/isAdmin";

export interface CounterState {
  value: number;
  isAuth: boolean;
  user: IUser;
  isAdmin: boolean;
  isSuperAdmin: boolean;
}

const initialState: CounterState = {
  value: 0,
  isAuth: false,
  user: {} as IUser,
  isAdmin: false,
  isSuperAdmin: false,
};

export const isLogged = createAsyncThunk("logged", async (_, thunkAPI) => {
  try {
    const response = await UserServices.logged();
    const user: IUser = response.data;
    thunkAPI.dispatch(setUser(user));
    if (isAdmin(user.roles)) thunkAPI.dispatch(setAdmin(true));
    if (isSuperAdmin(user.roles)) thunkAPI.dispatch(setSuperAdmin(true));
    thunkAPI.dispatch(setLoading(false));
    return user;
  } catch (e) {
    console.log(e.message);
    thunkAPI.dispatch(setLoading(false));
  }
});

export const userReducer = createSlice({
  name: "user",
  initialState,
  reducers: {
    Logout: (state) => {
      state.user = {} as IUser;
      state.isAuth = false;
      localStorage.removeItem('token');
    },
    setUser: (state, action: PayloadAction<IUser>) => {
      state.user = action.payload;
      state.isAuth = true;
    },
    setAdmin: (state, action: PayloadAction<boolean>) => {
      state.isAdmin = action.payload;
    },
    setSuperAdmin: (state, action: PayloadAction<boolean>) => {
      state.isSuperAdmin = action.payload;
    }
  },
  extraReducers: (builder) => {
    builder.addCase(isLogged.fulfilled, (state, action) => {});
  },
});

export const { setUser, Logout, setAdmin, setSuperAdmin } =
  userReducer.actions;

export default userReducer.reducer;
