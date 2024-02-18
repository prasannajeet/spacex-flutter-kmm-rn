package com.prasan.spacexkmm.data.network

import com.prasan.spacexkmm.data.interfaces.IRemoteDataSource
import com.prasan.spacexkmm.data.interfaces.IRepository
import com.prasan.spacexkmm.data.models.dao.CompanyInfo
import com.prasan.spacexkmm.data.models.mapper.CompanyInfoResponseMapper
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map

class ApplicationRepository(
    //private val localDataSource: ILocalDataSource,
    private val remoteDataSource: IRemoteDataSource,
    private val companyInfoResponseMapper: CompanyInfoResponseMapper,
) : IRepository {
    override suspend fun getSpaceXCompanyInfo(): Flow<Result<CompanyInfo>> {
        return remoteDataSource.getSpaceXCompanyInfo().map { result ->
            when (result.isSuccess) {
                true -> {
                    result.getOrNull()?.let { response ->
                        Result.success(companyInfoResponseMapper(response))
                    }
                        ?: Result.failure(IllegalStateException("Data should not be null for success"))
                }

                false -> {
                    result.exceptionOrNull()?.let { throwable ->
                        Result.failure(throwable)
                    }
                        ?: Result.failure(IllegalStateException("Exception should not be null for failure"))
                }
            }
        }
    }
}