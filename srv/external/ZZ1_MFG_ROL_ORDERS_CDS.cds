/* checksum : 35bb78f39c05cd3c48e304f912d0cce9 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZZ1_MFG_ROL_ORDERS_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.searchable : 'true'
@sap.content.version : '1'
entity ZZ1_MFG_ROL_ORDERS_CDS.ZZ1_MFG_ROL_ATTRIBUTES_MFG_ROL {
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  key SAP_UUID : UUID not null;
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  SAP_PARENT_UUID : UUID;
  @sap.label : 'Text of length 20'
  @sap.heading : ''
  @sap.quickinfo : ''
  zlabel : String(20);
  @sap.label : 'Text of length 20'
  @sap.heading : ''
  @sap.quickinfo : ''
  valore : String(20);
  to_MFG_ROL_ORDERS : Association to ZZ1_MFG_ROL_ORDERS_CDS.ZZ1_MFG_ROL_ORDERS {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.searchable : 'true'
@sap.content.version : '1'
entity ZZ1_MFG_ROL_ORDERS_CDS.ZZ1_MFG_ROL_ORDERS {
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  key SAP_UUID : UUID not null;
  @sap.label : 'Text of length 12'
  @sap.heading : ''
  @sap.quickinfo : ''
  masterOrdine : String(12);
  @sap.label : 'Text of length 12'
  @sap.heading : ''
  @sap.quickinfo : ''
  numeroOrdineROL : String(12);
  @sap.label : 'Text of length 10'
  @sap.heading : ''
  @sap.quickinfo : ''
  articoloCod : String(10);
  @sap.label : 'Text of length 5'
  @sap.heading : ''
  @sap.quickinfo : ''
  coloreCod : String(5);
  @sap.label : 'Text of length 2'
  @sap.heading : ''
  @sap.quickinfo : ''
  taglia : String(2);
  @sap.label : ''
  numeroPezzi : Decimal(6, 0);
  @sap.label : 'Text of length 50'
  @sap.heading : ''
  @sap.quickinfo : ''
  tessuto : String(50);
  @sap.display.format : 'Date'
  @sap.label : ''
  dataConsegnaBorgosesia : Date;
  to_MFG_ROL_ATTRIBUTES : Composition of many ZZ1_MFG_ROL_ORDERS_CDS.ZZ1_MFG_ROL_ATTRIBUTES_MFG_ROL {  };
};

@cds.external : true
action ZZ1_MFG_ROL_ORDERS_CDS.ZZ1_MFG_ROL_ORDERSSap_upsert(
  @sap.label : 'Text of length 12'
  masterOrdine : String(12),
  @sap.label : 'Text of length 12'
  numeroOrdineROL : String(12),
  @sap.label : 'Text of length 10'
  articoloCod : String(10),
  @sap.label : 'Text of length 5'
  coloreCod : String(5),
  @sap.label : 'Text of length 2'
  taglia : String(2),
  @sap.label : 'numeroPezzi'
  numeroPezzi : Decimal(6, 0),
  @sap.label : 'Text of length 50'
  tessuto : String(50),
  @sap.label : 'dataConsegnaBorgosesia'
  @sap.display.format : 'Date'
  dataConsegnaBorgosesia : Date
) returns ZZ1_MFG_ROL_ORDERS_CDS.ZZ1_MFG_ROL_ORDERS;

