/* checksum : a2342a20b13a7c4ac96285f1bf068b74 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZZ1_MFG_STOCKSEGMENT_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'MFG_STOCKSEGMENT'
entity ZZ1_MFG_STOCKSEGMENT_CDS.ZZ1_MFG_STOCKSEGMENT {
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  key SAP_UUID : UUID not null;
  @sap.label : 'SEGMENTO'
  SEGMENTO : String(8);
  @sap.label : 'DESCRIZIONE'
  DESCRIZIONE : String(50);
};

@cds.external : true
action ZZ1_MFG_STOCKSEGMENT_CDS.ZZ1_MFG_STOCKSEGMENTSap_upsert(
  @sap.label : 'Testo di lunghezza 8'
  SEGMENTO : String(8),
  @sap.label : 'Testo lunghezza 50'
  DESCRIZIONE : String(50)
) returns ZZ1_MFG_STOCKSEGMENT_CDS.ZZ1_MFG_STOCKSEGMENT;

