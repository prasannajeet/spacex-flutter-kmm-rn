package com.prasan.spacexkmm.data.models.dto.rockets


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class ThrustVacuum(
    @SerialName("kN")
    val kN: Int = 0,
    @SerialName("lbf")
    val lbf: Int = 0
)