/* checksum : 283ab4dd71bc6c358f0f4ae98a80bbe3 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZZ1_RFM_WRKCHARVAL_F4_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'ZZ1_RFM_WRKCHARVAL_F4'
entity ZZ1_RFM_WRKCHARVAL_F4_CDS.ZZ1_RFM_WRKCHARVAL_F4 {
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center'
  @sap.quickinfo : 'Centro di lavoro'
  key workcenter : String(8) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Object ID'
  @sap.quickinfo : 'ID oggetto della risorsa'
  key WorkCenterInternalID : String(8) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center Text'
  @sap.quickinfo : 'Testo centro di lavoro'
  key workcentertext : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Plant'
  @sap.quickinfo : 'Divisione'
  key plant : String(4) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'fornitore'
  fornitore : String(70);
};

