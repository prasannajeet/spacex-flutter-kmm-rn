package com.prasan.spacexkmm.presentation.screens.launches

import com.prasan.spacexkmm.data.models.dao.CompanyInfo
import com.prasan.spacexkmm.domain.GetLaunchesUseCase
import com.prasan.spacexkmm.presentation.screens.companyInfo.CompanyInfoState
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

class LaunchesViewModel(private val getLaunchesUseCase: GetLaunchesUseCase) {
    private val _viewState = MutableStateFlow(LaunchesScreenState())
    val viewState = _viewState.asStateFlow()
    init {
        refresh()
    }
    fun refresh() {
        /*viewModelScope.launch {
            getLaunchesUseCase(Unit).collectLatest { result ->
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
        }*/
    }
}

data class LaunchesScreenState(
    val isLoading: Boolean = true,
    val result: Result<String>? = null,
)