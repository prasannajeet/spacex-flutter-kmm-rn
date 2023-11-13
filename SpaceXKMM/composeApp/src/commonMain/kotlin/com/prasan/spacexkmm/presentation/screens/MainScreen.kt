package com.prasan.spacexkmm.presentation.screens

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material.BottomNavigation
import androidx.compose.material.BottomNavigationItem
import androidx.compose.material.Icon
import androidx.compose.material.Scaffold
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import com.prasan.spacexkmm.presentation.bottomNavItems

@Composable
fun MainScreen() {
    var selectedItem by remember {
        mutableStateOf(bottomNavItems.first())
    }
    Scaffold(
        bottomBar = {
            BottomNavigation{
                bottomNavItems.forEach {menuItem ->
                    BottomNavigationItem(
                        selected = (selectedItem == menuItem),
                        onClick = {
                            selectedItem = menuItem
                        },
                        icon = {
                            Icon(
                                imageVector = menuItem.icon,
                                contentDescription = menuItem.label
                            )
                        },
                        label = {
                            Text(text = menuItem.label)
                        },
                        enabled = true
                    )
                }
            }
        },
        content = {
            Box(modifier = Modifier.fillMaxSize()) {
                when(selectedItem.route) {
                    "rockets" -> RocketScreen()
                    "company" -> CompanyInfoScreen()
                    "launches" -> LaunchesScreen()
                }
            }
        }
        )
}