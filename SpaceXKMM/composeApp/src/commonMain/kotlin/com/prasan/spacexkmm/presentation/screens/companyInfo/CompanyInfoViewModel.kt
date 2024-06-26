package com.prasan.spacexkmm.presentation.screens.companyInfo

import com.prasan.spacexkmm.data.models.dao.CompanyInfo
import com.prasan.spacexkmm.domain.GetCompanyInfoUseCase
import com.slack.circuit.runtime.CircuitUiEvent
import com.slack.circuit.runtime.CircuitUiState
import com.slack.circuit.runtime.presenter.Presenter
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

class CompanyInfoViewModel(private val useCase: GetCompanyInfoUseCase) {
    private val _viewState = MutableStateFlow(CompanyInfoState())
    val viewState = _viewState.asStateFlow()
    init {
        refresh()
    }

    fun refresh() {
        _viewState.value = _viewState.value.copy(
            isLoading = true,
            result = null
        )
//        viewModelScope.launch {
//            useCase(Unit).collectLatest { result ->
//                result.onSuccess { data ->
//                    println("On Success:")
//                    _viewState.value = _viewState.value.copy(
//                        isLoading = false,
//                        result = Result.success(data)
//                    )
//                }.onFailure { error ->
//                    println("On Failure")
//                    _viewState.value = _viewState.value.copy(
//                        isLoading = false,
//                        result = Result.failure(error)
//                    )
//                }
//            }
//        }
    }
}


data class CompanyInfoState(
    val isLoading: Boolean = true,
    val result: Result<CompanyInfo>? = null
): CircuitUiState

sealed class CompanyInfoEvent: CircuitUiEvent {
    object OnBackPress: CompanyInfoEvent()
    object OnCompose: CompanyInfoEvent()
    object OnRefresh: CompanyInfoEvent()
}