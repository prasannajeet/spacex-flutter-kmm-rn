/**
 * This file exports a Redux slice for a counter reducer. It defines the initial state and the reducer functions for incrementing and decrementing the counter value.
 * @packageDocumentation
 */

import { createSlice } from "@reduxjs/toolkit";

interface CounterState {
        value: number;
}

const initialCounterState: CounterState = { value: 0 };

/**
 * A Redux slice for a counter reducer.
 */
const counterSlice = createSlice({
        name: 'counter',
        initialState: initialCounterState,
        reducers: {
            /**
             * A reducer function that increments the counter value by 1.
             * @param state - The current state of the counter.
             */
            increment: state => {
                // Redux Toolkit allows us to write "mutating" logic in reducers. It
                // doesn't actually mutate the state because it uses the immer library,
                // which detects changes to a "draft state" and produces a brand new
                // immutable state based off those changes
                state.value += 1
            },
            /**
             * A reducer function that decrements the counter value by 1.
             * @param state - The current state of the counter.
             */
            decrement: state => {
                state.value -= 1
            },
        }
    })

/**
 * The action creators for the counter slice.
 */
export const counterActions = counterSlice.actions;

/**
 * The reducer function for the counter slice.
 */
export const counterReducers = counterSlice.reducer;

/**
 * A selector function that returns the current value of the counter.
 * @param state - The current state of the Redux store.
 * @returns The current value of the counter.
 */
export const selectCount = (state: any) => state.counter.value
