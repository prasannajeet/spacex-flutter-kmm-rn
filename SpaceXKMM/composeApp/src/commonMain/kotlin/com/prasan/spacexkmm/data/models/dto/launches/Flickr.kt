package com.prasan.spacexkmm.data.models.dto.launches


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class Flickr(
    @SerialName("original")
    val original: List<String>,
)