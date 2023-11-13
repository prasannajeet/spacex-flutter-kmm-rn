import {createSlice} from '@reduxjs/toolkit';
import {Launch} from '../types/LaunchType';
import {Rocket} from '../types/Rocket';
import {SpaceX} from '../types/SpaceX';

type AppInfoDataType = {
  companyInfo: SpaceX | null;
  launches: Launch[] | null;
  rockets: Rocket[] | null;
};

const initialAppInfoDataState: AppInfoDataType = {
  companyInfo: null,
  launches: null,
  rockets: null,
};

/**
 * A slice of the Redux store that handles app data.
 */
const appdataSlice = createSlice({
  name: 'appData',
  initialState: initialAppInfoDataState,
  reducers: {
    updateCompanyInfo: (state, action) => {
      state.companyInfo = action.payload;
    },
    updateLaunches: (state, action) => {
      state.launches = action.payload;
    },
    updateRockets: (state, action) => {
      state.rockets = action.payload;
    },
    reset: state => {
      state.companyInfo = null;
      state.launches = null;
      state.rockets = null;
    },
  },
});

export const {updateCompanyInfo, updateLaunches, updateRockets, reset} =
  appdataSlice.actions;

export const appdataReducer = appdataSlice.reducer;
