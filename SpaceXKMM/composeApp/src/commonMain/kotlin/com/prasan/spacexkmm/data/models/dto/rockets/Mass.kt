package com.prasan.spacexkmm.data.models.dto.rockets


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class Mass(
    @SerialName("kg")
    val kg: Int = 0,
    @SerialName("lb")
    val lb: Int = 0
)