package fr.bihar.lecoincoin

import grails.gorm.services.Service

/**
 * Service interface for managing Address entities.
 */
@Service(Address)
interface AddressService {

    Address get(Serializable id)

    List<Address> list(Map args)

    Long count()

    void delete(Serializable id)

    Address save(Address address)

}