package com.prasan.spacexkmm.data.models.dto.launches


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class Patch(
    @SerialName("large")
    val large: String,
    @SerialName("small")
    val small: String
)