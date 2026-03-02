/* checksum : 392f6a44ede35d1aff2010420c41aa60 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZZ1_I_SUMQTYDELIVERY_T_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'ZZ1_I_SUMQTYDELIVERY_T1'
entity ZZ1_I_SUMQTYDELIVERY_T_CDS.ZZ1_I_SUMQTYDELIVERY_T {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : String not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Materiale cliente'
  @sap.quickinfo : 'Materiale del cliente'
  DELIVERYDOCUMENTBYSUPPLIER : String(35);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Partita'
  @sap.quickinfo : 'Numero partita'
  Batch : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Codice materiale'
  Material : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Magazzino'
  StorLoc : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stato mov. merci'
  @sap.quickinfo : 'Stato del movimento merci (tutte le posizioni)'
  OVERALLGOODSMOVEMENTSTATUS : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Materiale cliente'
  @sap.quickinfo : 'Materiale del cliente'
  MaterialByCustomer : String(35);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'UM di vendita'
  @sap.quickinfo : 'Unità di misura di vendita'
  @sap.semantics : 'unit-of-measure'
  DeliveryQuantityUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'DeliveryQuantityUnit'
  @sap.label : 'TotDeliveryQty'
  @sap.filterable : 'false'
  TotDeliveryQty : Decimal(13, 3);
};

