package com.prasan.spacexkmm.data.network

import com.prasan.spacexkmm.data.interfaces.IRemoteDataSource
import com.prasan.spacexkmm.data.models.dto.GetCompanyInfoResponse
import com.prasan.spacexkmm.data.models.dto.launches.GetSpaceXLaunchesItem
import com.prasan.spacexkmm.data.models.dto.rockets.GetSpaceXRocketsItem
import kotlinx.coroutines.flow.Flow

internal class ApplicationWebService(
    private val httpWebServiceHandler: HttpWebServiceHandler
) : IRemoteDataSource {
    override suspend fun getSpaceXCompanyInfo(): Flow<Result<GetCompanyInfoResponse>> {
        return httpWebServiceHandler.performHttpConnection(
            HttpConnectivityType.GET(
                SpaceXEndpoint.CompanyInfo.path
            )
        )
    }

    override suspend fun getSpaceXLaunches(): Flow<Result<List<GetSpaceXLaunchesItem>>> {
        return httpWebServiceHandler.performHttpConnection(
            HttpConnectivityType.GET(
                SpaceXEndpoint.Launches.path
            )
        )
    }

    override suspend fun getSpaceXRockets(): Flow<Result<List<GetSpaceXRocketsItem>>> {
        return httpWebServiceHandler.performHttpConnection(
            HttpConnectivityType.GET(
                SpaceXEndpoint.Rockets.path
            )
        )
    }
}