import org.koin.core.qualifier.named
import org.koin.dsl.module

fun initKoin(){
    com.prasan.spacexkmm.di.initKoin(
        module {
            single(named("doOnStartup")) {
                { println("Welcome to SpaceX!") }
            }
        }
    )
}