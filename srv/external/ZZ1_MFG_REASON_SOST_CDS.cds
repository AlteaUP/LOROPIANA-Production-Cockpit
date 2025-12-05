/* checksum : 6a5e336721b4f3a344c02e0090011bce */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZZ1_MFG_REASON_SOST_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'ZZ1_MFG_REASON_SOST'
entity ZZ1_MFG_REASON_SOST_CDS.ZZ1_MFG_REASON_SOST {
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  key SAP_UUID : UUID not null;
  @sap.label : 'Reason'
  Reason : String(3);
  @sap.label : 'Language'
  Language : String(1);
  @sap.label : 'Note'
  @sap.quickinfo : 'Text'
  Note : String(50);
};

@cds.external : true
action ZZ1_MFG_REASON_SOST_CDS.ZZ1_MFG_REASON_SOSTSap_upsert(
  @sap.label : 'Testo di lunghezza 3'
  Reason : String(3),
  @sap.label : 'Testo di lunghezza 1'
  Language : String(1),
  @sap.label : 'Testo lunghezza 50'
  Note : String(50)
) returns ZZ1_MFG_REASON_SOST_CDS.ZZ1_MFG_REASON_SOST;

