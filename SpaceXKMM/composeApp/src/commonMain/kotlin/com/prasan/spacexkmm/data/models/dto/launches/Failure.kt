package com.prasan.spacexkmm.data.models.dto.launches


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class Failure(
    @SerialName("altitude")
    val altitude: Int?,
    @SerialName("reason")
    val reason: String,
    @SerialName("time")
    val time: Int
)