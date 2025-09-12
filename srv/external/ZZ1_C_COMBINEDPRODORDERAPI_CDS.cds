/* checksum : 41638f7389814b4d6d12943ba9c9f025 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZZ1_C_COMBINEDPRODORDERAPI_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'ZZ1_C_COMBINEDPRODORDERAPI'
entity ZZ1_C_COMBINEDPRODORDERAPI_CDS.ZZ1_C_COMBINEDPRODORDERAPI {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. prod. combinato'
  @sap.quickinfo : 'Ordine prod. principale comb.'
  CombinedOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo ordine'
  @sap.quickinfo : 'Testo ordine di produzione'
  ManufacturingOrderText : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di ordine'
  ManufacturingOrderType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Flag di canc.'
  @sap.quickinfo : 'Flag di cancellazione'
  IsMarkedForDeletion : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Autore'
  @sap.quickinfo : 'Nome autore acquisizione'
  CreatedByUser : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Società'
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di produzione'
  @sap.quickinfo : 'Unità di misura di produzione'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Esercizio stagionale'
  ProductSeasonYear : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stagione'
  ProductSeason : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Collezione'
  @sap.quickinfo : 'Collezione fashion'
  ProductCollection : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tema'
  @sap.quickinfo : 'Tema fashion'
  ProductTheme : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'PC val.per tt.div.'
  @sap.quickinfo : 'Prodotto configurabile valido per tutte le divisioni'
  CrossPlantConfigurableProduct : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Segmento di stock'
  StockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Div. di produzione'
  @sap.quickinfo : 'Divisione di produzione'
  ProductionPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile MRP'
  MRPController : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'MfgOrderPlannedStartDate'
  MfgOrderPlannedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'MfgOrderScheduledStartDate'
  MfgOrderScheduledStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'MfgOrderScheduledEndDate'
  MfgOrderScheduledEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'MfgOrderConfirmedEndDate'
  MfgOrderConfirmedEndDate : Date;
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'TotMfgOrderPlannedTotalQty'
  @sap.filterable : 'false'
  TotMfgOrderPlannedTotalQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'TotMfgOrderPlannedScrapQty'
  TotMfgOrderPlannedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'ActualDeliveredQuantity'
  ActualDeliveredQuantity : Decimal(13, 3);
  to_ZZ1_C_COMBORDER_COMP : Association to many ZZ1_C_COMBINEDPRODORDERAPI_CDS.ZZ1_C_COMBORDER_COMP {  };
  to_ZZ1_C_MFG_COMBINEDOPE : Association to many ZZ1_C_COMBINEDPRODORDERAPI_CDS.ZZ1_C_MFG_COMBINEDOPE {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'ZZ1_C_COMBORDER_COMP'
entity ZZ1_C_COMBINEDPRODORDERAPI_CDS.ZZ1_C_COMBORDER_COMP {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. prod. combinato'
  @sap.quickinfo : 'Ordine prod. principale comb.'
  CprodOrd : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di fabbisogno'
  requirementtype : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Codice materiale'
  Material : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Descrizione prodotto'
  ProductDescription : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisione'
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore generale dell''ordine'
  OrderIntBillOfOperationsItem : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di posizione distinta base'
  BillOfMaterialItemNumber_2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità misura base'
  @sap.quickinfo : 'Unità di misura di base'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Crit. class.'
  @sap.quickinfo : 'Criterio di classificazione'
  SortField : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cat. pos .dist. base'
  @sap.quickinfo : 'Categoria di posizione distinta base'
  BOMItemCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione dummy'
  @sap.quickinfo : 'Indicatore posizione dummy'
  MaterialComponentIsPhantomItem : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Merce sfusa'
  @sap.quickinfo : 'Indicatore: merce sfusa'
  IsBulkMaterialComponent : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di valutazione stock speciale'
  @sap.quickinfo : 'Tipo di valutazione stock inventario speciale'
  InventorySpecialStockValnType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prel. fin.'
  @sap.quickinfo : 'Prelievo finale dell''impegno'
  ReservationIsFinallyIssued : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'UM acquisizione'
  @sap.quickinfo : 'Unità di misura di registrazione'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Scarto comp. (%)'
  @sap.quickinfo : 'Scarto del componente in percentuale'
  ComponentScrapInPercent : Decimal(5, 2);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Scarto oper. in %'
  @sap.quickinfo : 'Scarto operazione'
  OperationScrapInPercent : Decimal(5, 2);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Scostamento nel lead time'
  LeadTimeOffset : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Magazzino'
  StorageLocation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Area di approvvigionamento produzione'
  ProductionSupplyArea : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Partita'
  @sap.quickinfo : 'Numero partita'
  Batch : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo posizione'
  @sap.quickinfo : 'Testo posizione distinta base (riga 1)'
  BOMItemDescription : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo posizione 2'
  @sap.quickinfo : 'Testo posizione distinta base (riga 2)'
  BOMItemText2 : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Flag di canc.'
  @sap.quickinfo : 'Flag di cancellazione'
  IsMarkedForDeletion : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prodotto'
  @sap.quickinfo : 'Codice prodotto'
  Product : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di produzione'
  @sap.quickinfo : 'Unità di misura di produzione'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Esercizio stagionale'
  ProductSeasonYear : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stagione'
  ProductSeason : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Collezione'
  @sap.quickinfo : 'Collezione fashion'
  ProductCollection : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tema'
  @sap.quickinfo : 'Tema fashion'
  ProductTheme : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di ordine'
  ManufacturingOrderType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Magazzino'
  @sap.quickinfo : 'Magazzino produzione'
  ProductionInvtryManagedLoc : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo di lunghezza 4'
  Lgort1 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo di lunghezza 4'
  Lgort2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo di lunghezza 4'
  Lgort3 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Int. centro lav.'
  @sap.quickinfo : 'ID interno centro di lavoro'
  WorkCenterInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di centro di lavoro'
  WorkCenterTypeCODE_2_1 : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequenza'
  @sap.quickinfo : 'Sequenza ordine di produzione'
  ManufacturingOrderSequence : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Operazione ordine di produzione'
  ManufacturingOrderOperation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  Supplier : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Segmento di stock'
  StockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'ParentStockSegment'
  @sap.quickinfo : 'Segmento di stock'
  ParentStockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'RequirementSegment'
  @sap.quickinfo : 'Segmento fabbisogno'
  RequirementSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tp. stock speciale'
  @sap.quickinfo : 'Tipo di stock inventario speciale'
  InventorySpecialStockType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Centro di lavoro'
  WorkCenter : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Codice cliente'
  Customer : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nome del fornitore'
  BPSupplierName : String(81);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Via'
  @sap.quickinfo : 'Via e numero civico'
  StreetName : String(35);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Città'
  CityName : String(35);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'CAP'
  @sap.quickinfo : 'Codice di avviamento postale'
  PostalCode : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiave paese/reg.'
  @sap.quickinfo : 'Chiave paese/regione'
  Country : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Regione'
  @sap.quickinfo : 'Regione (stato federale, stato federato, provincia, contea)'
  Region : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'ComponentIsMissing'
  ComponentIsMissing : String(1);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'TotalAllocQty'
  @sap.filterable : 'false'
  TotalAllocQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'TotalDefaultAllocQty'
  TotalDefaultAllocQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'TotalProdAllocQty'
  TotalProdAllocQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'TotalDeliveryQty'
  TotalDeliveryQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'TotalRequiredQuantity'
  TotalRequiredQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'TotalQuantityInEntryUnit'
  TotalQuantityInEntryUnit : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'TotalWithdrawnQuantity'
  TotalWithdrawnQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'TotalConfdQtyForATPInBaseUoM'
  TotalConfdQtyForATPInBaseUoM : Decimal(15, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'TotalMatQtyToBaseQtyNmrtr'
  TotalMatQtyToBaseQtyNmrtr : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'TotalMatQtyToBaseQtyDnmntr'
  TotalMatQtyToBaseQtyDnmntr : Decimal(5, 0);
  @sap.required.in.filter : 'false'
  @sap.label : 'Descrizione prodotto'
  ProductDescription_1 : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'ZZ1_C_MFG_COMBINEDOPE'
entity ZZ1_C_COMBINEDPRODORDERAPI_CDS.ZZ1_C_MFG_COMBINEDOPE {
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. prod. combinato'
  @sap.quickinfo : 'Ordine prod. principale comb.'
  key CprodOrd : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequenza'
  @sap.quickinfo : 'Sequenza ordine di produzione'
  key ManufacturingOrderSequence : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Operazione ordine di produzione'
  key ManufacturingOrderOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  key ManufacturingOrderOperation_2 : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sotto-operazione'
  @sap.quickinfo : 'Sotto-operazione dell''ordine di produzione'
  key ManufacturingOrderSubOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  key ManufacturingOrdSubOperation_2 : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Numero operazione'
  key MfgOrderOperationOrSubOp : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  key MfgOrderOperationOrSubOp_2 : String(4) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Codice fase'
  key MfgOrderOperationIsPhase : Boolean not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore generale dell''ordine'
  key OrderIntBillOfOpItemOfPhase : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione superiore'
  key MfgOrderPhaseSuperiorOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione superiore'
  key SuperiorOperation_2 : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria di ordine'
  @sap.quickinfo : 'Categoria ordine di produzione'
  key ManufacturingOrderCategory : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di ordine'
  @sap.quickinfo : 'Tipo di ordine di produzione'
  key ManufacturingOrderType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile di produzione'
  key ProductionSupervisor : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile MRP'
  key MRPController : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gr. resp. pian.'
  @sap.quickinfo : 'Gruppo di responsabili della pianificazione o reparto'
  key ResponsiblePlannerGroup : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Config. prodotto'
  @sap.quickinfo : 'Configurazione prodotto'
  key ProductConfiguration : String(18) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lotto di controllo'
  @sap.quickinfo : 'Numero lotto di controllo'
  key InspectionLot : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Importanza ordine'
  @sap.quickinfo : 'Codice importanza ordine'
  key ManufacturingOrderImportance : String(1) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo operazione'
  @sap.quickinfo : 'Testo operazione ordine di produzione'
  key MfgOrderOperationText : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID testo standard operazione'
  @sap.quickinfo : 'ID interno testo standard operazione'
  key OperationStandardTextCode : String(7) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Esiste testo esteso'
  @sap.quickinfo : 'Codice di ''esistenza testo esteso'''
  key OperationHasLongText : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiave lingua'
  key Language : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Flag di canc.'
  @sap.quickinfo : 'Flag di cancellazione'
  key OperationIsToBeDeleted : Boolean not null;
  @odata.Type : 'Edm.Byte'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di capacità'
  @sap.quickinfo : 'Numero delle capacità richieste'
  key NumberOfCapacities : Integer not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'N. bolle conf.'
  @sap.quickinfo : 'Numero bolle di conferma'
  key NumberOfConfirmationSlips : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Priorità'
  key OperationImportance : String(1) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nodo oper. sovraord.'
  @sap.quickinfo : 'Numero nodo dell''operazione sovraordinata'
  key SuperiorOperationInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Int. centro lav.'
  @sap.quickinfo : 'ID interno centro di lavoro'
  key WorkCenterInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo centro lavoro'
  @sap.quickinfo : 'Tipo di centro di lavoro'
  key WorkCenterTypeCode : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di centro di lavoro'
  key WorkCenterTypeCode_2 : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profilo di controllo'
  @sap.quickinfo : 'Profilo di controllo operazione'
  key OperationControlProfile : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Dest. ricetta contr.'
  @sap.quickinfo : 'Destinatario ricetta di controllo'
  key ControlRecipeDestination : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Conferma'
  @sap.quickinfo : 'Numero di conferma dell''operazione'
  key OperationConfirmation : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di conferme'
  key NumberOfOperationConfirmations : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Calendario fabbrica'
  @sap.quickinfo : 'ID calendario di fabbrica'
  key FactoryCalendar : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fabbisogno capacità'
  @sap.quickinfo : 'ID del record fabbisogno capacità'
  key CapacityRequirement : String(12) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. fabb. capacità'
  @sap.quickinfo : 'Posizione fabbisogno di capacità'
  key CapacityRequirementItem : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di modifica'
  key ChangeNumber : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero oggetto'
  @sap.quickinfo : 'ID interno oggetto'
  key ObjectInternalID : String(22) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero fabbisogno'
  key OperationTrackingNumber : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo DO'
  @sap.quickinfo : 'Tipo distinta delle operazioni'
  key BillOfOperationsType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo'
  @sap.quickinfo : 'Chiave per gruppo di cicli'
  key BillOfOperationsGroup : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cont. gruppi cicli'
  @sap.quickinfo : 'Contatore gruppi cicli'
  key BillOfOperationsVariant : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequenza distinta delle operazioni'
  key BillOfOperationsSequence : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nodo ciclo'
  @sap.quickinfo : 'Numero del nodo ciclo'
  key BOOOperationInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Vers. ciclo lavoro'
  @sap.quickinfo : 'Versione ciclo di lavoro'
  key BillOfOperationsVersion : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria Db'
  @sap.quickinfo : 'Codice categoria distinta base'
  key BillOfMaterialCategory : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base'
  key BillOfMaterialInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base'
  key BillOfMaterialInternalID_2 : String(8) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione Db'
  @sap.quickinfo : 'Pos. distinta base'
  key BillOfMaterialItemNodeNumber : String(8) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore interno'
  key BOMItemNodeCount : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lav. esterna'
  @sap.quickinfo : 'Indicatore: operazione elab. esterna con lavorazione esterna'
  key ExtProcgOperationHasSubcontrg : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Organizzazione acquisti'
  key PurchasingOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo acquisti'
  @sap.quickinfo : 'Gruppo acquisti per attività di elaborazione esterna'
  key PurchasingGroup : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Richiesta d''acquisto'
  @sap.quickinfo : 'Numero della richiesta d''acquisto'
  key PurchaseRequisition : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione della richiesta d''acquisto'
  @sap.quickinfo : 'ID posizione della richiesta d''acquisto'
  key PurchaseRequisitionItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. acquisto'
  @sap.quickinfo : 'Numero dell''ordine d''acquisto'
  key PurchaseOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. ord. acq.'
  @sap.quickinfo : 'Numero posizione dell''ordine acquisto'
  key PurchaseOrderItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Record info'
  @sap.quickinfo : 'Record info acquisti'
  key PurchasingInfoRecord : String(10) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Il prezzo è fisso'
  @sap.quickinfo : 'I dati del record info acquisti sono fissi'
  key PurgInfoRecdDataIsFixed : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria record info acquisti'
  key PurchasingInfoRecordCategory : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  key Supplier : String(10) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Destin. merci'
  key GoodsRecipientName : String(12) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Punto di scarico'
  key UnloadingPointName : String(25) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo merci'
  key MaterialGroup : String(9) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Chiave divisa'
  @sap.semantics : 'currency-code'
  key OpExternalProcessingCurrency : String(5) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di prezzo mat.'
  @sap.quickinfo : 'Quantità unità di prezzo materiale'
  key NumberOfOperationPriceUnits : Decimal(5, 0) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Società'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Settore contabile'
  key BusinessArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profit center'
  key ProfitCenter : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'CdC richiedente'
  @sap.quickinfo : 'Centro di costo richiedente'
  key RequestingCostCenter : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Voce di costo'
  key CostElement : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Variante CCST'
  @sap.quickinfo : 'Variante di calcolo costi'
  key CostingVariant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Schema CCST'
  key CostingSheet : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'N. CCST'
  @sap.quickinfo : 'N. calcolo costi per CCST senza struttura quantitativa'
  key CostEstimate : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisa oggetto'
  @sap.quickinfo : 'Divisa oggetto operazione network'
  @sap.semantics : 'currency-code'
  key ControllingObjectCurrency : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Classe dell''oggetto CO'
  key ControllingObjectClass : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Area funzionale'
  key FunctionalArea : String(16) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sede fiscale'
  key TaxJurisdiction : String(15) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Voce retr. dip.'
  @sap.quickinfo : 'Voce retributiva dipendente'
  key EmployeeWageType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gr. retr. dipendente'
  @sap.quickinfo : 'Gruppo retributivo dipendente'
  key EmployeeWageGroup : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Idoneità dipendente'
  key EmployeeSuitability : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'N. mod. ril.tempi'
  @sap.quickinfo : 'Numero moduli di rilevazione tempi'
  key NumberOfTimeTickets : Decimal(3, 0) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ris. um.'
  @sap.quickinfo : 'Codice identificativo dipendente'
  key Personnel : String(8) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero dipendenti'
  key NumberOfEmployees : Decimal(5, 2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cat. gr. attrezz.'
  @sap.quickinfo : 'Categoria gruppo attr. operazione'
  key OperationSetupGroupCategory : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo attrezzaggio'
  @sap.quickinfo : 'Gruppo attr. operazione'
  key OperationSetupGroup : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo attrezzaggio'
  @sap.quickinfo : 'Tipo attr. operazione'
  key OperationSetupType : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Sovrapposiz.obblig.'
  @sap.quickinfo : 'Sovrapposizione obbligatoria'
  key OperationOverlappingIsRequired : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Sovrapp. facoltativa'
  @sap.quickinfo : 'Sovrapposizione facoltativa'
  key OperationOverlappingIsPossible : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prod.a flusso cont.'
  key OperationsIsAlwaysOverlapping : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Sudd. obbligatoria'
  @sap.quickinfo : 'Suddivisione obbligatoria'
  key OperationSplitIsRequired : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'N. max suddivisioni'
  key MaximumNumberOfSplits : Decimal(3, 0) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Strat.riduzione'
  @sap.quickinfo : 'Strategia riduzione lead time operazione'
  key LeadTimeReductionStrategy : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Livello di riduzione'
  @sap.quickinfo : 'Livello di riduzione che riduce lead time dell''operazione'
  key OpSchedldReductionLevel : String(1) not null;
};

