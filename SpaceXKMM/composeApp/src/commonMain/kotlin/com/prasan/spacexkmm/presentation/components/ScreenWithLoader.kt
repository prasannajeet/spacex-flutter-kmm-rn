package com.prasan.spacexkmm.presentation.components

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.CircularProgressIndicator
import androidx.compose.material.ExperimentalMaterialApi
import androidx.compose.material.pullrefresh.PullRefreshIndicator
import androidx.compose.material.pullrefresh.pullRefresh
import androidx.compose.material.pullrefresh.rememberPullRefreshState
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier

@OptIn(ExperimentalMaterialApi::class)
@Composable
fun ScreenWithLoader(
    isRefreshing: Boolean,
    onRefresh: () -> Unit,
    content: @Composable () -> Unit,
) {
    val pullToRefreshState = rememberPullRefreshState(
        refreshing = isRefreshing,
        onRefresh = onRefresh)
    val scrollState = rememberScrollState()
    Box(modifier = Modifier.fillMaxSize().pullRefresh(pullToRefreshState),
        contentAlignment = Alignment.TopCenter) {
        if(isRefreshing) {
            // Show a loader here
            CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
        } else {
            Column(modifier = Modifier.fillMaxSize().verticalScroll(state = scrollState)) {
                content()
            }
        }

        PullRefreshIndicator(
            isRefreshing,
            pullToRefreshState,
        )
    }
}
