package com.prasan.spacexkmm.domain

import com.prasan.spacexkmm.data.interfaces.IUseCase
import com.prasan.spacexkmm.data.models.dao.CompanyInfo
import com.prasan.spacexkmm.data.network.ApplicationRepository
import kotlinx.coroutines.flow.Flow

class GetCompanyInfoUseCase(private val repository: ApplicationRepository): IUseCase<Unit, CompanyInfo> {
    override suspend fun invoke(input: Unit): Flow<Result<CompanyInfo>> {
        return repository.getSpaceXCompanyInfo()
    }
}