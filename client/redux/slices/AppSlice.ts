import {createAsyncThunk, createSlice, PayloadAction } from '@reduxjs/toolkit'
import { AppThunk } from '../store'
import {AuthResponse} from "../../models/response/AuthResponse";
import { IUser } from '../../models/IUser';
import UserServices from "../../services/user.services";
import {isLogged, setUser} from "./UserSlice";

export interface appState {
  isLoading: boolean;
  isError: boolean;
  errorMessage: string;
}

const initialState: appState = {
  isLoading: true,
  isError: false,
  errorMessage: "",
}

export const errorTest = createAsyncThunk(
  'app/test-error',
  async (message, thunkAPI) => {
    console.log(message);
  }
)

export const appReducer = createSlice({
  name: 'app',
  initialState,
  reducers: {
    setLoading: (state, action: PayloadAction<boolean>) => {
      state.isLoading = action.payload
    },
    showError: (state, action: PayloadAction<string>) => {
      state.isError = true;
      state.errorMessage = action.payload;
    },
    hideError: (state) => {
      state.isError = false;
      state.errorMessage = "";
    },
  },
  extraReducers: (builder) => {
    builder.addCase(errorTest.fulfilled, (state, action) => {})
  }
})
export const { setLoading, showError, hideError } = appReducer.actions

export default appReducer.reducer
