package com.prasan.spacexkmm.expectactual

import io.ktor.client.engine.*
import kotlinx.coroutines.flow.SharedFlow
import org.koin.core.module.Module

expect class ConnectivityManager {
    fun isNetworkAvailable(): Boolean
    val networkConnectionStateFlow: SharedFlow<Boolean>
}

expect class PlatformKtorClientEngine {
    fun factory(): HttpClientEngine
}

expect val platformModule: Module