import {combineReducers, configureStore} from '@reduxjs/toolkit';
import {appdataReducer} from './AppDataSlice';
import {networkFetchReducer} from './NetworkThunk';
import {themeReducer} from './ThemeSlice';

/**
 * Configures the Redux store with the provided reducers and enables the Redux DevTools extension.
 * @returns The configured Redux store.
 */

const combinedReducers = combineReducers({
  appData: appdataReducer,
  networkFetch: networkFetchReducer,
});
const store = configureStore({
  reducer: {
    appData: combinedReducers,
    themeSwitcher: themeReducer,
  },
  devTools: true,
});

export default store;
