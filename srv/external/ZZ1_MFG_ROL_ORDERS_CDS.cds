/* checksum : c42d70b8c1517e913b595c0c4f4531a2 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZZ1_MFG_ROL_ORDERS_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'MFG_ROL_ATTRIBUTES'
entity ZZ1_MFG_ROL_ORDERS_CDS.ZZ1_MFG_ROL_ATTRIBUTES_MFG_ROL {
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  key SAP_UUID : UUID not null;
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  SAP_PARENT_UUID : UUID;
  @sap.label : 'zlabel'
  zlabel : String(20);
  @sap.label : 'valore'
  valore : String(20);
  to_MFG_ROL_ORDERS : Association to ZZ1_MFG_ROL_ORDERS_CDS.ZZ1_MFG_ROL_ORDERS {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'MFG_ROL_ORDERS'
entity ZZ1_MFG_ROL_ORDERS_CDS.ZZ1_MFG_ROL_ORDERS {
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  key SAP_UUID : UUID not null;
  @sap.label : 'numeroOrdineROL'
  numeroOrdineROL : String(12);
  @sap.label : 'articoloCod'
  articoloCod : String(10);
  @sap.label : 'coloreCod'
  coloreCod : String(5);
  @sap.label : 'taglia'
  taglia : String(2);
  @sap.label : 'numeroPezzi'
  numeroPezzi : Decimal(6, 0);
  @sap.label : 'tessuto'
  tessuto : String(50);
  @sap.display.format : 'Date'
  @sap.label : 'dataConsegnaBorgosesia'
  dataConsegnaBorgosesia : Date;
  to_MFG_ROL_ATTRIBUTES : Composition of many ZZ1_MFG_ROL_ORDERS_CDS.ZZ1_MFG_ROL_ATTRIBUTES_MFG_ROL {  };
};

@cds.external : true
action ZZ1_MFG_ROL_ORDERS_CDS.ZZ1_MFG_ROL_ORDERSSap_upsert(
  @sap.label : 'Testo di lungh. 12'
  numeroOrdineROL : String(12),
  @sap.label : 'Testo di lungh. 10'
  articoloCod : String(10),
  @sap.label : 'Testo di lunghezza 5'
  coloreCod : String(5),
  @sap.label : 'Testo di lunghezza 2'
  taglia : String(2),
  @sap.label : 'numeroPezzi'
  numeroPezzi : Decimal(6, 0),
  @sap.label : 'Testo lunghezza 50'
  tessuto : String(50),
  @sap.label : 'dataConsegnaBorgosesia'
  @sap.display.format : 'Date'
  dataConsegnaBorgosesia : Date
) returns ZZ1_MFG_ROL_ORDERS_CDS.ZZ1_MFG_ROL_ORDERS;

