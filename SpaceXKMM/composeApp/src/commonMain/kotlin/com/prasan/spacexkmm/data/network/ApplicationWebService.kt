package com.prasan.spacexkmm.data.network

import com.prasan.spacexkmm.data.interfaces.IRemoteDataSource
import com.prasan.spacexkmm.data.models.dto.GetCompanyInfoResponse
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
}