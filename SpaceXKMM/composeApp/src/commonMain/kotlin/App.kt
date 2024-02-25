import androidx.compose.material.MaterialTheme
import androidx.compose.runtime.Composable
import com.prasan.spacexkmm.domain.GetSpaceXRocketsUseCase
import com.prasan.spacexkmm.presentation.circuit.PresenterFactory
import com.prasan.spacexkmm.presentation.circuit.ScreenFactory
import com.prasan.spacexkmm.presentation.screens.rockets.RocketScreen
import com.slack.circuit.backstack.rememberSaveableBackStack
import com.slack.circuit.foundation.Circuit
import com.slack.circuit.foundation.CircuitCompositionLocals
import com.slack.circuit.foundation.NavigableCircuitContent
import com.slack.circuit.foundation.rememberCircuitNavigator
import org.koin.compose.getKoin

@Composable
fun App() {
    MaterialTheme {

        // SaveableBackStack instance
        val backstack = rememberSaveableBackStack(listOf(RocketScreen))

        // Navigator instance
        val navigator = rememberCircuitNavigator(
            backStack = backstack,
            onRootPop = {}
        )

        CircuitCompositionLocals(getKoin().get<Circuit>()) {
            NavigableCircuitContent(navigator, backstack)
        }
    }
}