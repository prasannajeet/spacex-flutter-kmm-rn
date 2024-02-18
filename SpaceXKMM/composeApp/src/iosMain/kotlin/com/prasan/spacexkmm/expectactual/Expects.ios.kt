package com.prasan.spacexkmm.expectactual

import io.ktor.client.engine.HttpClientEngine
import io.ktor.client.engine.darwin.Darwin
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharedFlow
import org.koin.core.module.Module
import org.koin.core.module.dsl.singleOf
import org.koin.dsl.module


actual class ConnectivityManager {
    actual fun isNetworkAvailable(): Boolean {
        return true;
    }

    actual val networkConnectionStateFlow: SharedFlow<Boolean>
        get() = MutableStateFlow(true)
}

actual class PlatformKtorClientEngine {
    actual fun factory(): HttpClientEngine {
        return Darwin.create() {
            configureRequest {
                setAllowsCellularAccess(true)
            }
        }
    }
}

actual val platformModule : Module = module {
    singleOf(::ConnectivityManager)
    singleOf(::PlatformKtorClientEngine)
}