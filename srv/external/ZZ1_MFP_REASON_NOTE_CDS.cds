/* checksum : a53600ec0d1a288a437e7fdb94a02fab */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZZ1_MFP_REASON_NOTE_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'ZZ1_MFP_REASON_NOTE'
entity ZZ1_MFP_REASON_NOTE_CDS.ZZ1_MFP_REASON_NOTE {
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  key SAP_UUID : UUID not null;
  @sap.label : 'RSNUM'
  RSNUM : String(10);
  @sap.label : 'RSPOS'
  RSPOS : String(4);
  @sap.label : 'REASON'
  REASON : String(50);
  @sap.label : 'NOTE'
  NOTE : String(50);
};

@cds.external : true
action ZZ1_MFP_REASON_NOTE_CDS.ZZ1_MFP_REASON_NOTESap_upsert(
  @sap.label : 'Testo di lungh. 10'
  RSNUM : String(10),
  @sap.label : 'Testo di lunghezza 4'
  RSPOS : String(4),
  @sap.label : 'Testo lunghezza 50'
  REASON : String(50),
  @sap.label : 'Testo lunghezza 50'
  NOTE : String(50)
) returns ZZ1_MFP_REASON_NOTE_CDS.ZZ1_MFP_REASON_NOTE;

