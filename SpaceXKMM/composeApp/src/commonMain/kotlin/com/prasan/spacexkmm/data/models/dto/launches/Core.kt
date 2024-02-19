package com.prasan.spacexkmm.data.models.dto.launches


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class Core(
    @SerialName("core")
    val core: String?,
    @SerialName("flight")
    val flight: Int?,
    @SerialName("gridfins")
    val gridfins: Boolean? = false,
    @SerialName("landing_attempt")
    val landingAttempt: Boolean? = false,
    @SerialName("landing_success")
    val landingSuccess: Boolean? = false,
    @SerialName("landing_type")
    val landingType: String?,
    @SerialName("landpad")
    val landpad: String?,
    @SerialName("legs")
    val legs: Boolean? = false,
    @SerialName("reused")
    val reused: Boolean? = false
)