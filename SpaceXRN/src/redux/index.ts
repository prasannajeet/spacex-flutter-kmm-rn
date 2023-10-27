import {configureStore} from '@reduxjs/toolkit';
import {counterReducers} from './slices/dummyreducer';
import {networkFetchReducer} from '../data/network/networkthunk';

/**
 * Configures the Redux store with the provided reducers and enables the Redux DevTools extension.
 * @returns The configured Redux store.
 */
const store = configureStore({
  reducer: {
    counter: counterReducers,
    networkFetch: networkFetchReducer,
  },
  devTools: true,
});

export default store;
