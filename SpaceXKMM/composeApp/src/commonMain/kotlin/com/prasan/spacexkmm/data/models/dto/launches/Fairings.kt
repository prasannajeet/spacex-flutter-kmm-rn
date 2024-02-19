package com.prasan.spacexkmm.data.models.dto.launches


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class Fairings(
    @SerialName("recovered")
    val recovered: Boolean? = false,
    @SerialName("recovery_attempt")
    val recoveryAttempt: Boolean? = false,
    @SerialName("reused")
    val reused: Boolean? = false,
    @SerialName("ships")
    val ships: List<String> = emptyList()
)