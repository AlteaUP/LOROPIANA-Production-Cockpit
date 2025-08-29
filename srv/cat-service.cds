using {
    Country,
    managed
} from '@sap/cds/common';

using {ZZ1_I_COMBPRODORDAPI_CDS as mainService} from './external/ZZ1_I_COMBPRODORDAPI_CDS';
using {API_PRODUCTION_ORDER_2_SRV as changeProductionOrder} from './external/API_PRODUCTION_ORDER_2_SRV';

service CatalogService {

    @readonly
    entity ZZ1_I_COMBPRODORDAPI as projection on mainService.ZZ1_I_COMBPRODORDAPI{
        key ID,
        *,
        to_ZZ1_C_MASTERORDER_COMP     : Composition of many ZZ1_C_MASTERORDER_COMP
                                        on  FshMprodOrd                      = $self.FshMprodOrd,

        to_ZZ1_C_MFG_MASTEROPER       : Composition of many ZZ1_C_MFG_MASTEROPER
                                        on FshMprodOrd                      = $self.FshMprodOrd
    }

    entity ZZ1_C_MASTERORDER_COMP as projection on mainService.ZZ1_C_MASTERORDER_COMP;

    entity ZZ1_C_MFG_MASTEROPER as projection on mainService.ZZ1_C_MFG_MASTEROPER{
        key MasterProductionOrder,
        key ManufacturingOrderSequence,
        key ManufacturingOrderOperation,
        *
    }

    entity ZZ1_C_MASTERPRODORDER as projection on mainService.ZZ1_C_MASTERPRODORDER{
        key ID,
        key MRPController,
        *
    };

    entity ZZ1_C_COMBINEDPRODORDER as projection on mainService.ZZ1_C_COMBINEDPRODORDER;

    action ReleaseOrder (OrderID : array of String) returns String;

    action TechnicalCompleteOrder (OrderID : array of String) returns String;

    action CloseOrder (OrderID : array of String) returns String;

}
