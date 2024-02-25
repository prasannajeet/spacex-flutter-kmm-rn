package com.prasan.spacexkmm.presentation.screens.rockets

import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalContext
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Modifier
import com.prasan.spacexkmm.expectactual.CommonParcelize
import com.prasan.spacexkmm.presentation.components.ScreenWithLoader
import com.prasan.spacexkmm.presentation.screens.rockets.circuit.RocketEvent
import com.prasan.spacexkmm.presentation.screens.rockets.circuit.RocketState
import com.slack.circuit.runtime.screen.Screen

@CommonParcelize
object RocketScreen: Screen
@Composable
fun RocketScreenContent(
    modifier: Modifier = Modifier,
    state: RocketState,
) {

    val coroutineScope = rememberCoroutineScope()
    /*val viewModel = koinViewModel<SpaceXRocketsViewModel>()
    BackHandler(onBack = onBackPress)*/
    LaunchedEffect(key1 = "state") {
        state.eventSink(RocketEvent.OnLoad, coroutineScope)
    }
    ScreenWithLoader(modifier = modifier, isRefreshing = state.isLoading, onRefresh = {state.eventSink(RocketEvent.OnRefresh, coroutineScope)}) {
        /*state?.let {result ->
            result.onSuccess {
                Text(text = it.toString())
            }.onFailure {
                Text(text = "Error: ${it.message}")
            }
        } ?: {}*/

        Text(text = state.toString())
    }
}