using {
    Country,
    managed
} from '@sap/cds/common';

using {ZZ1_I_COMBPRODORDAPI_CDS as mainService} from './external/ZZ1_I_COMBPRODORDAPI_CDS';

service CatalogService {

    @readonly
    entity ZZ1_I_COMBPRODORDAPI as projection on mainService.ZZ1_I_COMBPRODORDAPI{
        *,
        to_ZZ1_C_MASTERORDER_COMP     : Composition of many ZZ1_C_MASTERORDER_COMP
                                        on  FshMprodOrd                      = $self.FshMprodOrd
    }

    entity ZZ1_C_MASTERORDER_COMP as projection on mainService.ZZ1_C_MASTERORDER_COMP;

    entity ZZ1_C_MASTERPRODORDER as projection on mainService.ZZ1_C_MASTERPRODORDER;

    entity ZZ1_C_COMBINEDPRODORDER as projection on mainService.ZZ1_C_COMBINEDPRODORDER;

}
