package com.prasan.spacexkmm.data.models.dto.rockets


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class CompositeFairing(
    @SerialName("diameter")
    val diameter: DiameterX = DiameterX(),
    @SerialName("height")
    val height: HeightX = HeightX()
)