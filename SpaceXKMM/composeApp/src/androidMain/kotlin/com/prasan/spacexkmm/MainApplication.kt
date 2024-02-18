package com.prasan.spacexkmm

import android.app.Application
import android.content.Context
import android.widget.Toast
import com.prasan.spacexkmm.data.network.HttpWebServiceHandler
import com.prasan.spacexkmm.di.initKoin
import org.koin.core.qualifier.named
import org.koin.dsl.module

class MainApplication: Application() {

    override fun onCreate() {
        super.onCreate()
        initKoin(
            module {
                //includes(featureCompanyInfoModule)
                single<Context> { this@MainApplication }
                single(named("doOnStartup")) {
                    { Toast.makeText(this@MainApplication, "Welcome to SpaceX!", Toast.LENGTH_LONG).show() }
                }
                //single(named("bundle_identifier")) { BuildConfig.APPLICATION_ID }
            }
        )
    }
}