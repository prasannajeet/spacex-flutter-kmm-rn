package com.prasan.spacexkmm.data.models.dto.rockets


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class Height(
    @SerialName("feet")
    val feet: Double = 0.0,
    @SerialName("meters")
    val meters: Double = 0.0
)