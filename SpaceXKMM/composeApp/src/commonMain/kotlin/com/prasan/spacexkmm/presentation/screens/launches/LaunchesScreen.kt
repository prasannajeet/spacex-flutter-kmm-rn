package com.prasan.spacexkmm.presentation.screens.launches

import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import com.prasan.spacexkmm.presentation.components.ScreenWithLoader
import com.prasan.spacexkmm.presentation.screens.companyInfo.CompanyInfoViewModel

@Composable
fun LaunchesScreen(
    onBackPress: () -> Unit = {},
    onCompose: () -> Unit = {}
) {
    ///val viewModel = koinViewModel<LaunchesViewModel>()
    //BackHandler(onBack = onBackPress)
    LaunchedEffect(key1 = "state") {
        onCompose()
    }
    /*val stateValue = viewModel.viewState.collectAsStateWithLifecycle()
    ScreenWithLoader(isRefreshing = stateValue.value.isLoading, onRefresh = {viewModel.refresh()}) {
        val state = stateValue.value.result
        state?.let {result ->
            result.onSuccess {
                Text(text = it.toString())
            }.onFailure {
                Text(text = "Error: ${it.message}")
            }
        } ?: {}
    }*/
}