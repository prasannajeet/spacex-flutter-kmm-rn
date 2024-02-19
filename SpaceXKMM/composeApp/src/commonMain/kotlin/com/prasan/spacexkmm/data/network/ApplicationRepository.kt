package com.prasan.spacexkmm.data.network

import com.prasan.spacexkmm.data.interfaces.IRemoteDataSource
import com.prasan.spacexkmm.data.interfaces.IRepository
import com.prasan.spacexkmm.data.models.dto.GetCompanyInfoResponse
import com.prasan.spacexkmm.data.models.dto.launches.GetSpaceXLaunchesItem
import kotlinx.coroutines.flow.Flow

class ApplicationRepository(
    //private val localDataSource: ILocalDataSource,
    private val remoteDataSource: IRemoteDataSource,
) : IRepository {
    override suspend fun getSpaceXCompanyInfo(): Flow<Result<GetCompanyInfoResponse>> {
        return remoteDataSource.getSpaceXCompanyInfo()
    }

    override suspend fun getSpaceXLaunches(): Flow<Result<List<GetSpaceXLaunchesItem>>> {
        return remoteDataSource.getSpaceXLaunches()
    }

    override suspend fun getRockets(): Flow<Result<String>> {
        return remoteDataSource.getSpaceXRockets()
    }
}