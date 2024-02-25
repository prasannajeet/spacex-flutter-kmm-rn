package com.prasan.spacexkmm.presentation.screens.rockets.circuit

import com.slack.circuit.runtime.CircuitUiState
import kotlinx.coroutines.CoroutineScope

data class RocketState(
    val isLoading: Boolean = true,
    val result: String = "Blank",
    val eventSink: (RocketEvent, CoroutineScope) -> Unit
): CircuitUiState