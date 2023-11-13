package com.prasan.spacexkmm.data.models.mapper

import com.prasan.spacexkmm.data.interfaces.IDataMapper
import com.prasan.spacexkmm.data.models.dao.CompanyInfo
import com.prasan.spacexkmm.data.models.dao.Headquarters
import com.prasan.spacexkmm.data.models.dao.Links
import com.prasan.spacexkmm.data.models.dto.GetCompanyInfoResponse

class CompanyInfoResponseMapper : IDataMapper<GetCompanyInfoResponse, CompanyInfo> {
    override fun invoke(input: GetCompanyInfoResponse): CompanyInfo {
        return CompanyInfo(
            ceo = input.ceo,
            cto = input.cto,
            coo = input.coo,
            ctoPropulsion = input.ctoPropulsion,
            employees = input.employees,
            founded = input.founded,
            founder = input.founder,
            launchSites = input.launchSites,
            name = input.name,
            summary = input.summary,
            testSites = input.testSites,
            valuation = input.valuation,
            vehicles = input.vehicles,
            headquarters = Headquarters(
                address = input.headquarters.address,
                city = input.headquarters.city,
                state = input.headquarters.state
            ),
            links = Links(
                elonTwitter = input.links.elonTwitter,
                flickr = input.links.flickr,
                twitter = input.links.twitter,
                website = input.links.website
            )
        )
    }
}