package com.prasan.spacexkmm.presentation.screens.companyInfo

import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import com.prasan.spacexkmm.presentation.components.ScreenWithLoader
import moe.tlaster.precompose.flow.collectAsStateWithLifecycle
import moe.tlaster.precompose.koin.koinViewModel
import moe.tlaster.precompose.navigation.BackHandler


@Composable
fun CompanyInfoScreen(
    onBackPress: () -> Unit = {},
    onCompose: () -> Unit = {}
) {
    val viewModel = koinViewModel<CompanyInfoViewModel>()
    BackHandler(onBack = onBackPress)
    LaunchedEffect(key1 = "state") {
        onCompose()
    }
    val stateValue = viewModel.viewState.collectAsStateWithLifecycle()
    ScreenWithLoader(isRefreshing = stateValue.value.isLoading, onRefresh = {viewModel.refresh()}) {
        val state = stateValue.value.result
        state?.let {result ->
            result.onSuccess {
                Text(text = it.toString())
            }.onFailure {
                Text(text = "Error: ${it.message}")
            }
        } ?: Text(text = "No State data obtained yet.")
    }
}
