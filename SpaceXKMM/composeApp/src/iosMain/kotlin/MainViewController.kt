import androidx.compose.ui.window.ComposeUIViewController
import com.prasan.spacexkmm.di.initKoin
import org.koin.dsl.module

fun MainViewController() = ComposeUIViewController { App() }

fun startKoin() {
    initKoin(
        appModule = module {

        }
    )
}
