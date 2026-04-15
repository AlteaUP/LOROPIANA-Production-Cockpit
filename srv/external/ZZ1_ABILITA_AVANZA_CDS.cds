/* checksum : 5094492781c6afabc36ea5902aafd4ba */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZZ1_ABILITA_AVANZA_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'ZZ1_ABILITA_AVANZA'
entity ZZ1_ABILITA_AVANZA_CDS.ZZ1_ABILITA_AVANZA {
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  key SAP_UUID : UUID not null;
  @sap.label : 'Enabled'
  Enabled : Boolean;
};

@cds.external : true
action ZZ1_ABILITA_AVANZA_CDS.ZZ1_ABILITA_AVANZASap_upsert(
  @sap.label : 'VERO'
  Enabled : Boolean
) returns ZZ1_ABILITA_AVANZA_CDS.ZZ1_ABILITA_AVANZA;

