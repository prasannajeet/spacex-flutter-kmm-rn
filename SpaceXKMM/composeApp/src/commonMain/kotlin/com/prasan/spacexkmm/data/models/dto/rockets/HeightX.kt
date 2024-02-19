package com.prasan.spacexkmm.data.models.dto.rockets


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class HeightX(
    @SerialName("feet")
    val feet: Double? = null,
    @SerialName("meters")
    val meters: Double? = null
)