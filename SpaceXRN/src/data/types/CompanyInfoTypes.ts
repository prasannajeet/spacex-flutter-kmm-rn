export type CompanyInfoType = {
    headquarters: CompanyAddressType, 
    links: CompanyLinksType, 
    name: string, 
    founder: string, 
    founded: number, 
    employees: number, 
    vehicles: number, 
    launch_sites: number, 
    test_sites: number, 
    ceo: string, 
    cto: string, 
    coo: string, 
    cto_propulsion: string, 
    valuation: number, 
    summary: string, 
    id: string
};

type CompanyAddressType = {
    address: string,
    city: string,
    state: string
}

type CompanyLinksType = {
    website: string,
    flickr: string,
    twitter: string,
    elon_twitter: string
}