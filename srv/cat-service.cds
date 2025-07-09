using {
    Country,
    managed
} from '@sap/cds/common';

using {ZZ1_I_COMBPRODORDAPI_CDS as mainService} from './external/ZZ1_I_COMBPRODORDAPI_CDS';

service CatalogService {

    @readonly
    entity ZZ1_I_COMBPRODORDAPI as projection on mainService.ZZ1_I_COMBPRODORDAPI;

}
