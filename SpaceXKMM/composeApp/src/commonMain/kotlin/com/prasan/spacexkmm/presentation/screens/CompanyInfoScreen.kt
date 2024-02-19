package com.prasan.spacexkmm.presentation.screens

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material.CircularProgressIndicator
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.flow.collectLatest
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

    val stateValue = viewModel.viewState.collectAsState()

    if(stateValue.value.isLoading) {
        Box(
            contentAlignment = Alignment.Center,
            modifier = Modifier.fillMaxSize()
        ) {
            CircularProgressIndicator()
        }

    } else {
        val state = stateValue.value.result
        state?.let {result ->
            result.onSuccess {
                Text(text = it.toString())
            }.onFailure {
                Text(text = "Error: ${it.message}")
            }
        } ?: Text(text = "No data")
    }
}