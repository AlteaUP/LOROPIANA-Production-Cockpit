namespace ProductionCockpit.zproduction_cockpit.db.TYPES;

type ReplacementRecord : {
    CprodOrd       : String;
    id             : String;
    FshMprodOrd    : String;
    matnr_new      : String;
    matnr_old      : String;
    charg          : String;
    meins          : String;
    menge          : Decimal(9, 3);
    vornr          : String;
    plnfl          : String;
    note           : String;
    reason         : String;
    lgort          : String;
    werks          : String;
    stk_seg        : String;
    action         : String;
}

type MaterialCreateDocument : {
    Material        : String not null;
    Plant           : String;
    Batch           : String;
    StorageLocation : String;
    CprodOrd        : String;
    Stock           : Decimal(9, 3);
    Quantity        : Decimal(9, 3);
    UnitMeasure     : String;
    Lgort           : String;
    Bwart           : String;
    WorkCenterInternalID : String;
    Vstel           : String;
    Lfart           : String;
    Customer        : String;
    Supplier        : String;
    PurchaseOrder   : String;
    PurchaseOrderItem : String;
    MasterProductionOrder : String;
    ManufacturingOrder : String;
    ManufacturingOrderOperation: String;
    //Wadak : String;
}