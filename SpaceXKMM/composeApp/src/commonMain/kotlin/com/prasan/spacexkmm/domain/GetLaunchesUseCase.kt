package com.prasan.spacexkmm.domain

import com.prasan.spacexkmm.data.interfaces.IRepository
import com.prasan.spacexkmm.data.interfaces.IUseCase
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.map

class GetLaunchesUseCase(private val repository: IRepository): IUseCase<Unit, String> {
    override suspend fun invoke(input: Unit): Flow<Result<String>> {
        return repository.getSpaceXLaunches().map { result ->
            when(result.isSuccess) {
                true -> {
                    result.getOrNull()?.let {
                        Result.success(it.toString())
                    }?: Result.failure(NullPointerException("Data is null"))
                }
                false -> Result.failure(result.exceptionOrNull()!!)
            }
        }
    }
}