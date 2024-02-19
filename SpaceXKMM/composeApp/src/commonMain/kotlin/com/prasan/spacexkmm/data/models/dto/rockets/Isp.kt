package com.prasan.spacexkmm.data.models.dto.rockets


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class Isp(
    @SerialName("sea_level")
    val seaLevel: Int = 0,
    @SerialName("vacuum")
    val vacuum: Int = 0
)