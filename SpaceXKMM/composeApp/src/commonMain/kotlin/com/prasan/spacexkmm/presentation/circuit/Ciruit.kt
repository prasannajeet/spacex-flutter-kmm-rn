package com.prasan.spacexkmm.presentation.circuit

import com.prasan.spacexkmm.domain.GetSpaceXRocketsUseCase
import com.prasan.spacexkmm.presentation.screens.rockets.RocketScreen
import com.prasan.spacexkmm.presentation.screens.rockets.RocketScreenContent
import com.prasan.spacexkmm.presentation.screens.rockets.circuit.RocketPresenter
import com.prasan.spacexkmm.presentation.screens.rockets.circuit.RocketState
import com.slack.circuit.runtime.CircuitContext
import com.slack.circuit.runtime.Navigator
import com.slack.circuit.runtime.presenter.Presenter
import com.slack.circuit.runtime.presenter.presenterOf
import com.slack.circuit.runtime.screen.Screen
import com.slack.circuit.runtime.ui.Ui
import com.slack.circuit.runtime.ui.ui

class ScreenFactory : Ui.Factory {
    override fun create(screen: Screen, context: CircuitContext): Ui<*>? {
        return when(screen) {
            RocketScreen -> ui<RocketState> { state, modifier ->
                RocketScreenContent(state = state, modifier = modifier)
            }
            else -> throw IllegalArgumentException("Unknown screen name: $screen")
        }
    }
}

class PresenterFactory(private val getSpaceXRocketsUseCase: GetSpaceXRocketsUseCase): Presenter.Factory {
    override fun create(
        screen: Screen,
        navigator: Navigator,
        context: CircuitContext
    ): Presenter<*>? {
        return when(screen) {
            is RocketScreen -> presenterOf {
                RocketPresenter(getSpaceXRocketsUseCase).present()
            }
            else -> null
        }
    }
}