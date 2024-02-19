package com.prasan.spacexkmm.data.models.dto.rockets


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class Engines(
    @SerialName("engine_loss_max")
    val engineLossMax: Int? = null,
    @SerialName("isp")
    val isp: Isp = Isp(),
    @SerialName("layout")
    val layout: String? = null,
    @SerialName("number")
    val number: Int = 0,
    @SerialName("propellant_1")
    val propellant1: String = "",
    @SerialName("propellant_2")
    val propellant2: String = "",
    @SerialName("thrust_sea_level")
    val thrustSeaLevel: ThrustSeaLevel = ThrustSeaLevel(),
    @SerialName("thrust_to_weight")
    val thrustToWeight: Double = 0.0,
    @SerialName("thrust_vacuum")
    val thrustVacuum: ThrustVacuum = ThrustVacuum(),
    @SerialName("type")
    val type: String = "",
    @SerialName("version")
    val version: String = ""
)