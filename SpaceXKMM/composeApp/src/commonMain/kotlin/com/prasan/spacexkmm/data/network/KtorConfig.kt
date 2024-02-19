package com.prasan.spacexkmm.data.network

import com.prasan.spacexkmm.expectactual.ConnectivityManager
import io.ktor.client.*
import io.ktor.client.call.*
import io.ktor.client.request.*
import io.ktor.client.request.forms.*
import io.ktor.client.utils.*
import io.ktor.http.*
import io.ktor.http.ContentType.*
import io.ktor.utils.io.errors.*
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.cancellable
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.flow


class HttpWebServiceHandler(
    client: HttpClient,
    connectivityInfoManager: ConnectivityManager,
) {
    @PublishedApi internal val httpClient = client
    @PublishedApi internal val connectivityMgr = connectivityInfoManager

    suspend inline fun <reified NetworkResponse : Any> performHttpConnection(
        httpConnectionType: HttpConnectivityType,
    ): Flow<Result<NetworkResponse>> {

        println("Inside performHttpConnection")
        return flow {
            when {
                connectivityMgr.isNetworkAvailable() -> {
                    println("Network is available")
                    val response = httpClient.run {

                        request {
                            url {
                                encodedPath = httpConnectionType.path
                                if(httpConnectionType is HttpConnectivityType.GET) {
                                    httpConnectionType.queryParams.forEach { entry ->
                                        parameters.append(entry.key, entry.value)
                                    }
                                }
                            }

                            method = httpConnectionType.method

                            setBody(
                                when (httpConnectionType) {
                                    is HttpConnectivityType.MULTIPART -> {
                                        contentType(MultiPart.Any)
                                        MultiPartFormDataContent(httpConnectionType.multiPart)
                                    }

                                    is HttpConnectivityType.PATCH -> {
                                        contentType(Application.Json)
                                        httpConnectionType.request
                                    }

                                    is HttpConnectivityType.POST -> {
                                        contentType(Application.Json)
                                        httpConnectionType.request
                                    }

                                    is HttpConnectivityType.PUT -> {
                                        contentType(Application.Json)
                                        httpConnectionType.request
                                    }

                                    else -> EmptyContent
                                }
                            )
                        }
                    }
                    println("Response code is ${response.status}")
                    when (response.status) {
                        HttpStatusCode.NoContent -> throw IllegalStateException("Cannot get 204 as status code")
                        HttpStatusCode.OK -> {
                            val result = response.body<NetworkResponse>()
                            println("Sending success to UI with result $result")
                            emit(Result.success(result))
                        }
                        else -> throw IOException("Received error from server with code ${response.status}")
                    }
                    httpClient.close()
                    return@flow
                }
                else -> throw Exception("No network available")

            }
        }.catch { exception ->
            println("Exception is $exception")
            emit(Result.failure(exception))
            return@catch
        }.cancellable()
    }
}