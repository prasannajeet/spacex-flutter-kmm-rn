package com.prasan.spacexkmm.domain

import com.prasan.spacexkmm.data.interfaces.IRepository
import com.prasan.spacexkmm.data.interfaces.IUseCase
import com.prasan.spacexkmm.data.models.dao.CompanyInfo
import com.prasan.spacexkmm.data.network.ApplicationRepository
import kotlinx.coroutines.flow.Flow

class GetCompanyInfoUseCase(private val repository: IRepository): IUseCase<Unit, CompanyInfo> {
    override suspend fun invoke(input: Unit): Flow<Result<CompanyInfo>> {
        return repository.getSpaceXCompanyInfo()
    }
}