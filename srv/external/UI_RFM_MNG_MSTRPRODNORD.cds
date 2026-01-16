/* checksum : 0fcf58952763a94f160ea45af1c13cdf */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx pdf'
service UI_RFM_MNG_MSTRPRODNORD {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Componente operazione ordine raggruppato'
entity UI_RFM_MNG_MSTRPRODNORD.C_RFM_CmbndMfgOrdOpComponents {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ord. prod. combinato'
  @sap.quickinfo : 'Ordine prod. principale comb.'
  key CombinedProductionOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaterialName'
  @sap.label : 'Prodotto'
  key Material : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Div. di produzione'
  @sap.quickinfo : 'Divisione di produzione'
  ProductionPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'Plant_Text'
  @sap.label : 'Divisione'
  Plant : String(4);
  @sap.label : 'Nome divisione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Plant_Text : String(30);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Categoria di ordine'
  @sap.quickinfo : 'Categoria ordine di produzione'
  ManufacturingOrderCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di ordine'
  @sap.quickinfo : 'Tipo di ordine di produzione'
  ManufacturingOrderType : String(4);
  @sap.label : 'Unità misura base'
  @sap.quickinfo : 'Unità di misura di base'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.label : 'UM acquisizione'
  @sap.quickinfo : 'Unità di misura di registrazione'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantità totale'
  RequiredQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Consumato'
  WithdrawnQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Non coperto'
  UncoveredQuantity : Decimal(14, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Confermato'
  ConfirmedAvailableQuantity : Decimal(16, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantità aperta'
  OpenQuantity : Decimal(14, 3);
  @sap.label : 'Componente mancante'
  MaterialComponentIsMissing : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Data fabbisogno'
  MatlCompRequirementDate : Date;
  @sap.unit : 'EntryUnit'
  @sap.label : 'Quantità in unità di misura di acquisizione'
  GoodsMovementEntryQty : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantità mancante'
  MissingQuantity : Decimal(16, 3);
  @sap.label : 'Nome del prodotto'
  MaterialName : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Gestisci ordine di produzione combinato'
entity UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageCombinedMfgOrder {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine di produzione combinato'
  key CombinedProductionOrder : String(12) not null;
  @sap.display.format : 'NonNegative'
  ManufacturingOrderCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di ordine'
  ManufacturingOrderType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantName'
  @sap.label : 'Div. di produzione'
  @sap.quickinfo : 'Divisione di produzione'
  ProductionPlant : String(4);
  @sap.label : 'Nome della divisione di produzione'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PlantName : String(30);
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Inizio pianificato'
  @sap.quickinfo : 'Data di inizio pianificata'
  @sap.sortable : 'false'
  MfgOrderScheduledStartDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Fine pianificata'
  @sap.quickinfo : 'Data fine pianificata'
  @sap.sortable : 'false'
  MfgOrderScheduledEndDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Inizio effettivo'
  @sap.quickinfo : 'Data di inizio effettiva'
  @sap.sortable : 'false'
  MfgOrderActualStartDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Fine effettiva'
  @sap.quickinfo : 'Data di fine effettiva'
  @sap.sortable : 'false'
  MfgOrderActualEndDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Fine confermata'
  @sap.quickinfo : 'Data fine confermata'
  @sap.sortable : 'false'
  MfgOrderConfirmedEndDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Inizio pianificato'
  @sap.sortable : 'false'
  MfgOrderPlannedStartDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Fine pianificata'
  @sap.quickinfo : 'Data di fine pianificata'
  @sap.sortable : 'false'
  MfgOrderPlannedEndDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Data di rilascio pianificata'
  @sap.sortable : 'false'
  MfgOrderPlannedReleaseDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Data di rilascio schedulata'
  @sap.sortable : 'false'
  MfgOrderScheduledReleaseDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Data di rilascio effettiva'
  @sap.sortable : 'false'
  MfgOrderActualReleaseDate : Date;
  @sap.label : 'Unità di produzione'
  @sap.quickinfo : 'Unità di misura di produzione'
  @sap.sortable : 'false'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità totale'
  @sap.quickinfo : 'Quantità totale pianificata'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderPlannedTotalQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità di scarto'
  @sap.quickinfo : 'Quantità di scarto pianificata'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderPlannedScrapQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Qtà ott. pian.'
  @sap.quickinfo : 'Quantità ottenuta pianificata'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderPlannedYieldQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Qtà ott. conf.'
  @sap.quickinfo : 'Qtà ottenuta confermata dalla conferma d''ordine'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderConfirmedYieldQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Scarto conf.'
  @sap.quickinfo : 'Quantità di scarto confermata nella conferma ordine'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderConfirmedScrapQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Rifinitura conf.'
  @sap.quickinfo : 'Quantità rifinitura confermata totale'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderConfirmedReworkQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità entrata merci'
  @sap.quickinfo : 'Quantità di entrata merci per posizione ordine'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ActualDeliveredQuantity : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità aperta'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderOpenQuantity : Decimal(13, 3);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsCreated : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsReleased : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsPartiallyReleased : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsConfirmed : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsPartiallyConfirmed : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsDelivered : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsDeleted : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsTechnicallyCompleted : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsClosed : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsPartiallyDelivered : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderIsToBeDeleted : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CreatedStatusQtyInPercent : Integer;
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ReleasedStatusQtyInPercent : Integer;
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ConfirmedStatusQtyInPercent : Integer;
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DeliveredStatusQtyInPercent : Integer;
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DeletedStatusQtyInPercent : Integer;
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TechlyCmpltdStatusQtyInPercent : Integer;
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ClosedStatusQtyInPercent : Integer;
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderHasQualityIssue : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderHasMissingComponents : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderHasProductionHold : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderHasExecutionDelay : String(1);
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderHasDeviation : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Codice materiale'
  Material : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mat. config. gen.'
  @sap.quickinfo : 'Materiale configurabile gen.'
  CrossPlantConfigurableProduct : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  MasterProductionOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine'
  @sap.quickinfo : 'Numero ordine'
  ManufacturingOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Div. pianificazione'
  @sap.quickinfo : 'Divisione di pianificazione per ordine'
  MRPPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo merci'
  MaterialGroup : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato dell''ordine'
  @sap.quickinfo : 'Stato interno ordine produzione'
  OrderStatusInternalID : String(2);
  @sap.label : 'Numero ordini di produzione principale'
  @sap.quickinfo : 'Numero di ordini di produzione principale'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  NumberOfMasterProductionOrders : Integer;
  @sap.label : 'Numero ordini di produzione'
  @sap.quickinfo : 'Numero di ordini di produzione'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  NumberOfProductionOrders : Integer;
  to_Comp : Association to many UI_RFM_MNG_MSTRPRODNORD.C_RFM_CmbndMfgOrdOpComponents {  };
  to_Master : Association to many UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMasterMfgOrder {  };
  to_Order : Association to many UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMfgOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.updatable.path : 'Update_mc'
@sap.label : 'Gestisci ordine di produzione principale'
entity UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMasterMfgOrder {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine di produzione principale'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  key MasterProductionOrder : String(12) not null;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  AssignToCombinedProductionOrd_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  AvailabilityCheckMstrProdnOrd_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CloseMasterProductionOrder_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CreateCombinedProductionOrder_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PerformTechlyCmpltMstrProdnOrd_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ReleaseMasterProductionOrder_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  RereadProductionMasterData_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  RunCostingForMasterProdnOrd_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ScheduleMasterProductionOrder_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  UnassignFromCombinedProdnOrd_ac : Boolean;
  @sap.label : 'Dyn. Method Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Update_mc : Boolean;
  @sap.display.format : 'NonNegative'
  ManufacturingOrderCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di ordine'
  ManufacturingOrderType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantName'
  @sap.label : 'Div. di produzione'
  @sap.quickinfo : 'Divisione di produzione'
  @sap.value.list : 'standard'
  ProductionPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine di produzione combinato'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  CombinedProductionOrder : String(12);
  @sap.label : 'Nome della divisione di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'FashionGenericMaterialName'
  @sap.label : 'Prodotto generico'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.value.list : 'standard'
  CrossPlantConfigurableProduct : String(18);
  @sap.label : 'Nome prodotto generico'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  FashionGenericMaterialName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaterialName'
  @sap.label : 'Prodotto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.value.list : 'standard'
  Material : String(18);
  @sap.label : 'Nome del prodotto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MaterialName : String(40);
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Inizio pianificato'
  @sap.quickinfo : 'Data di inizio pianificata'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  MfgOrderScheduledStartDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Fine pianificata'
  @sap.quickinfo : 'Data fine programmata'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  MfgOrderScheduledEndDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Inizio effettivo'
  @sap.quickinfo : 'Data di inizio effettiva'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  MfgOrderActualStartDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Fine effettiva'
  @sap.quickinfo : 'Data di fine effettiva'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  MfgOrderActualEndDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Fine confermata'
  @sap.quickinfo : 'Data fine confermata'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  MfgOrderConfirmedEndDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Inizio pianificato'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  MfgOrderPlannedStartDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Fine pianificata'
  @sap.quickinfo : 'Data di fine pianificata'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  MfgOrderPlannedEndDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Data di rilascio pianificata'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  MfgOrderPlannedReleaseDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Data di rilascio schedulata'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  MfgOrderScheduledReleaseDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Data di rilascio effettiva'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  MfgOrderActualReleaseDate : Date;
  @sap.label : 'Unità di produzione'
  @sap.quickinfo : 'Unità di misura di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità totale'
  @sap.quickinfo : 'Quantità totale pianificata'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderPlannedTotalQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità di scarto'
  @sap.quickinfo : 'Quantità di scarto pianificata'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderPlannedScrapQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Qtà ott. pian.'
  @sap.quickinfo : 'Quantità ottenuta pianificata'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderPlannedYieldQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Qtà ott. conf.'
  @sap.quickinfo : 'Qtà ottenuta confermata dalla conferma d''ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderConfirmedYieldQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Scarto conf.'
  @sap.quickinfo : 'Quantità di scarto confermata nella conferma ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderConfirmedScrapQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Rifinitura conf.'
  @sap.quickinfo : 'Quantità rifinitura confermata totale'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderConfirmedReworkQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità entrata merci'
  @sap.quickinfo : 'Quantità di entrata merci per posizione ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ActualDeliveredQuantity : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità aperta'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderOpenQuantity : Decimal(13, 3);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsCreated : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsReleased : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsPartiallyReleased : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsConfirmed : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsPartiallyConfirmed : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsDelivered : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsDeleted : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsTechnicallyCompleted : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsClosed : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderIsPartiallyDelivered : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderIsToBeDeleted : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CreatedStatusQtyInPercent : Integer;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ReleasedStatusQtyInPercent : Integer;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ConfirmedStatusQtyInPercent : Integer;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DeliveredStatusQtyInPercent : Integer;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DeletedStatusQtyInPercent : Integer;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TechlyCmpltdStatusQtyInPercent : Integer;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ClosedStatusQtyInPercent : Integer;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderHasProductionHold : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderHasExecutionDelay : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderHasMissingComponents : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderHasDeviation : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderHasQualityIssue : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine'
  @sap.quickinfo : 'Ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  ManufacturingOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Div. pianificazione'
  @sap.quickinfo : 'Divisione di pianificazione per ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  MRPPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo di prodotti'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  MaterialGroup : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato dell''ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  OrderStatusInternalID : String(2);
  @sap.label : 'Numero ordini di produzione'
  @sap.quickinfo : 'Numero di ordini di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  NumberOfProductionOrders : Integer;
  @sap.label : 'Variabile booleana (X=true, -=false, space=unknown)'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  GenericProductIsFilled : Boolean;
  to_Comp : Association to many UI_RFM_MNG_MSTRPRODNORD.C_RFM_MasterMfgOrdOpComponents {  };
  to_Oper : Association to many UI_RFM_MNG_MSTRPRODNORD.C_RFM_MasterMfgOrdOpSchedule {  };
  to_Order : Composition of many UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMfgOrder {  };
} actions {
  action AssignToCombinedProductionOrd(
    @sap.label : 'Descr. ID esecuzione'
    JobName : String(255),
    @sap.label : 'Ordine principale'
    CombinedProductionOrder : String(12)
  ) returns UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMasterMfgOrder;
  action AvailabilityCheckMstrProdnOrd(
    @sap.label : 'Descr. ID esecuzione'
    JobName : String(255)
  ) returns UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMasterMfgOrder;
  action CloseMasterProductionOrder(
    @sap.label : 'Descr. ID esecuzione'
    JobName : String(255)
  ) returns UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMasterMfgOrder;
  action CreateCombinedProductionOrder(
    @sap.label : 'Descr. ID esecuzione'
    JobName : String(255)
  ) returns UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMasterMfgOrder;
  action PerformTechlyCmpltMstrProdnOrd(
    @sap.label : 'Descr. ID esecuzione'
    JobName : String(255)
  ) returns UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMasterMfgOrder;
  action ReleaseMasterProductionOrder(
    @sap.label : 'Descr. ID esecuzione'
    JobName : String(255)
  ) returns UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMasterMfgOrder;
  action RereadProductionMasterData(
    @sap.label : 'Descr. ID esecuzione'
    JobName : String(255)
  ) returns UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMasterMfgOrder;
  action RunCostingForMasterProdnOrd(
    @sap.label : 'Descr. ID esecuzione'
    JobName : String(255)
  ) returns UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMasterMfgOrder;
  action ScheduleMasterProductionOrder(
    @sap.label : 'Inserisci tipo di schedulazione:'
    SchedulingType : String(1),
    @sap.label : 'Inserisci nome job:'
    JobName : String(255)
  ) returns UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMasterMfgOrder;
  action UnassignFromCombinedProdnOrd(
    @sap.label : 'Descr. ID esecuzione'
    JobName : String(255),
    @sap.label : 'Ordine principale'
    CombinedProductionOrder : String(12)
  ) returns UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMasterMfgOrder;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.updatable.path : 'Update_mc'
@sap.label : 'Gestisci ordini di produzione'
entity UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMfgOrder {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine'
  @sap.quickinfo : 'Ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ManufacturingOrder : String(12) not null;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  AssignToMasterProductionOrder_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CreateMasterProductionOrder_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  UnassignFromMasterProdnOrd_ac : Boolean;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderPlannedEndDate_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderPlannedStartDate_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MfgOrderPlannedTotalQty_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ProductCollection_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ProductSeason_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ProductSeasonYear_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ProductTheme_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  StockSegment_fc : Integer;
  @sap.label : 'Dyn. Method Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Update_mc : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Categoria ordine'
  @sap.quickinfo : 'Categoria dell''ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ManufacturingOrderCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ManufacturingOrderType : String(4);
  @sap.label : 'Testo ordine'
  @sap.quickinfo : 'Testo ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ManufacturingOrderText : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'ID interno ordine'
  @sap.quickinfo : 'ID interno dell''ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OrderInternalBillOfOperations : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine riferimento'
  @sap.quickinfo : 'Numero dell''ordine di riferimento'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  ReferenceOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MRPPlantName'
  @sap.label : 'Div. pianificazione'
  @sap.quickinfo : 'Divisione di pianificazione per ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MRPPlant : String(4);
  @sap.label : 'Nome divisione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MRPPlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MRPAreaText'
  @sap.label : 'Area pian. MRP'
  @sap.quickinfo : 'Area MRP ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MRPArea : String(10);
  @sap.label : 'Testo area pian. MRP'
  @sap.quickinfo : 'Testo area MRP ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MRPAreaText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MRPControllerName'
  @sap.label : 'Responsabile MRP'
  @sap.quickinfo : 'Responsabile MRP ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MRPController : String(3);
  @sap.label : 'Nome resp. MRP'
  @sap.quickinfo : 'Nome responsabile MRP ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MRPControllerName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gr. resp. pian.'
  @sap.quickinfo : 'Gruppo di responsabili della pianificazione o reparto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ResponsiblePlannerGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling area'
  @sap.quickinfo : 'Controlling area ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit center'
  @sap.quickinfo : 'Profit center ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro di costo'
  @sap.quickinfo : 'CdC per scarico dei costi semplice'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conto Co.Ge.'
  @sap.quickinfo : 'Conto Co.Ge. per scarico dei costi semplice'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  GLAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Area funzionale'
  @sap.quickinfo : 'Area funzionale ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FunctionalArea : String(16);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductionPlantName'
  @sap.label : 'Div. di produzione'
  @sap.quickinfo : 'Divisione di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductionPlant : String(4);
  @sap.label : 'Nome divisione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductionPlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Responsabile di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductionSupervisor : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine di vendita'
  @sap.quickinfo : 'Ordine di vendita per ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  SalesDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Pos. ordine vendita'
  @sap.quickinfo : 'Posizione ordine di vendita per ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  SalesDocumentItem : String(6);
  @sap.label : 'Nome elemento WBS'
  @sap.quickinfo : 'Nome elemento Work Breakdown Structure'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WBSDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductionVersionText'
  @sap.label : 'Versione di prod.'
  @sap.quickinfo : 'Versione di produzione ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  ProductionVersion : String(4);
  @sap.label : 'Testo vers. prod.'
  @sap.quickinfo : 'Testo breve per versione produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductionVersionText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Linea di prod.'
  @sap.quickinfo : 'Linea di produzione per produzione ripetitiva'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  ProductionLine : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Importanza ordine'
  @sap.quickinfo : 'Codice importanza ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ManufacturingOrderImportance : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine superiore'
  @sap.quickinfo : 'Numero dell''ordine superiore'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  MfgOrderSuperiorMfgOrder : String(12);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Ispezione'
  @sap.quickinfo : 'Numero lotto di controllo'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InspectionLot : String(12);
  @sap.display.format : 'UpperCase'
  @sap.text : 'SchedulingTypeName'
  @sap.label : 'Tipo di pianificazione base'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BasicSchedulingType : String(1);
  @sap.label : 'Nome tipo sched.'
  @sap.quickinfo : 'Descrizione del tipo di schedulazione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SchedulingTypeName : String(30);
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Inizio pianificato'
  @sap.quickinfo : 'Data di inizio pianificata'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderScheduledStartDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Fine pianificata'
  @sap.quickinfo : 'Data fine programmata'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderScheduledEndDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Inizio effettivo'
  @sap.quickinfo : 'Data inizio effettiva di ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderActualStartDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Fine effettiva'
  @sap.quickinfo : 'Data di fine effettiva'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderActualEndDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Data fine confermata'
  @sap.quickinfo : 'Data di fine confermata ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderConfirmedEndDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Data di creazione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderCreationDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Data modifica'
  @sap.quickinfo : 'Data di modifica'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDate : Date;
  @sap.display.format : 'Date'
  @sap.field.control : 'MfgOrderPlannedStartDate_fc'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Inizio pianificato'
  MfgOrderPlannedStartDate : Date;
  @sap.display.format : 'Date'
  @sap.field.control : 'MfgOrderPlannedEndDate_fc'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Fine pianificata'
  @sap.quickinfo : 'Data di fine pianificata'
  MfgOrderPlannedEndDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Data ril.pianificata'
  @sap.quickinfo : 'Data di rilascio pianificata'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderPlannedReleaseDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Data rilascio schedulata'
  @sap.quickinfo : 'Data di rilascio schedulata'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderScheduledReleaseDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Data ril. effettiva'
  @sap.quickinfo : 'Data di rilascio effettiva'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderActualReleaseDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Inizio'
  @sap.quickinfo : 'Data d''inizio ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OrderStartDate : Date;
  @sap.display.format : 'Date'
  @sap.filter.restriction : 'interval'
  @sap.label : 'Fine'
  @sap.quickinfo : 'Data fine ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderEndDate : Date;
  @sap.text : 'UnitOfMeasureName'
  @sap.label : 'Unità di produzione'
  @sap.quickinfo : 'Unità di misura di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.label : 'Nome unità di produzione'
  @sap.quickinfo : 'Testo unità di misura (massimo 10 posizioni)'
  UnitOfMeasureName : String(10);
  @sap.field.control : 'MfgOrderPlannedTotalQty_fc'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità totale'
  @sap.quickinfo : 'Quantità totale pianificata per ordine di produzione'
  MfgOrderPlannedTotalQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità di scarto'
  @sap.quickinfo : 'Quantità di scarto pianificata per ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderPlannedScrapQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Qtà ott. pian.'
  @sap.quickinfo : 'Quantità ottenuta pianificata'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderPlannedYieldQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Qtà ott. conf.'
  @sap.quickinfo : 'Qtà ottenuta confermata dalla conferma d''ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderConfirmedYieldQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Scarto conf.'
  @sap.quickinfo : 'Quantità di scarto confermata nella conferma ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderConfirmedScrapQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Rifinitura conf.'
  @sap.quickinfo : 'Quantità rifinitura confermata totale'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MfgOrderConfirmedReworkQty : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Scostamento previsto'
  @sap.quickinfo : 'Scostamento quantità ottenuta previsto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ExpectedDeviationQuantity : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità entrata merci'
  @sap.quickinfo : 'Quantità di entrata merci per posizione ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ActualDeliveredQuantity : Decimal(13, 3);
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità aperta'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OrderOpenQuantity : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaterialName'
  @sap.label : 'Prodotto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  Material : String(18);
  @sap.label : 'Descr. materiale'
  @sap.quickinfo : 'Descrizione materiale'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaterialName : String(40);
  @sap.unit : 'ProductionUnit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OrderYieldDeviationQty : Decimal(15, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Variante parametro di validità'
  EffectivityParameterVariant : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partita'
  @sap.quickinfo : 'Ordine di produzione - partita del materiale'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'standard'
  Batch : String(10);
  @sap.label : 'Testo esteso'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OrderLongText : LargeString;
  @sap.label : 'Nome tipo di ordine'
  @sap.quickinfo : 'Nome tipo ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ManufacturingOrderTypeName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Magazzino'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'StockSegment_fc'
  @sap.label : 'Segmento di stock'
  StockSegment : String(40);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'ProductSeasonYear_fc'
  @sap.label : 'Esercizio stagionale'
  ProductSeasonYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'ProductSeason_fc'
  @sap.label : 'Stagione'
  ProductSeason : String(10);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'ProductCollection_fc'
  @sap.label : 'Collezione'
  @sap.quickinfo : 'Collezione fashion'
  ProductCollection : String(10);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'ProductTheme_fc'
  @sap.label : 'Tema'
  @sap.quickinfo : 'Tema fashion'
  ProductTheme : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'FashionGenericMaterialName'
  @sap.label : 'Prodotto generico'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CrossPlantConfigurableProduct : String(18);
  @sap.label : 'Descr. materiale'
  @sap.quickinfo : 'Descrizione materiale'
  FashionGenericMaterialName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaterialTypeName'
  @sap.label : 'Tipo di prodotto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaterialType : String(4);
  @sap.label : 'Nome del tipo di prodotto'
  @sap.quickinfo : 'Definizione del tipo materiale'
  MaterialTypeName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaterialGroupName'
  @sap.label : 'Gruppo di prodotti'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaterialGroup : String(9);
  @sap.label : 'Nome del gruppo di prodotti'
  @sap.quickinfo : 'Descrizione gruppo prodotti'
  MaterialGroupName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductCategoryName'
  @sap.label : 'Categoria di prodotto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductCategory : String(2);
  @sap.label : 'Nome categoria di prodotto'
  @sap.quickinfo : 'Testo per categoria di prodotto'
  ProductCategoryName : String(60);
  @sap.label : 'Caratteristica prodotto 1'
  @sap.quickinfo : 'Valore caratteristica per colori in caso di varianti'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductCharacteristic1 : String(18);
  @sap.label : 'Caratteristica prodotto 2'
  @sap.quickinfo : 'Valore caratteristica per la dimens. princ. nelle varianti'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductCharacteristic2 : String(18);
  @sap.label : 'Caratteristica prodotto 3'
  @sap.quickinfo : 'Valore caratt. per la seconda dimensione nelle varianti'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductCharacteristic3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine di produzione principale'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MasterProductionOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine di produzione combinato'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CombinedProductionOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero oggetto'
  @sap.quickinfo : 'ID interno oggetto'
  ObjectInternalID : String(22);
  OrderHasDeviation : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OrderHasQualityIssue : String(1);
  OrderHasExecutionDelay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Validità'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EffectivityParameterDesc : String(256);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato di esecuzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ImpactedActyExecSts : String(2);
  @sap.label : 'Stato dell''ordine'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderStatusText : String(30);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderHasProductionHold : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderHasMissingComponents : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'ID interno stato dell''ordine'
  OrderStatusInternalID : String(2);
  to_Master : Association to UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMasterMfgOrder {  };
} actions {
  action AssignToMasterProductionOrder(
    @sap.label : 'Descr. ID esecuzione'
    JobName : String(255),
    @sap.label : 'Ordine principale'
    MasterProductionOrder : String(12)
  ) returns UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMfgOrder;
  action CreateMasterProductionOrder(
    @sap.label : 'Descr. ID esecuzione'
    JobName : String(255)
  ) returns UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMfgOrder;
  action UnassignFromMasterProdnOrd(
    @sap.label : 'Descr. ID esecuzione'
    JobName : String(255),
    @sap.label : 'Ordine principale'
    MasterProductionOrder : String(12)
  ) returns UI_RFM_MNG_MSTRPRODNORD.C_RFM_ManageMfgOrder;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Componente operazione ordine principale'
entity UI_RFM_MNG_MSTRPRODNORD.C_RFM_MasterMfgOrdOpComponents {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  key MasterProductionOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaterialName'
  @sap.label : 'Prodotto'
  key Material : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Div. di produzione'
  @sap.quickinfo : 'Divisione di produzione'
  ProductionPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'Plant_Text'
  @sap.label : 'Divisione'
  Plant : String(4);
  @sap.label : 'Nome divisione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Plant_Text : String(30);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Categoria di ordine'
  @sap.quickinfo : 'Categoria ordine di produzione'
  ManufacturingOrderCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di ordine'
  @sap.quickinfo : 'Tipo di ordine di produzione'
  ManufacturingOrderType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ord. prod. combinato'
  @sap.quickinfo : 'Ordine prod. principale comb.'
  CombinedProductionOrder : String(12);
  @sap.label : 'Unità misura base'
  @sap.quickinfo : 'Unità di misura di base'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.label : 'UM acquisizione'
  @sap.quickinfo : 'Unità di misura di registrazione'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantità totale'
  RequiredQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Consumato'
  WithdrawnQuantity : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Non coperto'
  UncoveredQuantity : Decimal(14, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Confermato'
  ConfirmedAvailableQuantity : Decimal(16, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantità aperta'
  OpenQuantity : Decimal(14, 3);
  @sap.label : 'Componente mancante'
  MaterialComponentIsMissing : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Data fabbisogno'
  MatlCompRequirementDate : Date;
  @sap.unit : 'EntryUnit'
  @sap.label : 'Quantità in unità di misura di acquisizione'
  GoodsMovementEntryQty : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantità mancante'
  MissingQuantity : Decimal(16, 3);
  @sap.label : 'Nome del prodotto'
  MaterialName : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Pianificazioni operazioni ordine principale'
entity UI_RFM_MNG_MSTRPRODNORD.C_RFM_MasterMfgOrdOpSchedule {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  key MasterProductionOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'MfgOrderOperationText'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  key ManufacturingOrderOperation : String(4) not null;
  @sap.label : 'Testo operazione'
  MfgOrderOperationText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Div. di produzione'
  @sap.quickinfo : 'Divisione di produzione'
  ProductionPlant : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Categoria di ordine'
  @sap.quickinfo : 'Categoria ordine di produzione'
  ManufacturingOrderCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di ordine'
  @sap.quickinfo : 'Tipo di ordine di produzione'
  ManufacturingOrderType : String(4);
  @sap.unit : 'OperationUnit'
  @sap.label : 'Quantità di base'
  @sap.quickinfo : 'Quantità di base operazione di produzione'
  OpPlannedTotalQuantity : Decimal(13, 3);
  @sap.unit : 'OperationUnit'
  @sap.label : 'Quantità ottenuta confermata'
  @sap.quickinfo : 'Quantità ottenuta confermata di quantità totale'
  OpTotalConfirmedYieldQty : Decimal(13, 3);
  @sap.unit : 'OperationUnit'
  @sap.label : 'Scarto previsto'
  @sap.quickinfo : 'Quantità di scarto prevista nell''operazione'
  OpPlannedScrapQuantity : Decimal(13, 3);
  @sap.unit : 'OperationUnit'
  @sap.label : 'Rifinitura conf.'
  @sap.quickinfo : 'Quantità rifinitura confermata totale'
  OperationConfirmedReworkQty : Decimal(13, 3);
  @sap.unit : 'OperationUnit'
  @sap.label : 'Scarto confermato'
  @sap.quickinfo : 'Quantità scarto totale confermata'
  OpTotalConfirmedScrapQty : Decimal(13, 3);
  @sap.label : 'Unità operazione'
  @sap.quickinfo : 'Unità di misura operazione'
  @sap.semantics : 'unit-of-measure'
  OperationUnit : String(3);
  @sap.display.format : 'Date'
  @sap.label : 'Inizio pianificato'
  OpLtstSchedldExecStrtDte : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Fine pianificata'
  OpLtstSchedldExecEndDte : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Inizio effettivo'
  OpActualExecutionStartDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Help valori per tipo di schedulazione'
entity UI_RFM_MNG_MSTRPRODNORD.C_RSHSchedulingTypeVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'SchedulingTypeName'
  @sap.label : 'Tipo schedulazione'
  @sap.quickinfo : 'Tipo di schedulazione'
  key SchedulingType : String(1) not null;
  @sap.label : 'Testo per tipo di schedulazione'
  @sap.quickinfo : 'Descrizione del tipo di schedulazione'
  SchedulingTypeName : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Informazioni sulla partita'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_BatchStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Codice materiale'
  key Material : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partita'
  @sap.quickinfo : 'Numero partita'
  key Batch : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Centro di costo'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_CostCenterStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CostCenter_Text'
  @sap.label : 'CdC'
  @sap.quickinfo : 'Centro di costo'
  key CostCenter : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Fine validità'
  @sap.quickinfo : 'Data di fine validità'
  key ValidityEndDate : Date not null;
  @sap.label : 'Nome centro di costo'
  @sap.quickinfo : 'Nome del centro di costo'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CostCenter_Text : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio validità'
  ValidityStartDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Conto Co.Ge.'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_GLAccountStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'GLAccount_Text'
  @sap.label : 'Conto Co.Ge.'
  @sap.quickinfo : 'Numero del conto Co.Ge.'
  key GLAccount : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Società'
  key CompanyCode : String(4) not null;
  @sap.label : 'Nome conto Co.Ge.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  GLAccount_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID est. cto Co.Ge.'
  @sap.quickinfo : 'Numero di conto Co.Ge.'
  GLAccountExternal : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conto Co.Ge. alternativo'
  @sap.quickinfo : 'Numero di conto Co.Ge. alternativo nella società'
  AlternativeGLAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Piano dei conti'
  ChartOfAccounts : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo conti'
  @sap.quickinfo : 'Gruppo conti Co.Ge.'
  GLAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo conto Co.Ge.'
  @sap.quickinfo : 'Tipo di conto Co.Ge.'
  GLAccountType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID riconcil.'
  @sap.quickinfo : 'Il conto è un conto di riconciliazione'
  ReconciliationAccountType : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Ordine di produzione principale'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_MasterProductionOrderVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine di produzione principale'
  key MasterProductionOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ord. prod. combinato'
  @sap.quickinfo : 'Ordine prod. principale comb.'
  CombinedProductionOrder : String(12);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Gruppo merci'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_MaterialGroup {
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaterialGroup_Text'
  @sap.label : 'Gruppo di prodotti'
  key MaterialGroup : String(9) not null;
  @sap.label : 'Descr. gruppo prod.'
  @sap.quickinfo : 'Descrizione gruppo prodotti'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaterialGroup_Text : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Materiale'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_MaterialStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Material_Text'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Codice materiale'
  key Material : String(18) not null;
  @sap.label : 'Descr. materiale'
  @sap.quickinfo : 'Descrizione materiale'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Material_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Ordine di produzione'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_MfgOrderStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ManufacturingOrderText'
  @sap.label : 'Ordine di produzione'
  @sap.quickinfo : 'ID ordine di produzione'
  key ManufacturingOrder : String(12) not null;
  @sap.label : 'Testo ordine'
  @sap.quickinfo : 'Testo ordine di produzione'
  ManufacturingOrderText : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Divisione'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_PlantStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantName'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.label : 'Nome divisione'
  PlantName : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Linea di produzione'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_ProductionLineStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductionLine_Text'
  @sap.label : 'Centro di lavoro'
  key ProductionLine : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.label : 'Testo centro lavoro'
  @sap.quickinfo : 'Testo centro di lavoro'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductionLine_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Versione di produzione'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_ProductionVersionStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Codice materiale'
  @sap.value.list : 'standard'
  key Material : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductionVersionText'
  @sap.label : 'Versione di prod.'
  @sap.quickinfo : 'Versione di produzione'
  key ProductionVersion : String(4) not null;
  @sap.label : 'Testo vers. prod.'
  @sap.quickinfo : 'Testo breve per versione produzione'
  ProductionVersionText : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Data fine validità'
  @sap.quickinfo : 'Data di fine validità'
  ValidityEndDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Data inizio validità'
  @sap.quickinfo : 'Data di inizio validità'
  ValidityStartDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Help valori prodotto'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_ProductVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Product_Text'
  @sap.label : 'Prodotto'
  @sap.quickinfo : 'Codice prodotto'
  key Product : String(18) not null;
  @sap.label : 'Descrizione prodotto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Product_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID prodotto esterno'
  @sap.quickinfo : 'Rappresentazione esterna del codice materiale'
  ProductExternalID : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Settore industriale'
  IndustrySector : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di prodotto'
  ProductType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo di prodotti'
  ProductGroup : String(9);
  @sap.label : 'Unità misura base'
  @sap.quickinfo : 'Unità di misura di base'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Peso lordo'
  GrossWeight : Decimal(13, 3);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Peso netto'
  NetWeight : Decimal(13, 3);
  @sap.label : 'Unità di peso'
  @sap.semantics : 'unit-of-measure'
  WeightUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costruttore'
  @sap.quickinfo : 'Numero di un costruttore'
  ManufacturerNumber : String(10);
  @sap.label : 'Gestione partite'
  @sap.quickinfo : 'Indicatore Obbligo di gestione a partita'
  IsBatchManagementRequired : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cod. comp. costr.'
  @sap.quickinfo : 'Codice componente costruttore'
  ProductManufacturerNumber : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Categoria prodotto'
  ArticleCategory : String(2);
  @sap.unit : 'ZZ1_SPESSOREPELLAME_PRDU'
  @sap.label : 'Spessore Pellame'
  ZZ1_SPESSOREPELLAME_PRD : Decimal(15, 3);
  @sap.label : 'Spessore Pellame UoM'
  @sap.quickinfo : 'Spessore Pellame (Unit)'
  @sap.semantics : 'unit-of-measure'
  ZZ1_SPESSOREPELLAME_PRDU : String(3);
  @sap.label : 'Gola'
  ZZ1_GOLA_PRD : String(18);
  @sap.label : 'Coda'
  ZZ1_CODA_PRD : String(18);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Profit center'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_ProfitCenterStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProfitCenter_Text'
  @sap.label : 'Profit center'
  key ProfitCenter : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Fine validità'
  @sap.quickinfo : 'Data di fine validità'
  key ValidityEndDate : Date not null;
  @sap.label : 'Nome profit center'
  @sap.quickinfo : 'Descrizione del profit center'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProfitCenter_Text : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio validità'
  ValidityStartDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Help valori per articolo generico'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_RFMGenericArticleVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Product_Text'
  @sap.label : 'Prodotto generico'
  key Product : String(18) not null;
  @sap.label : 'Descrizione prodotto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Product_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Ricerca ordine di produzione raggruppato'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_RFM_CombinedProductionOrdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine di produzione combinato'
  key CombinedProductionOrder : String(12) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Stato dell''ordine di produzione - Testo'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_RFM_MfgOrderStatusText {
  @sap.display.format : 'UpperCase'
  @sap.text : 'OrderStatusText'
  @sap.label : 'Stato dell''ordine'
  key OrderStatusInternalID : String(10) not null;
  @sap.label : 'Lingua'
  key Language : String(2) not null;
  @sap.label : 'Descrizione stato dell''ordine'
  OrderStatusText : String(60);
  StatusCode : String(5);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Posizione dell''ordine di vendita'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_SalesOrderItemStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine cliente'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.text : 'SalesOrderItemText'
  @sap.label : 'Posizione'
  @sap.quickinfo : 'Posizione dell''ordine cliente'
  key SalesOrderItem : String(6) not null;
  @sap.label : 'Descr. posizione'
  @sap.quickinfo : 'Testo breve per posizione ordine del cliente'
  SalesOrderItemText : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Ordine di vendita'
@sap.value.list : 'true'
entity UI_RFM_MNG_MSTRPRODNORD.I_SalesOrderStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine cliente'
  key SalesOrder : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity UI_RFM_MNG_MSTRPRODNORD.SAP__Currencies {
  @sap.label : 'Divisa'
  @sap.semantics : 'currency-code'
  key CurrencyCode : String(5) not null;
  @sap.label : 'Codice ISO'
  ISOCode : String(3) not null;
  @sap.label : 'Testo breve'
  Text : String(15) not null;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Decimali'
  DecimalPlaces : Integer not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity UI_RFM_MNG_MSTRPRODNORD.SAP__UnitsOfMeasure {
  @sap.label : 'Unità misura interna'
  @sap.semantics : 'unit-of-measure'
  key UnitCode : String(3) not null;
  @sap.label : 'Cd. ISO'
  ISOCode : String(3) not null;
  @sap.label : 'Commerciale'
  ExternalCode : String(3) not null;
  @sap.label : 'Testo UM'
  Text : String(30) not null;
  @sap.label : 'Decimali'
  DecimalPlaces : Integer;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity UI_RFM_MNG_MSTRPRODNORD.SAP__MyDocumentDescriptions {
  @sap.label : 'UUID'
  key Id : UUID not null;
  CreatedBy : String(12) not null;
  @odata.Type : 'Edm.DateTime'
  @sap.label : 'Timestamp'
  CreatedAt : DateTime not null;
  FileName : String(256) not null;
  Title : String(256) not null;
  Format : Association to UI_RFM_MNG_MSTRPRODNORD.SAP__FormatSet {  };
  TableColumns : Association to many UI_RFM_MNG_MSTRPRODNORD.SAP__TableColumnsSet {  };
  CoverPage : Association to many UI_RFM_MNG_MSTRPRODNORD.SAP__CoverPageSet {  };
  Signature : Association to UI_RFM_MNG_MSTRPRODNORD.SAP__SignatureSet {  };
  PDFStandard : Association to UI_RFM_MNG_MSTRPRODNORD.SAP__PDFStandardSet {  };
  Hierarchy : Association to UI_RFM_MNG_MSTRPRODNORD.SAP__HierarchySet {  };
  Header : Association to UI_RFM_MNG_MSTRPRODNORD.SAP__PDFHeaderSet {  };
  Footer : Association to UI_RFM_MNG_MSTRPRODNORD.SAP__PDFFooterSet {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity UI_RFM_MNG_MSTRPRODNORD.SAP__FormatSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  FitToPage : UI_RFM_MNG_MSTRPRODNORD.SAP__FitToPage not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  FontSize : Integer not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Orientation : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PaperSize : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  BorderSize : Integer not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarginSize : Integer not null;
  @sap.label : 'Font Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  FontName : String(255) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Padding : Integer not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity UI_RFM_MNG_MSTRPRODNORD.SAP__PDFStandardSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  UsePDFAConformance : Boolean not null;
  @sap.label : 'Indicatore'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DoEnableAccessibility : Boolean not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity UI_RFM_MNG_MSTRPRODNORD.SAP__TableColumnsSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Name : String(256) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Header : String(256) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  HorizontalAlignment : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity UI_RFM_MNG_MSTRPRODNORD.SAP__CoverPageSet {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Title : String(256) not null;
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Name : String(256) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Value : String(256) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity UI_RFM_MNG_MSTRPRODNORD.SAP__SignatureSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.label : 'Indicatore'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DoSign : Boolean not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Reason : String(256) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity UI_RFM_MNG_MSTRPRODNORD.SAP__HierarchySet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DistanceFromRootElement : String(256) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DrillStateElement : String(256) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity UI_RFM_MNG_MSTRPRODNORD.SAP__PDFHeaderSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  Right : UI_RFM_MNG_MSTRPRODNORD.SAP__HeaderFooterField not null;
  Left : UI_RFM_MNG_MSTRPRODNORD.SAP__HeaderFooterField not null;
  Center : UI_RFM_MNG_MSTRPRODNORD.SAP__HeaderFooterField not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity UI_RFM_MNG_MSTRPRODNORD.SAP__PDFFooterSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  Right : UI_RFM_MNG_MSTRPRODNORD.SAP__HeaderFooterField not null;
  Left : UI_RFM_MNG_MSTRPRODNORD.SAP__HeaderFooterField not null;
  Center : UI_RFM_MNG_MSTRPRODNORD.SAP__HeaderFooterField not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity UI_RFM_MNG_MSTRPRODNORD.SAP__ValueHelpSet {
  key VALUEHELP : LargeString not null;
  FIELD_VALUE : String(10) not null;
  DESCRIPTION : LargeString;
};

@cds.external : true
type UI_RFM_MNG_MSTRPRODNORD.SAP__FitToPage {
  @sap.label : 'Error behavior'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ErrorRecoveryBehavior : String(8) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  IsEnabled : Boolean not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MinimumFontSize : Integer not null;
};

@cds.external : true
type UI_RFM_MNG_MSTRPRODNORD.SAP__HeaderFooterField {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Type : String(256) not null;
};

