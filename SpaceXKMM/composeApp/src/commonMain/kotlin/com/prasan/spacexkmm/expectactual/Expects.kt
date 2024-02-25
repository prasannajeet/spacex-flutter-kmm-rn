package com.prasan.spacexkmm.expectactual

import io.ktor.client.engine.HttpClientEngine
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

@Target(AnnotationTarget.CLASS)
@Retention(AnnotationRetention.BINARY)
expect annotation class CommonParcelize()

// For Android @TypeParceler
@OptIn(ExperimentalMultiplatform::class)
@OptionalExpectation
@Retention(AnnotationRetention.SOURCE)
@Repeatable
@Target(AnnotationTarget.CLASS, AnnotationTarget.PROPERTY)
expect annotation class CommonTypeParceler<T, P : CommonParceler<in T>>()

// For Android Parceler
expect interface CommonParceler<T>