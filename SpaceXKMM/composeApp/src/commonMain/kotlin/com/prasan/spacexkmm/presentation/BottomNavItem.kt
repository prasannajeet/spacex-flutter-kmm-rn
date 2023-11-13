package com.prasan.spacexkmm.presentation

import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AccountCircle
import androidx.compose.material.icons.filled.ArrowForward
import androidx.compose.material.icons.filled.List
import androidx.compose.ui.graphics.vector.ImageVector

data class BottomNavItem(val label: String, val route: String, val icon: ImageVector) {
    companion object {
        const val ROCKETS = "Rockets"
        const val LAUNCHES = "Launches"
        const val COMPANY = "Company"
    }
}
val bottomNavItems = arrayListOf(
    BottomNavItem(BottomNavItem.ROCKETS, "rockets", Icons.Filled.ArrowForward),
    BottomNavItem(BottomNavItem.LAUNCHES, "launches", Icons.Filled.List),
    BottomNavItem(BottomNavItem.COMPANY, "company", Icons.Filled.AccountCircle)
)