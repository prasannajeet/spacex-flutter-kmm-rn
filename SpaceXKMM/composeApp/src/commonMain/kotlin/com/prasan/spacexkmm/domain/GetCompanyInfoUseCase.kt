package com.prasan.spacexkmm.domain

import com.prasan.spacexkmm.data.interfaces.IRepository
import com.prasan.spacexkmm.data.interfaces.IUseCase
import com.prasan.spacexkmm.data.models.dao.CompanyInfo
import com.prasan.spacexkmm.data.models.mapper.CompanyInfoResponseMapper
import com.prasan.spacexkmm.data.network.ApplicationRepository
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map

class GetCompanyInfoUseCase(private val repository: IRepository,
                            private val companyInfoResponseMapper: CompanyInfoResponseMapper
): IUseCase<Unit, CompanyInfo> {
    override suspend fun invoke(input: Unit): Flow<Result<CompanyInfo>> {
        return repository.getSpaceXCompanyInfo().map { result ->
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