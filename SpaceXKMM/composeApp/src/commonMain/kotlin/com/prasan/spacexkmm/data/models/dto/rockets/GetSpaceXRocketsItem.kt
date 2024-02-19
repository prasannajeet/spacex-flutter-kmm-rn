package com.prasan.spacexkmm.data.models.dto.rockets


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class GetSpaceXRocketsItem(
    @SerialName("active")
    val active: Boolean = false,
    @SerialName("boosters")
    val boosters: Int = 0,
    @SerialName("company")
    val company: String = "",
    @SerialName("cost_per_launch")
    val costPerLaunch: Int = 0,
    @SerialName("country")
    val country: String = "",
    @SerialName("description")
    val description: String = "",
    @SerialName("diameter")
    val diameter: Diameter = Diameter(),
    @SerialName("engines")
    val engines: Engines = Engines(),
    @SerialName("first_flight")
    val firstFlight: String = "",
    @SerialName("first_stage")
    val firstStage: FirstStage = FirstStage(),
    @SerialName("flickr_images")
    val flickrImages: List<String> = listOf(),
    @SerialName("height")
    val height: Height = Height(),
    @SerialName("id")
    val id: String = "",
    @SerialName("landing_legs")
    val landingLegs: LandingLegs = LandingLegs(),
    @SerialName("mass")
    val mass: Mass = Mass(),
    @SerialName("name")
    val name: String = "",
    @SerialName("payload_weights")
    val payloadWeights: List<PayloadWeight> = listOf(),
    @SerialName("second_stage")
    val secondStage: SecondStage = SecondStage(),
    @SerialName("stages")
    val stages: Int = 0,
    @SerialName("success_rate_pct")
    val successRatePct: Int = 0,
    @SerialName("type")
    val type: String = "",
    @SerialName("wikipedia")
    val wikipedia: String = ""
)