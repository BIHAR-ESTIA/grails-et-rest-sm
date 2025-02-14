package fr.bihar.lecoincoin

import grails.gorm.services.Service

/**
 * Service interface for managing SaleAd entities.
 */
@Service(SaleAd)
interface SaleAdService {

    SaleAd get(Serializable id)

    List<SaleAd> list(Map args)

    Long count()

    void delete(Serializable id)

    SaleAd save(SaleAd saleAd)

}
