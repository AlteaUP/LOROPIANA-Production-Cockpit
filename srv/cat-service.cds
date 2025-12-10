using {
    Country,
    managed
} from '@sap/cds/common';

using {ProductionCockpit.zproduction_cockpit.db.TYPES as TYPES} from '../db/TYPES';

using {ZZ1_I_COMBPRODORDAPI_CDS as mainService} from './external/ZZ1_I_COMBPRODORDAPI_CDS';
using {API_PRODUCTION_ORDER_2_SRV as changeProductionOrder} from './external/API_PRODUCTION_ORDER_2_SRV';
using {ZMFG_SD_INT_COMP_H as componentsAction} from './external/ZMFG_SD_INT_COMP_H';
//using {ZMFG_SD_CONF_ODP_H as confirmODP} from './external/ZMFG_SD_CONF_ODP_H';
using {ZMFG_SB_CONF_ODP_DEEP as confirmODP} from './external/ZMFG_SB_CONF_ODP_DEEP';
using {API_MATERIAL_DOCUMENT_SRV as material_document} from './external/API_MATERIAL_DOCUMENT_SRV';
using {ZZ1_MFG_REASON_SOST_CDS as reasonSost} from './external/ZZ1_MFG_REASON_SOST_CDS';
using {ZMFG_SB_PRODUCTION_ORDERS_DEEP as create_kitting } from './external/ZMFG_SB_PRODUCTION_ORDERS_DEEP';
using {ZMFG_SB_PRODOR_OPERATIONS as managePhase } from './external/ZMFG_SB_PRODOR_OPERATIONS';

@cds.query.limit.default: 500
@cds.query.limit.max: 500
service CatalogService {

    @readonly
    entity ZZ1_I_COMBPRODORDAPI as projection on mainService.ZZ1_I_COMBPRODORDAPI{
        key ID : String(50),
        *,

        to_ZZ1_C_COMBORDER_COMP     : Composition of many ZZ1_C_COMBORDER_COMP
                                        on  CprodOrd                      = $self.CprodOrd,

        to_ZZ1_C_MFG_COMBINEDOPE       : Composition of many ZZ1_C_MFG_COMBINEDOPE
                                        on CprodOrd                      = $self.CprodOrd,
        
        to_ZZ1_C_MASTERORDER_COMP     : Composition of many ZZ1_C_MASTERORDER_COMP
                                        on  FshMprodOrd                      = $self.FshMprodOrd,

        to_ZZ1_C_MFG_MASTEROPE       : Composition of many ZZ1_C_MFG_MASTEROPE
                                        on FshMprodOrd                      = $self.FshMprodOrd,

        to_ZZ1_C_MFG_OrderComp       : Composition of many ZZ1_C_MFG_OrderComp
                                        on ManufacturingOrder               = $self.ManufacturingOrder,

        to_ZZ1_C_MFG_ORDEROPE       : Composition of many ZZ1_C_MFG_ORDEROPE
                                        on ManufacturingOrder               = $self.ManufacturingOrder                                        
    }

    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_COMBORDER_COMP as projection on mainService.ZZ1_C_COMBORDER_COMP;

    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_MFG_COMBINEDOPE as projection on mainService.ZZ1_C_MFG_COMBINEDOPE;

    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_MASTERORDER_COMP as projection on mainService.ZZ1_C_MASTERORDER_COMP;

    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_MFG_OrderComp as projection on mainService.ZZ1_C_MFG_OrderComp{
        key ID,
        *
    };

    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_MFG_ORDEROPE as projection on mainService.ZZ1_C_MFG_ORDEROPE{
        *
    };
 
    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_MFG_MASTEROPE as projection on mainService.ZZ1_C_MFG_MASTEROPE{
        *
    }

    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_MASTERPRODORDER as projection on mainService.ZZ1_C_MASTERPRODORDER{
        key ID,
        key MRPController,
        *
    };

    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_COMBINEDPRODORDER as projection on mainService.ZZ1_C_COMBINEDPRODORDER;

    entity intcomph as projection on componentsAction.intcomph;

    entity confodph as projection on confirmODP.confodph;

    entity A_MaterialDocumentHeader as projection on material_document.A_MaterialDocumentHeader;

    entity ZZ1_MFG_REASON_SOST as projection on reasonSost.ZZ1_MFG_REASON_SOST;

    entity prodordh as projection on create_kitting.prodordh;

    entity operationh as projection on managePhase.operationh;

    action ReleaseOrder (OrderID : array of String) returns String;

    action TechnicalCompleteOrder (OrderID : array of String) returns String;

    action CloseOrder (OrderID : array of String) returns String;

    action Replacement (Record: many TYPES.ReplacementRecord) returns String;

    action CreateMaterialDocument(Record: many TYPES.MaterialCreateDocument) returns String;

    action MovePhase (Record: many TYPES.MovePhase) returns String;

    action ConfODP (Record: many TYPES.ConfODP) returns String;

    action ManageODPPhase (Record: many TYPES.ManageODPPhase) returns String;

    action DoKitting (Record: many TYPES.OrdersKittingRecord) returns String;

}
