package com.prasan.spacexkmm.presentation.screens.rockets

import com.prasan.spacexkmm.domain.GetSpaceXRocketsUseCase
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch
import moe.tlaster.precompose.viewmodel.ViewModel
import moe.tlaster.precompose.viewmodel.viewModelScope

class SpaceXRocketsViewModel(private val getSpaceXRocketsUseCase: GetSpaceXRocketsUseCase): ViewModel() {
    private val _viewState = MutableStateFlow(RocketsScreenState())
    val viewState = _viewState.asStateFlow()
    init {
        refresh()
    }
    fun refresh() {
        viewModelScope.launch {
            getSpaceXRocketsUseCase(Unit).collectLatest { result ->
                result.onSuccess { data ->
                    println("On Success:")
                    _viewState.value = _viewState.value.copy(
                        isLoading = false,
                        result = Result.success(data)
                    )
                }.onFailure { error ->
                    println("On Failure")
                    _viewState.value = _viewState.value.copy(
                        isLoading = false,
                        result = Result.failure(error)
                    )
                }
            }
        }
    }
}


data class RocketsScreenState(
    val isLoading: Boolean = true,
    val result: Result<String>? = null,
)