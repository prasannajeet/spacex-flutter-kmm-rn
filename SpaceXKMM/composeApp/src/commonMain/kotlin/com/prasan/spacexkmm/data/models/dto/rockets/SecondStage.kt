package com.prasan.spacexkmm.data.models.dto.rockets


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class SecondStage(
    @SerialName("burn_time_sec")
    val burnTimeSec: Int? = 0,
    @SerialName("engines")
    val engines: Int = 0,
    @SerialName("fuel_amount_tons")
    val fuelAmountTons: Double = 0.0,
    @SerialName("payloads")
    val payloads: Payloads = Payloads(),
    @SerialName("reusable")
    val reusable: Boolean = false,
    @SerialName("thrust")
    val thrust: Thrust = Thrust()
)