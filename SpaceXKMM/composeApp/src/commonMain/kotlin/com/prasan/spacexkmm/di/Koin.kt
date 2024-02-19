package com.prasan.spacexkmm.di

import com.prasan.spacexkmm.data.interfaces.IRemoteDataSource
import com.prasan.spacexkmm.data.interfaces.IRepository
import com.prasan.spacexkmm.data.models.mapper.CompanyInfoResponseMapper
import com.prasan.spacexkmm.data.network.ApplicationRepository
import com.prasan.spacexkmm.data.network.ApplicationWebService
import com.prasan.spacexkmm.data.network.HttpWebServiceHandler
import com.prasan.spacexkmm.domain.GetCompanyInfoUseCase
import com.prasan.spacexkmm.domain.GetLaunchesUseCase
import com.prasan.spacexkmm.domain.GetSpaceXRocketsUseCase
import com.prasan.spacexkmm.expectactual.PlatformKtorClientEngine
import com.prasan.spacexkmm.expectactual.platformModule
import com.prasan.spacexkmm.presentation.screens.companyInfo.CompanyInfoViewModel
import com.prasan.spacexkmm.presentation.screens.launches.LaunchesViewModel
import com.prasan.spacexkmm.presentation.screens.rockets.SpaceXRocketsViewModel
import io.ktor.client.HttpClient
import io.ktor.client.plugins.HttpRequestRetry
import io.ktor.client.plugins.HttpTimeout
import io.ktor.client.plugins.cache.HttpCache
import io.ktor.client.plugins.contentnegotiation.ContentNegotiation
import io.ktor.client.plugins.defaultRequest
import io.ktor.http.URLProtocol
import io.ktor.serialization.kotlinx.json.json
import kotlinx.serialization.json.Json
import org.koin.core.context.startKoin
import org.koin.core.module.Module
import org.koin.core.module.dsl.bind
import org.koin.core.module.dsl.singleOf
import org.koin.core.qualifier.StringQualifier
import org.koin.core.qualifier.named
import org.koin.dsl.module

fun initKoin(appModule: Module) {
    //val koinApplication =
        startKoin {
            modules(
                coreModule,
                platformModule,
                appModule
            )
    }

//    // Dummy initialization logic, making use of appModule declarations for demonstration purposes.
//    val koin = koinApplication.koin
//    // doOnStartup is a lambda which is implemented in Swift on iOS side
//    val doOnStartup = koin.get<() -> Unit>(named("doOnStartup"))
//    doOnStartup.invoke()

    //val kermit = koin.get<Logger> { parametersOf(null) }
    //val appId = koin.get<String>(named("bundle_identifier"))
    //kermit.log(Severity.Debug, message = "App Id ---- $appId", throwable = null)

    //return koinApplication
}

private val coreModule = module {

    single(named("BaseUrl")) {
        "api.spacexdata.com/v4"
    }
    single {
        HttpClient(get<PlatformKtorClientEngine>().factory()) {

            expectSuccess = false

            install(HttpCache)

            install(ContentNegotiation) {
                json(
                    Json {
                        prettyPrint = true
                        isLenient = true
                        ignoreUnknownKeys = true
                    }
                )
            }

            install(HttpTimeout) {
                socketTimeoutMillis = 2000
                connectTimeoutMillis = 2000
                connectTimeoutMillis = 2000
            }

//            install(Logging) {
//                level = LogLevel.ALL
//                logger = object : io.ktor.client.plugins.logging.Logger {
//                    override fun log(message: String) {
//                        get<Logger>(parameters = { parametersOf("Ktor-Log") }).log(
//                            Severity.Debug,
//                            "KtorLogging",
//                            null,
//                            message
//                        )
//                    }
//                }
//            }

            install(HttpRequestRetry) {
                maxRetries = 3
//                retryOnExceptionIf { _, cause ->
//                    cause is NoNetworkAvailableException || cause is SocketTimeoutException
//                }
                delayMillis { retry ->
                    retry * 2000L
                } // retries in 2, 4, 8, etc. seconds
            }

            defaultRequest {
                url {
                    protocol = URLProtocol.HTTPS
                    host = get(StringQualifier("BaseUrl"))
                    println("Host is $host")
                    /*parameters.append("appid", apiKey)
                    parameters.append("exclude", "minutely,hourly")*/
                }
            }
        }
    }

    // Initializing the layers
    singleOf(::ApplicationWebService) { bind<IRemoteDataSource>() }
    single<IRepository> { ApplicationRepository(get()) }
    single<IRemoteDataSource> { ApplicationWebService(get()) }
    single { GetCompanyInfoUseCase(get(), get()) }
    single { GetLaunchesUseCase(get()) }
    single { GetSpaceXRocketsUseCase(get()) }
    single { CompanyInfoResponseMapper() }
    factory { CompanyInfoViewModel(get()) }
    factory { LaunchesViewModel(get()) }
    factory { SpaceXRocketsViewModel(get()) }
    single { HttpWebServiceHandler(get(), get()) }
}
