package com.prasan.spacexkmm.presentation.screens.rockets.circuit

import com.slack.circuit.runtime.CircuitUiEvent

sealed interface RocketEvent: CircuitUiEvent {
    data object OnLoad: RocketEvent
    data object OnRefresh: RocketEvent
}