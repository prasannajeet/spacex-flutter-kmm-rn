import {createSlice} from '@reduxjs/toolkit';

interface AppTheme {
  isDarkTheme: boolean;
}

const initialState: AppTheme = {
  isDarkTheme: false,
};

const themeSlice = createSlice({
  name: 'appTheme',
  initialState,
  reducers: {
    switchTheme: state => {
      state.isDarkTheme = !state.isDarkTheme;
    },
  },
});

export const {switchTheme} = themeSlice.actions;

export const themeReducer = themeSlice.reducer;
