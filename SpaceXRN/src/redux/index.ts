import {configureStore} from '@reduxjs/toolkit';
import {networkFetchReducer} from './NetworkThunk';
import {themeReducer} from './ThemeSlice';

/**
 * Configures the Redux store with the provided reducers and enables the Redux DevTools extension.
 * @returns The configured Redux store.
 */
const store = configureStore({
  reducer: {
    networkFetch: networkFetchReducer,
    themeSwitcher: themeReducer,
  },
  devTools: true,
});

export default store;
