package com.prasan.spacexkmm.presentation.screens

import com.prasan.spacexkmm.data.models.dao.CompanyInfo
import com.prasan.spacexkmm.domain.GetCompanyInfoUseCase
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch
import moe.tlaster.precompose.viewmodel.ViewModel
import moe.tlaster.precompose.viewmodel.viewModelScope

class CompanyInfoViewModel(private val useCase: GetCompanyInfoUseCase): ViewModel() {
    private val _viewState = MutableStateFlow(CompanyInfoState())
    val viewState = _viewState.asStateFlow()
    init {
        viewModelScope.launch {
            useCase(Unit).collectLatest { result ->
                result.onSuccess { data ->
                    _viewState.value = _viewState.value.copy(
                        isLoading = false,
                        result = Result.success(data)
                    )
                }.onFailure { error ->
                    _viewState.value = _viewState.value.copy(
                        isLoading = false,
                        result = Result.failure(error)
                    )
                }
            }
        }
    }
}

data class CompanyInfoState(
    val isLoading: Boolean = false,
    val result: Result<CompanyInfo>? = null,
)