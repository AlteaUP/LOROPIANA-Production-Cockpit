using {
    Country,
    managed
} from '@sap/cds/common';

using {ProductionCockpit.zproduction_cockpit.db.TYPES as TYPES} from '../db/TYPES';

using {ZZ1_PRODUCTION_COCKPIT_API_CDS as mainService} from './external/ZZ1_PRODUCTION_COCKPIT_API_CDS';
using {API_PRODUCTION_ORDER_2_SRV as changeProductionOrder} from './external/API_PRODUCTION_ORDER_2_SRV';
using {ZMFG_SD_INT_COMP_H as componentsAction} from './external/ZMFG_SD_INT_COMP_H';
//using {ZMFG_SD_CONF_ODP_H as confirmODP} from './external/ZMFG_SD_CONF_ODP_H';
using {ZMFG_SB_CONF_ODP_DEEP as confirmODP} from './external/ZMFG_SB_CONF_ODP_DEEP';
using {API_MATERIAL_DOCUMENT_SRV as material_document} from './external/API_MATERIAL_DOCUMENT_SRV';
using {ZZ1_MFG_REASON_SOST_CDS as reasonSost} from './external/ZZ1_MFG_REASON_SOST_CDS';
using {ZMFG_SB_PRODUCTION_ORDERS_DEEP as create_kitting } from './external/ZMFG_SB_PRODUCTION_ORDERS_DEEP';
using {ZMFG_SB_PRODOR_OPERATIONS as managePhase } from './external/ZMFG_SB_PRODOR_OPERATIONS';
using {ZZ1_MFG_ROL_ORDERS_CDS as rol} from './external/ZZ1_MFG_ROL_ORDERS_CDS';
using { ZZ1_MRPCONTROLLER_F4_CDS as MRPControllerCDS } from './external/ZZ1_MRPCONTROLLER_F4_CDS';
using { UI_RFM_MNG_MSTRPRODNORD as chart } from './external/UI_RFM_MNG_MSTRPRODNORD';
using { ZZ1_RFM_WRKCHARVAL_F4_CDS as workCenters } from './external/ZZ1_RFM_WRKCHARVAL_F4_CDS';
using { ZZ1_MFP_REASON_NOTE_CDS as reasonsNotes } from './external/ZZ1_MFP_REASON_NOTE_CDS';
using { ZMF_IMD_MATERIAL_CDS as materialCharacteristics } from './external/ZMF_IMD_MATERIAL_CDS';
using { zmfp_mrp_plant_f4 } from './external/zmfp_mrp_plant_f4';

@cds.query.limit.default: 500
@cds.query.limit.max: 500
service CatalogService {

    @readonly
    entity ZZ1_PRODUCTION_COCKPIT_API as projection on mainService.ZZ1_PRODUCTION_COCKPIT_API{
        //key ID : String(50),
        null as OrderHasProductionHold: String,
        null as OrderHasExecutionDelay: String,
        null as OrderHasMissingComponents: String,
        null as OrderHasDeviation: String,
        null as OrderHasQualityIssue: String,
        *,

        to_ZZ1_C_COMBORDER_COMP     : Composition of many ZZ1_C_COMBORDER_COMP
                                        on  CprodOrd                     = $self.CprodOrd,

        to_ZZ1_C_MFG_COMBINEDOPER_SUM : Composition of many ZZ1_C_MFG_COMBINEDOPER_SUM
                                        on CprodOrd                      = $self.CprodOrd,
        
        to_ZZ1_C_MASTERORDER_COMP     : Composition of many ZZ1_C_MASTERORDER_COMP
                                        on  FshMprodOrd                      = $self.FshMprodOrd,

        to_ZZ1_C_MFG_MASTEROPER_SUM   : Composition of many ZZ1_C_MFG_MASTEROPER_SUM
                                        on FshMprodOrd                      = $self.FshMprodOrd,

        to_ZZ1_C_UNION_PROD_COMP     : Composition of many ZZ1_C_UNION_PROD_COMP
                                        on ManufacturingOrder               = $self.ManufacturingOrder,

        to_ZZ1_C_MFG_ORDEROPE       : Composition of many ZZ1_C_MFG_ORDEROPE
                                        on ManufacturingOrder               = $self.ManufacturingOrder                                        
    }

    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_COMBORDER_COMP as projection on mainService.ZZ1_C_COMBORDER_COMP{
        key ID,
        key REASON,
        key NOTE,
        *,
        null as chart_percent        : Integer,
        null as chart_criticality    : Integer,
        null as Note                 : String,
        null as Reason               : String
    };

    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_MFG_COMBINEDOPER_SUM as projection on mainService.ZZ1_C_MFG_COMBINEDOPER_SUM;

    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_MASTERORDER_COMP as projection on mainService.ZZ1_C_MASTERORDER_COMP{
        key ID,
        key REASON,
        key NOTE,
        *,
        null as chart_percent        : Integer,
        null as chart_criticality    : Integer,
        null as Note                 : String,
        null as Reason               : String
    };

    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_UNION_PROD_COMP as projection on mainService.ZZ1_C_UNION_PROD_COMP{
        *
    };

    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_MFG_ORDEROPE as projection on mainService.ZZ1_C_MFG_ORDEROPE{
        *
    };
 
    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_MFG_MASTEROPER_SUM as projection on mainService.ZZ1_C_MFG_MASTEROPER_SUM{
        key MasterProductionOrder,
        key ManufacturingOrderSequence,
        key ManufacturingOrderOperation,
        key ManufacturingOrderOperation_2,
        key ManufacturingOrderSubOperation,
        key ManufacturingOrdSubOperation_2,
        key MfgOrderOperationOrSubOp,
        key MfgOrderOperationOrSubOp_2,
        key MfgOrderOperationIsPhase,
        key MfgOrderPhaseSuperiorOperation,
        key SuperiorOperation_2,
        key ManufacturingOrderCategory,
        key ProductionSupervisor,
        key MRPController,
        key ResponsiblePlannerGroup,
        key ProductConfiguration,
        key InspectionLot,
        key ManufacturingOrderImportance,
        key MfgOrderOperationText,
        key OperationStandardTextCode,
        key OperationHasLongText,
        key Language,
        key OperationIsToBeDeleted,
        key NumberOfCapacities,
        key NumberOfConfirmationSlips,
        key OperationImportance,
        key SuperiorOperationInternalID,
        key Plant,
        key WorkCenterInternalID,
        key WorkCenterTypeCode,
        key WorkCenterTypeCode_2,
        key OperationControlProfile,
        key ControlRecipeDestination,
        key OperationConfirmation,
        key NumberOfOperationConfirmations,
        key FactoryCalendar,
        key CapacityRequirement,
        key CapacityRequirementItem,
        key ChangeNumber,
        key ObjectInternalID,
        key OperationTrackingNumber,
        key BillOfOperationsType,
        key BillOfOperationsGroup,
        key BillOfOperationsVariant,
        key BillOfOperationsSequence,
        key BOOOperationInternalID,
        key BillOfOperationsVersion,
        key BillOfMaterialCategory,
        key BillOfMaterialInternalID,
        key BillOfMaterialInternalID_2,
        key BillOfMaterialItemNodeNumber,
        key BOMItemNodeCount,
        key ExtProcgOperationHasSubcontrg,
        key PurchasingOrganization,
        key PurchasingGroup,
        key PurchaseRequisition,
        key PurchaseRequisitionItem,
        key PurchaseOrder,
        key PurchaseOrderItem,
        key PurchasingInfoRecord,
        key PurgInfoRecdDataIsFixed,
        key PurchasingInfoRecordCategory,
        key Supplier,
        key GoodsRecipientName,
        key UnloadingPointName,
        key MaterialGroup,
        key OpExternalProcessingCurrency,
        key NumberOfOperationPriceUnits,
        key CompanyCode,
        key BusinessArea,
        key ControllingArea,
        key ProfitCenter,
        key RequestingCostCenter,
        key CostElement,
        key CostingVariant,
        key CostingSheet,
        key CostEstimate,
        key ControllingObjectCurrency,
        key ControllingObjectClass,
        key FunctionalArea,
        key TaxJurisdiction,
        key EmployeeWageType,
        key EmployeeWageGroup,
        key EmployeeSuitability,
        key NumberOfTimeTickets,
        key Personnel,
        key NumberOfEmployees,
        key OperationSetupGroupCategory,
        key OperationSetupGroup,
        key OperationSetupType,
        key OperationOverlappingIsRequired,
        key OperationOverlappingIsPossible,
        key OperationsIsAlwaysOverlapping,
        key OperationSplitIsRequired,
        key MaximumNumberOfSplits,
        key LeadTimeReductionStrategy,
        key OpSchedldReductionLevel,
        key CprodOrd,
        key OpExternalProcessingPrice,
        *,
        @Common.Label: '{i18n>flagPurchaseOrder}'
        null as flagPurchaseOrder: String
    }

    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_MASTERPRODORDER as projection on mainService.ZZ1_C_MASTERPRODORDER{
        key ID,
        @Common.Label: '{i18n>MRPController}'
        key MRPController,
        @Common.Label: '{i18n>CombinedOrder}'
        key CombinedOrder,
        @Common.Label: '{i18n>MasterProductionOrder}'
        key MasterProductionOrder,
        @Common.Label: '{i18n>ProductionPlant}'
        key ProductionPlant,
        @Common.Label: '{i18n>ManufacturingOrderType}'
        key ManufacturingOrderType,
        @Common.Label: '{i18n>StockSegment}'
        key StockSegment,
        @Common.Label: '{i18n>CrossPlantConfigurableProduct}'
        key CrossPlantConfigurableProduct,
        @Common.Label: '{i18n>ProductCollection}'
        key ProductCollection,
        @Common.Label: '{i18n>CreationDate}'
        key CreationDate,
        @Common.Label: '{i18n>ProductSeasonYear}'
        key ProductSeasonYear,
        @Common.Label: '{i18n>ProductSeason}'
        key ProductSeason,
        @Common.Label: '{i18n>ProductTheme}'
        key ProductTheme,
        @Common.Label: '{i18n>organizationBPName1}'
        key OrganizationBPName1,
        *,
        null as CreatedStatusQtyInPercent: String,
        null as OrderIsCreated: String,
        null as ReleasedStatusQtyInPercent: String,
        @Common.Label: '{i18n>OrderIsReleased}'
        null as OrderIsReleased: String,
        null as OrderIsPartiallyReleased: String,
        null as ConfirmedStatusQtyInPercent: String,
        null as OrderIsConfirmed: String,
        null as OrderIsPartiallyConfirmed: String,
        null as DeliveredStatusQtyInPercent: String,
        null as OrderIsDelivered: String,
        null as OrderIsPartiallyDelivered: String,
        null as TechlyCmpltdStatusQtyInPercent: String,
        null as OrderIsTechnicallyCompleted: String,
        null as OrderHasProductionHold: String,
        null as OrderHasExecutionDelay: String,
         @Common.Label: '{i18n>OrderHasMissingComponents}'
        null as OrderHasMissingComponents: String,
        null as OrderHasDeviation: String,
        null as OrderHasQualityIssue: String,
    };

    @Capabilities.DeleteRestrictions.Deletable: false
    entity ZZ1_C_COMBINEDPRODORDER as projection on mainService.ZZ1_C_COMBINEDPRODORDER{
        *,
        null as CreatedStatusQtyInPercent: String,
        null as OrderIsCreated: String,
        null as ReleasedStatusQtyInPercent: String,
        null as OrderIsReleased: String,
        null as OrderIsPartiallyReleased: String,
        null as ConfirmedStatusQtyInPercent: String,
        null as OrderIsConfirmed: String,
        null as OrderIsPartiallyConfirmed: String,
        null as DeliveredStatusQtyInPercent: String,
        null as OrderIsDelivered: String,
        null as OrderIsPartiallyDelivered: String,
        null as TechlyCmpltdStatusQtyInPercent: String,
        null as OrderIsTechnicallyCompleted: String,
        null as OrderHasProductionHold: String,
        null as OrderHasExecutionDelay: String,
        null as OrderHasMissingComponents: String,
        null as OrderHasDeviation: String,
        null as OrderHasQualityIssue: String,
    }

    entity intcomph as projection on componentsAction.intcomph;

    entity confodph as projection on confirmODP.confodph;

    entity A_MaterialDocumentHeader as projection on material_document.A_MaterialDocumentHeader;

    entity ZZ1_MFG_REASON_SOST as projection on reasonSost.ZZ1_MFG_REASON_SOST;

    entity prodordh as projection on create_kitting.prodordh;

    entity operationh as projection on managePhase.operationh;

    entity ZZ1_MFG_ROL_ORDERS as projection on rol.ZZ1_MFG_ROL_ORDERS;

    entity ZC_RFM_MRPCONTROLLER_F4 as projection on MRPControllerCDS.ZC_RFM_MRPCONTROLLER_F4;

    entity C_RFM_ManageMasterMfgOrder as projection on chart.C_RFM_ManageMasterMfgOrder;

    entity C_RFM_ManageCombinedMfgOrder as projection on chart.C_RFM_ManageCombinedMfgOrder;

    entity ZZ1_RFM_WRKCHARVAL_F4 as projection on workCenters.ZZ1_RFM_WRKCHARVAL_F4;

    entity ZZ1_MFP_REASON_NOTE as projection on reasonsNotes.ZZ1_MFP_REASON_NOTE;

    entity ZMF_IMD_MATERIAL as projection on materialCharacteristics.ZMF_IMD_MATERIAL;

    entity ZC_RFM_PRODUCTION_PLANT_F4 as projection on zmfp_mrp_plant_f4.ZC_RFM_PRODUCTION_PLANT_F4;

    action ReleaseOrder (OrderID : array of String) returns String;

    action TechnicalCompleteOrder (OrderID : array of String) returns String;

    action CloseOrder (OrderID : array of String) returns String;

    action Replacement (Record: many TYPES.ReplacementRecord) returns String;

    action CreateMaterialDocument(Record: many TYPES.MaterialCreateDocument) returns String;

    action MovePhase (Record: many TYPES.MovePhase) returns String;

    action ConfODP (Record: many TYPES.ConfODP) returns String;

    action ManageODPPhase (Record: many TYPES.ManageODPPhase) returns String;

    action DoKitting (Record: many TYPES.OrdersKittingRecord) returns String;

    action GetOrderDetails(oidOrdine: String) returns LargeString;

    action GetMaterialDetails(oidOrdine: TYPES.ConfODPData) returns LargeString;


}
