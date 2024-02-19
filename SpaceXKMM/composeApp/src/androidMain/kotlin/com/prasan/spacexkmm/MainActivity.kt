package com.prasan.spacexkmm

import App
import android.content.Context
import android.os.Bundle
import android.widget.Toast
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview
import com.prasan.spacexkmm.di.initKoin
import moe.tlaster.precompose.lifecycle.PreComposeActivity
import moe.tlaster.precompose.lifecycle.setContent
import org.koin.core.qualifier.named
import org.koin.dsl.module

class MainActivity : PreComposeActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        initKoin(
            appModule = module {
                single<Context> { applicationContext }
                single(named("doOnStartup")) {
                    { Toast.makeText(applicationContext, "Welcome to SpaceX!", Toast.LENGTH_LONG).show() }
                }
            }
        )
        setContent {
            App()
        }
    }
}

@Preview
@Composable
fun AppAndroidPreview() {
    App()
}