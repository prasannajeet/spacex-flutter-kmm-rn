package com.prasan.spacexkmm.expectactual

import android.content.Context
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkRequest
import io.ktor.client.HttpClient
import io.ktor.client.engine.HttpClientEngine
import io.ktor.client.engine.android.Android
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.asStateFlow
import org.koin.core.module.Module
import org.koin.core.module.dsl.singleOf
import org.koin.dsl.module

actual class ConnectivityManager(private val connectivityMgr: android.net.ConnectivityManager): android.net.ConnectivityManager.NetworkCallback() {

    private val _networkFlow =  MutableStateFlow(isNetworkAvailable())
    actual val networkConnectionStateFlow: SharedFlow<Boolean>
        get() = _networkFlow.asStateFlow()

    actual fun isNetworkAvailable(): Boolean {
        val activeNetwork = connectivityMgr.activeNetwork
        return activeNetwork?.let {
            val networkCapabilities = connectivityMgr.getNetworkCapabilities(it)
            networkCapabilities?.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
        } ?: false
    }

    init {
        val builder = NetworkRequest.Builder()
        val networkRequest = builder.build()
        connectivityMgr.registerNetworkCallback(networkRequest, this)
    }

    private fun stopListeningChanges() {
        connectivityMgr.unregisterNetworkCallback(this)
    }

    override fun onCapabilitiesChanged(network: Network, networkCapabilities: NetworkCapabilities) {
        _networkFlow.value = networkCapabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
    }

    override fun onLost(network: Network) {
        _networkFlow.value = false
    }
}

actual class PlatformKtorClientEngine {
    actual fun factory(): HttpClientEngine {
        return HttpClient(Android).engine
    } 
}

actual val platformModule: Module = module {

    single {
        get<Context>().getSystemService(Context.CONNECTIVITY_SERVICE) as android.net.ConnectivityManager
    }
    singleOf(::ConnectivityManager)
    singleOf(::PlatformKtorClientEngine)
}