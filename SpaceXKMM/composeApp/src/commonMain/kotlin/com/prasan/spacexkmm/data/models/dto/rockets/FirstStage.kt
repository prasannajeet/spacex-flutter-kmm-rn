package com.prasan.spacexkmm.data.models.dto.rockets


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class FirstStage(
    @SerialName("burn_time_sec")
    val burnTimeSec: Int? = 0,
    @SerialName("engines")
    val engines: Int = 0,
    @SerialName("fuel_amount_tons")
    val fuelAmountTons: Double = 0.0,
    @SerialName("reusable")
    val reusable: Boolean = false,
    @SerialName("thrust_sea_level")
    val thrustSeaLevel: ThrustSeaLevel = ThrustSeaLevel(),
    @SerialName("thrust_vacuum")
    val thrustVacuum: ThrustVacuum = ThrustVacuum()
)