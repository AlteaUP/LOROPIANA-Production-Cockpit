/* checksum : e8bc2068c4b0d1eeffcea2fdc993d99e */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZZ1_I_COMBPRODORDAPI_CDS {
  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.content.version : '1'
  @sap.semantics : 'aggregate'
  @sap.label : 'ZZ1_C_COMBINEDPRODORDER'
  entity ZZ1_C_COMBINEDPRODORDER {
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
    @sap.unit : 'ProductionUnit'
    @sap.label : 'ActualDeliveredQuantity'
    ActualDeliveredQuantity : Decimal(13, 3);
    @sap.aggregation.role : 'dimension'
    @sap.required.in.filter : 'false'
    @sap.unit : 'ProductionUnit'
    @sap.label : 'TotMfgOrderPlannedScrapQty'
    TotMfgOrderPlannedScrapQty : Decimal(13, 3);
    @sap.aggregation.role : 'measure'
    @sap.required.in.filter : 'false'
    @sap.unit : 'ProductionUnit'
    @sap.label : 'TotMfgOrderPlannedTotalQty'
    @sap.filterable : 'false'
    TotMfgOrderPlannedTotalQty : Decimal(13, 3);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'Date'
    @sap.required.in.filter : 'false'
    @sap.label : 'MfgOrderConfirmedEndDate'
    MfgOrderConfirmedEndDate : Date;
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'Date'
    @sap.required.in.filter : 'false'
    @sap.label : 'MfgOrderScheduledEndDate'
    MfgOrderScheduledEndDate : Date;
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'Date'
    @sap.required.in.filter : 'false'
    @sap.label : 'MfgOrderScheduledStartDate'
    MfgOrderScheduledStartDate : Date;
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'Date'
    @sap.required.in.filter : 'false'
    @sap.label : 'MfgOrderPlannedStartDate'
    MfgOrderPlannedStartDate : Date;
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Segmento di stock'
    StockSegment : String(40);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'PC val.per tt.div.'
    @sap.quickinfo : 'Prodotto configurabile valido per tutte le divisioni'
    CrossPlantConfigurableProduct : String(40);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Tema'
    @sap.quickinfo : 'Tema fashion'
    ProductTheme : String(10);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Collezione'
    @sap.quickinfo : 'Collezione fashion'
    ProductCollection : String(10);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Stagione'
    ProductSeason : String(10);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Esercizio stagionale'
    ProductSeasonYear : String(4);
    @sap.aggregation.role : 'dimension'
    @sap.required.in.filter : 'false'
    @sap.label : 'Unità di produzione'
    @sap.quickinfo : 'Unità di misura di produzione'
    @sap.semantics : 'unit-of-measure'
    ProductionUnit : String(3);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Società'
    CompanyCode : String(4);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Autore'
    @sap.quickinfo : 'Nome autore acquisizione'
    CreatedByUser : String(12);
    @sap.aggregation.role : 'dimension'
    @sap.required.in.filter : 'false'
    @sap.label : 'Flag di canc.'
    @sap.quickinfo : 'Flag di cancellazione'
    IsMarkedForDeletion : Boolean;
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Tipo di ordine'
    ManufacturingOrderType : String(4);
    @sap.aggregation.role : 'dimension'
    @sap.required.in.filter : 'false'
    @sap.label : 'Testo ordine'
    @sap.quickinfo : 'Testo ordine di produzione'
    ManufacturingOrderText : String(40);
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.content.version : '1'
  @sap.semantics : 'aggregate'
  @sap.label : 'ZZ1_C_COMBORDER_COMP'
  entity ZZ1_C_COMBORDER_COMP {
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
    @sap.required.in.filter : 'false'
    @sap.label : 'ParentStockSegment'
    ParentStockSegment : String(20);
    @sap.aggregation.role : 'dimension'
    @sap.required.in.filter : 'false'
    @sap.label : 'RequirementSegment'
    RequirementSegment : String(20);
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
  @sap.label : 'ZZ1_C_MASTERPRODORDER'
  entity ZZ1_C_MASTERPRODORDER {
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Ordine prod. princ.'
    @sap.quickinfo : 'Numero ordine di produzione principale'
    key MasterProductionOrder : String(12) not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.content.version : '1'
  @sap.semantics : 'aggregate'
  @sap.label : 'ZZ1_I_COMBPRODORDAPI'
  entity ZZ1_I_COMBPRODORDAPI {
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key ID : LargeString not null;
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.text : 'ManufacturingOrderText'
    @sap.label : 'Ordine di produzione'
    @sap.quickinfo : 'ID ordine di produzione'
    ManufacturingOrder : String(12);
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
    @sap.display.format : 'Date'
    @sap.required.in.filter : 'false'
    @sap.label : 'Data di cr. ordine'
    @sap.quickinfo : 'Data di creazione ordine'
    CreationDate : Date;
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Autore'
    @sap.quickinfo : 'Nome autore acquisizione'
    CreatedByUser : String(12);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Materiale'
    @sap.quickinfo : 'Codice materiale per ordine'
    Material : String(40);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Prodotto'
    @sap.quickinfo : 'Codice prodotto'
    Product : String(40);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Società'
    CompanyCode : String(4);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'Date'
    @sap.required.in.filter : 'false'
    @sap.label : 'Data inizio pian.'
    @sap.quickinfo : 'Data inizio pianificata per ordine di produzione'
    MfgOrderPlannedStartDate : Date;
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'Date'
    @sap.required.in.filter : 'false'
    @sap.label : 'Data inizio sched.'
    @sap.quickinfo : 'Data inizio schedulata per ordine di produzione'
    MfgOrderScheduledStartDate : Date;
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'Date'
    @sap.required.in.filter : 'false'
    @sap.label : 'Data fine schedulata'
    @sap.quickinfo : 'Data fine schedulata per ordine di produzione'
    MfgOrderScheduledEndDate : Date;
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'Date'
    @sap.required.in.filter : 'false'
    @sap.label : 'Data fine confermata'
    @sap.quickinfo : 'Data di fine confermata ordine di produzione'
    MfgOrderConfirmedEndDate : Date;
    @sap.aggregation.role : 'measure'
    @sap.required.in.filter : 'false'
    @sap.unit : 'ProductionUnit'
    @sap.label : 'Quantità totale'
    @sap.quickinfo : 'Quantità totale pianificata per ordine di produzione'
    @sap.filterable : 'false'
    MfgOrderPlannedTotalQty : Decimal(13, 3);
    @sap.aggregation.role : 'measure'
    @sap.required.in.filter : 'false'
    @sap.unit : 'ProductionUnit'
    @sap.label : 'Quantità di scarto'
    @sap.quickinfo : 'Quantità di scarto pianificata per ordine di produzione'
    @sap.filterable : 'false'
    MfgOrderPlannedScrapQty : Decimal(13, 3);
    @sap.aggregation.role : 'measure'
    @sap.required.in.filter : 'false'
    @sap.unit : 'ProductionUnit'
    @sap.label : 'Qtà entrata merci'
    @sap.quickinfo : 'Quantità di entrata merci per posizione ordine'
    @sap.filterable : 'false'
    ActualDeliveredQuantity : Decimal(13, 3);
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
    @sap.label : 'Ordine prod. princ.'
    @sap.quickinfo : 'Numero ordine di produzione principale'
    MasterProductionOrder : String(12);
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
    @sap.label : 'Gruppo merci'
    MaterialGroup : String(9);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Ordine prod. princ.'
    @sap.quickinfo : 'Numero ordine di produzione principale'
    MasterProductionOrder_1 : String(12);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Ordine prod. princ.'
    @sap.quickinfo : 'Numero ordine di produzione principale'
    FshMprodOrd : String(12);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Ord. prod. combinato'
    @sap.quickinfo : 'Ordine prod. principale comb.'
    CprodOrd : String(12);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'NonNegative'
    @sap.required.in.filter : 'false'
    @sap.label : 'Reservation'
    @sap.quickinfo : 'Numero dell''impegno / del fabbisogno dipendente'
    Reservation : String(10);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'Segmento di stock'
    StockSegment : String(40);
    @sap.aggregation.role : 'dimension'
    @sap.display.format : 'UpperCase'
    @sap.required.in.filter : 'false'
    @sap.label : 'PC val.per tt.div.'
    @sap.quickinfo : 'Prodotto configurabile valido per tutte le divisioni'
    CrossPlantConfigurableProduct : String(40);
    to_ZZ1_C_COMBINEDPRODORDER : Association to ZZ1_C_COMBINEDPRODORDER {  };
    to_ZZ1_C_COMBORDER_COMP : Association to ZZ1_C_COMBORDER_COMP {  };
    to_ZZ1_C_MASTERPRODORDER : Association to ZZ1_C_MASTERPRODORDER {  };
  };
};

