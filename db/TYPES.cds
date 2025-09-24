namespace ProductionCockpit.zproduction_cockpit.db.TYPES;

type ReplacementRecord : {
    CprodOrd       : String not null;
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