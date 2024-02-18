package com.prasan.spacexkmm.data.network

import io.ktor.client.utils.EmptyContent
import io.ktor.http.HttpMethod
import io.ktor.http.content.OutgoingContent
import io.ktor.http.content.PartData

sealed class HttpConnectivityType(open val path: String, val method: HttpMethod) {
    class GET(override val path: String, val queryParams: Map<String, String> = emptyMap()) : HttpConnectivityType(path, HttpMethod.Get)
    class POST(override val path: String, val request: Any = EmptyContent) :
        HttpConnectivityType(path, HttpMethod.Post)

    class PUT(override val path: String, val request: OutgoingContent.ByteArrayContent) :
        HttpConnectivityType(path, HttpMethod.Put)

    class PATCH(override val path: String, val request: Any = EmptyContent) :
        HttpConnectivityType(path, HttpMethod.Patch)

    class DELETE(override val path: String) : HttpConnectivityType(path, HttpMethod.Delete)
    class MULTIPART(override val path: String, val multiPart: List<PartData>) :
        HttpConnectivityType(path, HttpMethod.Post)
}