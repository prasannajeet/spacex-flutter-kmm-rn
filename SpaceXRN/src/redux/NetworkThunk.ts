import {createAsyncThunk, createSlice} from '@reduxjs/toolkit';
import axios from 'axios';
import {NetworkFetchState, Status} from '../types/NetworkCallType';

export const fetchData = createAsyncThunk(
  'data/fetchData',
  async (url: string) => {
    const response = await axios.get(url);
    return response.data;
  },
);

const initialNetworkFetchState: NetworkFetchState = {
  data: null,
  status: Status.IDLE,
  error: null,
};

/**
 * A slice of the Redux store that handles network fetch data.
 */
/**
 * A Redux slice that handles the network fetch state of the application.
 * @remarks
 * This slice handles the pending, fulfilled, and rejected states of a fetch data request.
 * It also handles the unmount state of the component.
 * @public
 */
const dataSlice = createSlice({
  name: 'networkFetch',
  initialState: initialNetworkFetchState,
  reducers: {
    /**
     * Handles the unmount state of the component.
     * @param state - The current state of the slice.
     */
    reset: state => {
      state.status = Status.IDLE;
      state.error = null;
      state.data = null;
    },
  },
  extraReducers: {
    /**
     * Handles the pending state of a fetch data request.
     * @param state - The current state of the slice.
     */
    [fetchData.pending.type]: state => {
      state.status = Status.LOADING;
    },
    /**
     * Handles the fulfilled state of a fetch data request.
     * @param state - The current state of the slice.
     * @param action - The action that was dispatched.
     */
    [fetchData.fulfilled.type]: (state, action) => {
      state.status = Status.SUCCEEDED;
      state.data = action.payload;
      state.error = null;
    },
    /**
     * Handles the rejected state of a fetch data request.
     * @param state - The current state of the slice.
     * @param action - The action that was dispatched.
     */
    [fetchData.rejected.type]: (state, action) => {
      state.status = Status.FAILED;
      state.error = action.error.message;
      state.data = null;
    },
  },
});

export const networkFetchReducer = dataSlice.reducer;
export const networkActions = dataSlice.actions;
