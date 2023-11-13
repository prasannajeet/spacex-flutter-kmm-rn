package com.prasan.spacexkmm.data.interfaces

import com.prasan.spacexkmm.data.models.dao.CompanyInfo
import com.prasan.spacexkmm.data.models.dto.GetCompanyInfoResponse
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.StateFlow

interface IDataMapper<in MapFrom: Any, out MapTo: Any> {
    operator fun invoke(input: MapFrom): MapTo
}

internal interface ILocalDataSource

interface IRemoteDataSource {
    suspend fun getSpaceXCompanyInfo(): Flow<Result<GetCompanyInfoResponse>>
}

interface IRepository {
    suspend fun getSpaceXCompanyInfo(forceRefresh: Boolean): Flow<Result<CompanyInfo>>
}

/**
 * A UseCase defines a specific task performed in the app. For this project there would be two:
 * 1. Get Popular Photos
 * 2. Get details of a photo
 * [Output] type defines the output of the use-case execution
 * @author Prasan
 */
interface IUseCase<in Input : Any, out Output : Any> {
    /**
     * Execution contract which will run the business logic associated with completing a
     * particular use case
     * @param input [Input] type input parameter
     * @since 1.0
     * @return [Output] model type used to define the UseCase class as a [Flow] of [ViewState]
     */
    suspend operator fun invoke(input: Input): Flow<Result<Output>>
}

interface MVIViewModel<State: Any, Event: Any> {
    val state: StateFlow<State>
    val event: SharedFlow<Event>

    fun updateState(event: Event, previousState: State)
}