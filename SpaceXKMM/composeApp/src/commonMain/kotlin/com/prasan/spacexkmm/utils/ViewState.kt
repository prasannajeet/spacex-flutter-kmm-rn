package com.prasan.spacexkmm.utils


sealed class ViewState<State : Any> {
    object Idle : ViewState<Nothing>()
    object Loading : ViewState<Nothing>()
    data class Success<State : Any>(val state: State) : ViewState<State>()
    data class Error<State : Any>(val state: State) : ViewState<State>()
}