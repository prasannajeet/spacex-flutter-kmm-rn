package com.prasan.spacexkmm.presentation.screens

import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import moe.tlaster.precompose.navigation.BackHandler

@Composable
fun CompanyInfoScreen(viewModel: CompanyInfoViewModel,
                      onBackPress: () -> Unit = {},
                      onCompose: () -> Unit = {}
) {

    BackHandler(onBack = onBackPress)
    LaunchedEffect(key1 = "state") {
        onCompose()
    }

    if(viewModel.viewState.value.isLoading) {
        Text(text = "Loading...")
    } else {
        val state = viewModel.viewState.value.result
        state?.let {result ->
            result.onSuccess {
                Text(text = it.toString())
            }.onFailure {
                Text(text = "Error: ${it.message}")
            }
        } ?: Text(text = "No data")
    }

}