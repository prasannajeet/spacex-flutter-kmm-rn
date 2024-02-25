package com.prasan.spacexkmm.presentation.screens.rockets.circuit

import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import com.prasan.spacexkmm.domain.GetSpaceXRocketsUseCase
import com.slack.circuit.runtime.presenter.Presenter
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.IO
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

class RocketPresenter(private val getSpaceXRocketsUseCase: GetSpaceXRocketsUseCase): Presenter<RocketState> {
    @Composable
    override fun present(): RocketState {
        var isLoadingState by remember { mutableStateOf(true) }
        var state: String by remember { mutableStateOf("") }
        return RocketState(
            isLoading = isLoadingState,
            result = state,
            eventSink = { event, coroutineScope ->
                when(event) {
                    is RocketEvent.OnLoad, RocketEvent.OnRefresh -> {
                        refresh(coroutineScope) { isLoading, result ->
                            isLoadingState = isLoading
                            result.onSuccess {
                                state = it
                            }
                        }
                    }
                }
            }
        )
    }

    private fun refresh(scope: CoroutineScope, callback: (Boolean, Result<String>) -> Unit) {
        scope.launch(Dispatchers.IO) {
            getSpaceXRocketsUseCase(Unit).collectLatest { result ->
                result.onSuccess { data ->
                    println("On Success:")
                    callback(false, Result.success(data))
                }.onFailure { error ->
                    println("On Failure")
                    callback(false, Result.failure(error))
                }
            }
        }
    }
}