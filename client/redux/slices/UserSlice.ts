import { createAsyncThunk, createSlice, PayloadAction } from "@reduxjs/toolkit";
import { AppThunk } from "../store";
import { IUser } from "../../models/IUser";
import UserServices from "../../services/user.services";
import AuthServices from "../../services/auth.services";
import { setLoading } from "./AppSlice";

export interface CounterState {
  value: number;
  isAuth: boolean;
  user: IUser;
}

const initialState: CounterState = {
  value: 0,
  isAuth: false,
  user: {} as IUser,
};

export const isLogged = createAsyncThunk("logged", async (_, thunkAPI) => {
  try {
    const response = await UserServices.logged();
    const user = response.data;
    thunkAPI.dispatch(setUser(user));
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
  },
  extraReducers: (builder) => {
    builder.addCase(isLogged.fulfilled, (state, action) => {});
    // builder.addCase(Logout.fulfilled, (state, action) => {
    //   state.isAuth = false;
    // });
  },
});

export const { setUser, Logout } =
  userReducer.actions;

export default userReducer.reducer;
