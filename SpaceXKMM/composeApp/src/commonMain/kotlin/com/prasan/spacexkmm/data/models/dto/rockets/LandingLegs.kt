package com.prasan.spacexkmm.data.models.dto.rockets


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class LandingLegs(
    @SerialName("material")
    val material: String? = null,
    @SerialName("number")
    val number: Int = 0
)