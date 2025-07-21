/* checksum : c6c4b6b6b160a78a81be3106b7308059 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZZ1_I_COMBPRODORDAPI_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Categoria di contabilizzazione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_AccountAssignmentCategory {
  @sap.display.format : 'UpperCase'
  @sap.text : 'AccountAssignmentCategory_Text'
  @sap.label : 'Cat. contabil.'
  @sap.quickinfo : 'Categoria di contabilizzazione'
  key AccountAssignmentCategory : String(1) not null;
  @sap.label : 'Descr. cat. contabilizzazione'
  @sap.quickinfo : 'Descrizione categoria di contabilizzazione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AccountAssignmentCategory_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Registr. consumo'
  @sap.quickinfo : 'Codice registrazione consumo rel. agli acquisti'
  ConsumptionPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock speciale'
  @sap.quickinfo : 'Codice stock speciale'
  InventorySpecialStockType : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Tipo lista assortimento'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_AssortmentListType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'AssortmentListType_Text'
  @sap.label : 'Tipo lista assort.'
  @sap.quickinfo : 'Tipo lista assortimento'
  key AssortmentListType : String(1) not null;
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AssortmentListType_Text : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BasicMaterial {
  @sap.label : 'Mat. base'
  key BasicMaterial : String(48) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Tipo di suddivisione partita'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BatchSplitType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BatchSplitType_Text'
  @sap.label : 'Tipo di suddivisione partita'
  @sap.quickinfo : 'Codice tipo di suddivisione partita'
  key BatchSplitType : String(1) not null;
  @sap.label : 'Descrizione breve'
  @sap.quickinfo : 'Testo breve per valori fissi'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BatchSplitType_Text : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Informazioni sulla partita'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BatchStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Codice materiale'
  key Material : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partita'
  @sap.quickinfo : 'Numero partita'
  key Batch : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Gruppo distinte delle operazioni'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BillOfOperationsGroup {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo DO'
  @sap.quickinfo : 'Tipo distinta delle operazioni'
  key BillOfOperationsType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo dist. oper.'
  @sap.quickinfo : 'Gruppo distinte delle operazioni'
  key BillOfOperationsGroup : String(8) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Tipo distinta delle operazioni'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BillOfOperationsType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BillOfOperationsType_Text'
  @sap.label : 'Tipo DO'
  @sap.quickinfo : 'Tipo distinta delle operazioni'
  key BillOfOperationsType : String(1) not null;
  @sap.label : 'Descrizione'
  @sap.quickinfo : 'Descrizione del tipo di ciclo'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillOfOperationsType_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Applicazione DO'
  @sap.quickinfo : 'Applicazione distinta delle operazioni'
  BillOfOperationsApplication : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Data di esplosione della distinta base'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BOMExplosionDate {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BOMExplosionDateText'
  @sap.label : 'ID data esplosione'
  @sap.quickinfo : 'ID data esplosione per distinta base'
  key BOMExplosionDateID : String(8) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Data fissata'
  BOMExplosionFixedKeyDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Codice materiale'
  @sap.value.list : 'standard'
  Material : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  @sap.value.list : 'standard'
  Plant : String(4);
  @sap.label : 'Testo data esplos.'
  @sap.quickinfo : 'Testo per ID data esplosione distinta base'
  BOMExplosionDateText : String(40);
  @sap.label : 'Posizione cancellata'
  IsDeleted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valutazione std'
  @sap.quickinfo : 'Valutazione validità/valutazione standard'
  EffectivityParameterVariant : String(12);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Marca'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Brand {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Brand_Text'
  @sap.label : 'Marca'
  key Brand : String(4) not null;
  @sap.label : 'Definizione marche'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Brand_Text : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Brazil ANP Code'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BR_ANPCode {
  @sap.display.format : 'NonNegative'
  @sap.text : 'BR_ANPCode_Text'
  @sap.label : 'ANP Code'
  key BR_ANPCode : String(9) not null;
  @sap.label : 'ANP Code Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BR_ANPCode_Text : String(95);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Settore contabile'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BusinessArea {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BusinessArea_Text'
  @sap.label : 'Settore contabile'
  key BusinessArea : String(4) not null;
  @sap.label : 'Nome settore cont.'
  @sap.quickinfo : 'Nome del settore contabile'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessArea_Text : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Settore contabile'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BusinessAreaStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BusinessArea_Text'
  @sap.label : 'Settore contabile'
  key BusinessArea : String(4) not null;
  @sap.label : 'Nome settore cont.'
  @sap.quickinfo : 'Nome del settore contabile'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessArea_Text : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Business process'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BusinessProcessStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BusinessProcess_Text'
  @sap.label : 'Business process'
  key BusinessProcess : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling area'
  key ControllingArea : String(4) not null;
  @sap.label : 'Definizione'
  @sap.quickinfo : 'Definizione generale'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessProcess_Text : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Testata fabbisogno di capacità'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_CapacityRequirementStdVH {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fabbisogno capacità'
  @sap.quickinfo : 'ID del record fabbisogno capacità'
  key CapacityRequirement : String(12) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Posizione fabbisogno di capacità'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_CapRqmtItmStdVH {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fabbisogno capacità'
  @sap.quickinfo : 'ID del record fabbisogno capacità'
  key CapacityRequirement : String(12) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore interno'
  key CapacityRequirementItem : String(8) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Numero della modifica'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ChangeMasterStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ChangeNumberDescription'
  @sap.label : 'Numero di modifica'
  key ChangeNumber : String(12) not null;
  @sap.label : 'Definizione'
  @sap.quickinfo : 'Testo breve numero modifica'
  ChangeNumberDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grp. autorizzazioni'
  @sap.quickinfo : 'Gruppo autorizzazione per record anagrafico modifiche'
  AuthorizationGroup : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Chiave rilascio'
  @sap.quickinfo : 'Chiave rilascio per record anagrafico modifiche'
  ChangeNumberReleaseKey : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Stato'
  @sap.quickinfo : 'Stato n. modifica'
  ChangeNumberStatus : String(2);
  @sap.label : 'Ind. di canc.'
  @sap.quickinfo : 'Indic. cancellazione per numero modifica (riorganizzazione)'
  ChangeNumberIsMrkdForDeletion : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio validità'
  ChangeNumberValidFromDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Piano dei conti'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ChartOfAccountsStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ChartOfAccounts_Text'
  @sap.label : 'Piano dei conti'
  key ChartOfAccounts : String(4) not null;
  @sap.label : 'Descrizione del piano dei conti'
  @sap.quickinfo : 'Definizione del piano dei conti'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ChartOfAccounts_Text : String(50);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Codice di rilevanza conformità chimica'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ChemicalComplianceRelevant {
  @sap.display.format : 'UpperCase'
  @sap.text : 'IsChemicalComplianceRelevant_Text'
  @sap.label : 'Indic. di ril. per conformità chimica'
  @sap.quickinfo : 'Indicatore di rilevanza per conformità chimica'
  key IsChemicalComplianceRelevant : String(1) not null;
  @sap.label : 'Descrizione breve'
  @sap.quickinfo : 'Testo breve per valori fissi'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IsChemicalComplianceRelevant_Text : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Società'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_CompanyCodeStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCodeName'
  @sap.label : 'Società'
  key CompanyCode : String(4) not null;
  @sap.label : 'Nome società'
  @sap.quickinfo : 'Definizione della società o della ditta'
  CompanyCodeName : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Gruppo di conferme'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ConfirmationGroup {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Conferma'
  @sap.quickinfo : 'Numero di conferma dell''operazione'
  key ConfirmationGroup : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Controlling area'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ControllingArea {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControllingAreaName'
  @sap.label : 'Controlling area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Variante d''esercizio'
  FiscalYearVariant : String(2);
  @sap.label : 'Nome controlling area'
  ControllingAreaName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Currency/Currency_Text'
  @sap.label : 'Divisa controlling area'
  @sap.value.list : 'standard'
  @sap.semantics : 'currency-code'
  ControllingAreaCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ChartOfAccounts_Text'
  @sap.label : 'Piano dei conti'
  @sap.value.list : 'standard'
  ChartOfAccounts : String(4);
  @sap.label : 'Descrizione del piano dei conti'
  @sap.quickinfo : 'Definizione del piano dei conti'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ChartOfAccounts_Text : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gerarchia standard per centri di costo'
  CostCenterStandardHierarchy : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Area risultato'
  OperatingConcern : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gerarchia standard profit center'
  ProfitCenterStandardHierarchy : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Area gerarchia std. business process'
  @sap.quickinfo : 'Area gerarchia standard per business process'
  BusinessProcessStandardHier : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conto Co.Ge. per anticipi fornitori'
  @sap.quickinfo : 'Conto Co.Ge. di default per anticipi fornitori'
  CreditDownPaymentDefaultGLAcct : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conto Co.Ge. per anticipi clienti'
  @sap.quickinfo : 'Conto Co.Ge. di default per anticipi clienti'
  DebitDownPaymentDefaultGLAcct : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di divisa per controlling area'
  ControllingAreaCurrencyRole : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Area finanziaria'
  FinancialManagementArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Responsabile della controlling area'
  @sap.quickinfo : 'Utente responsabile della controlling area'
  ControllingAreaResponsibleUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro di profitto di default'
  @sap.quickinfo : 'Profit center di default per processi non attribuiti'
  DefaultProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CtrlgStdFinStatementVersion_Text'
  @sap.label : 'Str. stato patr. controlling princ.'
  @sap.quickinfo : 'Struttura stato patrimoniale controlling principale'
  @sap.value.list : 'standard'
  CtrlgStdFinStatementVersion : String(42);
  @sap.label : 'Stato patrimoniale - Descrizione'
  @sap.quickinfo : 'Descrizione gerarchia'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CtrlgStdFinStatementVersion_Text : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisa interna profit center'
  @sap.quickinfo : 'Divisa interna per contabilità per profit center'
  @sap.semantics : 'currency-code'
  ProfitCenterAccountingCurrency : String(5);
  to_Currency : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Currency {  };
  to_FinancialStatementVersion : Association to many ZZ1_I_COMBPRODORDAPI_CDS.I_FinancialStatementHier {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Classe dell''oggetto CO'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ControllingObjectClass {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControllingObjectClass_Text'
  @sap.label : 'Classe dell''oggetto CO'
  key ControllingObjectClass : String(2) not null;
  @sap.label : 'Nome classe dell''oggetto CO'
  @sap.quickinfo : 'Testo breve per valori fissi'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ControllingObjectClass_Text : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Destinatario ricetta di controllo'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ControlRecipeDestination {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControlRecipeDestinationName'
  @sap.label : 'Destinatario ricetta di controllo'
  key ControlRecipeDestination : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo dest.'
  @sap.quickinfo : 'Tipo di destinatario ricetta di controllo'
  ControlRecipeDestinationType : String(1);
  @sap.label : 'Descrizione'
  @sap.quickinfo : 'Definizione destinatario ricetta di controllo'
  ControlRecipeDestinationName : String(20);
  @sap.label : 'Firma digitale'
  @sap.quickinfo : 'Firma digitale nel foglio istruzioni'
  DigitalSignatureIsRequired : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fasi visualizz.'
  @sap.quickinfo : 'Numero di fasi visualizzate nel foglio istruzioni'
  NumberOfPhasesDisplayed : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Centro di costo'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_CostCenter {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CostCenter_Text'
  @sap.label : 'CdC'
  @sap.quickinfo : 'Centro di costo'
  key CostCenter : String(10) not null;
  @sap.label : 'Nome centro di costo'
  @sap.quickinfo : 'Nome del centro di costo'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CostCenter_Text : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Fine validità'
  @sap.quickinfo : 'Data di fine validità'
  ValidityEndDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio validità'
  ValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cst. primari eff.'
  @sap.quickinfo : 'Codice di blocco delle registrazioni eff. primarie'
  IsBlkdForPrimaryCostsPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costi primari pian.'
  @sap.quickinfo : 'Codice di blocco della pianificazione dei costi primari'
  IsBlockedForPlanPrimaryCosts : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Società'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Settore contabile'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo CdC'
  @sap.quickinfo : 'Tipo di centro di costo'
  CostCenterCategory : String(1);
  @sap.label : 'Responsabile'
  CostCtrResponsiblePersonName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Utente resp.'
  @sap.quickinfo : 'Utente responsabile'
  CostCtrResponsibleUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Chiave divisa'
  @sap.semantics : 'currency-code'
  CostCenterCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Schema CCST'
  CostingSheet : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sede fiscale'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sistema logico'
  LogicalSystem : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Acquisito il'
  @sap.quickinfo : 'Data di acquisizione'
  CostCenterCreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Creato da'
  @sap.quickinfo : 'Nome autore acquisizione'
  CostCenterCreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bl.cst.sec.eff.'
  @sap.quickinfo : 'Codice di blocco delle registrazioni eff. secondarie'
  IsBlkdForSecondaryCostsPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ricavi eff.'
  @sap.quickinfo : 'Codice di blocco delle registrazioni eff. ricavi'
  IsBlockedForRevenuePosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Agg. impegni finanz.'
  @sap.quickinfo : 'Codice di blocco per agg. impegni finanziari'
  IsBlockedForCommitmentPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bl. costi sec. pian.'
  @sap.quickinfo : 'Indicatore di blocco per costi secondari pianificati'
  IsBlockedForPlanSecondaryCosts : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Blocco ricavi pian.'
  @sap.quickinfo : 'Indicatore di blocco per ricavi pianificati'
  IsBlockedForPlanRevenues : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Metodi d''imputazione'
  @sap.quickinfo : 'Codice per metodi di imputazione ammessi'
  CostCenterAllocationMethod : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gestire quantità'
  @sap.quickinfo : 'Codice di gestione per quantità di consumo'
  ConsumptionQtyIsRecorded : String(1);
  @sap.label : 'Reparto'
  Department : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CdC successivo'
  @sap.quickinfo : 'Centro di costo successivo'
  SubsequentCostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Utilizzo'
  @sap.quickinfo : 'Utilizzo della tabella condizioni'
  ConditionUsage : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Applicazione'
  ConditionApplication : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave quote di CG'
  @sap.quickinfo : 'Chiave quote di CG CO-CCA'
  CostCenterAccountingOverhead : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave paese/regione'
  Country : String(3);
  @sap.label : 'Titolo'
  FormOfAddress : String(15);
  @sap.label : 'Nome'
  @sap.quickinfo : 'Nome 1'
  AddressName : String(35);
  @sap.label : 'Nome 2'
  AddressAdditionalName : String(35);
  @sap.label : 'Nome 3'
  CostCenterAddrName3 : String(35);
  @sap.label : 'Nome 4'
  CostCenterAddrName4 : String(35);
  @sap.label : 'Città'
  CityName : String(35);
  @sap.label : 'Frazione'
  District : String(35);
  @sap.label : 'Via'
  @sap.quickinfo : 'Via e numero civico'
  StreetAddressName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Casella postale'
  POBox : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CAP'
  @sap.quickinfo : 'Codice di avviamento postale'
  PostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CAP cas. post.'
  @sap.quickinfo : 'Codice di avviamento postale della casella postale'
  POBoxPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Regione'
  @sap.quickinfo : 'Regione (stato federale, stato federato, provincia, contea)'
  Region : String(3);
  @sap.label : 'Chiave lingua'
  Language : String(2);
  @sap.label : 'Numero telebox'
  TeleboxNumber : String(15);
  @sap.label : 'Telefono 1'
  @sap.quickinfo : '1° numero di tel.'
  PhoneNumber1 : String(16);
  @sap.label : 'Telefono 2'
  @sap.quickinfo : '2° numero di tel.'
  PhoneNumber2 : String(16);
  @sap.label : 'Numero di telefax'
  FaxNumber : String(31);
  @sap.label : 'Numero teletex'
  TeletexNumber : String(30);
  @sap.label : 'N. telex'
  TelexNumber : String(30);
  @sap.label : 'Linea dati'
  @sap.quickinfo : 'Numero della linea dati'
  DataCommunicationPhoneNumber : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome della stampante'
  @sap.quickinfo : 'Nome stampante per report centri di costo'
  CostCenterPrinterDestination : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Area gerarchia'
  @sap.quickinfo : 'Area gerarchia standard'
  CostCenterStandardHierArea : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ch. racc. di costi'
  @sap.quickinfo : 'Chiave per raccoglitori di costi'
  CostCollector : String(23);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Completo'
  @sap.quickinfo : 'Flag di completezza per l''anagrafico centri di costo'
  CostCenterIsComplete : String(1);
  @sap.label : 'Centro cst. è stat.'
  @sap.quickinfo : 'Indicatore: il centro di costo è contabil. statistica'
  IsStatisticalCostCenter : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero oggetto'
  ObjectInternalID : String(22);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Funzione'
  @sap.quickinfo : 'Funzione del centro di costo'
  CostCenterFunction : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Funzione altern.'
  @sap.quickinfo : 'Funzione alternativa del centro di costo'
  CostCenterAlternativeFunction : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Area funzionale'
  FunctionalArea : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Template ind. att.'
  @sap.quickinfo : 'Template per pianificazione formula indipendente da attiv.'
  ActyIndepFormulaPlanningTmpl : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Template dip.att'
  @sap.quickinfo : 'Template per pianificazione formula dipendente da attività'
  ActyDepdntFormulaPlanningTmpl : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Templ.imput.ind.att'
  @sap.quickinfo : 'Template: imputazione indip. da attività su centro di costo'
  ActyIndependentAllocationTmpl : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Templ. imp. dip.att'
  @sap.quickinfo : 'Template: imputazione dip. da attività su centro di costo'
  ActyDependentAllocationTmpl : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Templ.: ind. stat.'
  @sap.quickinfo : 'CCA_TEMPL_SKI'
  ActlIndepStatisticalKeyFigures : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Templ.: ind. stat.'
  @sap.quickinfo : 'Template: ind. stat. eff. per centro di costo/tipo attività'
  ActlDepStatisticalKeyFigures : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Joint venture'
  JointVenture : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Indicatore recupero'
  @sap.quickinfo : 'Indicatore di recupero'
  JointVentureRecoveryCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Classe partecip.'
  @sap.quickinfo : 'Classe di partecipazione'
  JointVentureEquityType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TipOggJointVent'
  @sap.quickinfo : 'Tipo oggetto della joint venture'
  JointVentureObjectType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Classe JIB/JIBE'
  JointVentureClass : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sottocl. A JIB/JIBE'
  @sap.quickinfo : 'Sottoclasse A JIB/JIBE'
  JointVentureSubClass : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CdC del budget'
  @sap.quickinfo : 'Centro di costo con gestione del budget'
  BudgetCarryingCostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ProfCtrDisp'
  @sap.quickinfo : 'Controllo della disponibilità budget: profilo'
  AvailabilityControlProfile : String(6);
  @sap.label : 'Ctr. disp. è attivo'
  @sap.quickinfo : 'Ctr. disponibilità budget per centri di costo è attivo'
  AvailabilityControlIsActive : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fondi'
  Fund : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sovvenzione'
  GrantID : String(20);
  @sap.label : 'Fondo con attribuzione fissa'
  @sap.quickinfo : 'Indicatore che indica che fondo ha allocazione fissa'
  FundIsFixAssigned : Boolean;
  @sap.label : 'Sovvenzione con attribuzione fissa'
  @sap.quickinfo : 'Indicatore per sovvenzione con attribuzione fissa'
  GrantIDIsFixAssigned : Boolean;
  @sap.label : 'Area funzionale con attribuzione fissa'
  @sap.quickinfo : 'Indicatore che indica area funzionale ha allocazione fissa'
  FunctionalAreaIsFixAssigned : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Centro di costo'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_CostCenterStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CostCenter_Text'
  @sap.label : 'CdC'
  @sap.quickinfo : 'Centro di costo'
  key CostCenter : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Fine validità'
  @sap.quickinfo : 'Data di fine validità'
  key ValidityEndDate : Date not null;
  @sap.label : 'Nome centro di costo'
  @sap.quickinfo : 'Nome del centro di costo'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CostCenter_Text : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio validità'
  ValidityStartDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Voce di costo'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_CostElement {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Voce di costo'
  key CostElement : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio validità'
  ValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Fine validità'
  @sap.quickinfo : 'Data di fine validità'
  ValidityEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo voce di costo'
  CostElementCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gestire quantità'
  @sap.quickinfo : 'Codice di gestione per quantità di consumo'
  ConsumptionQtyIsRecorded : String(1);
  @sap.label : 'Unità misura interna'
  @sap.quickinfo : 'Unità di misura'
  @sap.semantics : 'unit-of-measure'
  UnitOfMeasure : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Piano dei conti'
  ChartOfAccounts : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conto Co.Ge.'
  @sap.quickinfo : 'Numero del conto Co.Ge.'
  GLAccount : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Acquisito il'
  @sap.quickinfo : 'Data di acquisizione'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Creato da'
  @sap.quickinfo : 'Nome autore acquisizione'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Area funzionale'
  FunctionalArea : String(16);
  @sap.label : 'Applicare statist.'
  @sap.quickinfo : 'Gli oggetti di contabilizzazione vengono attribuiti (stat.)'
  AcctAssignmentIsStatistical : Boolean;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Timestamp'
  @sap.quickinfo : 'Timestamp UTC in forma breve (AAAAMMGGhhmmss)'
  LastChangeDateTime : DateTime;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Variante del calcolo dei costi'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_CostingVariant {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CostingVariant_Text'
  @sap.label : 'Variante CCST'
  @sap.quickinfo : 'Variante di calcolo costi'
  key CostingVariant : String(4) not null;
  @sap.label : 'Denominazione'
  @sap.quickinfo : 'Definizione della variante CCST'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CostingVariant_Text : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Variante di valut.'
  @sap.quickinfo : 'Variante di valutazione nel calcolo dei costi'
  ValuationVariant : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Variante riferimento'
  CostEstimateReferenceVariant : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo calc. costi'
  @sap.quickinfo : 'Tipo di calcolo costi'
  CostingType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controllo rilev.'
  @sap.quickinfo : 'Controllo rilevamento'
  CostEstimateTransferControl : String(4);
  @sap.label : 'Default modificab.'
  @sap.quickinfo : 'Default modificabile'
  CostEstTransfCtrlIsChangeable : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ogg. di rif.'
  @sap.quickinfo : 'Oggetto di riferimento'
  CostingReferenceObject : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Divisa'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Currency {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Currency_Text'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Chiave divisa'
  @sap.semantics : 'currency-code'
  key Currency : String(5) not null;
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Currency_Text : String(40);
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Decimali'
  @sap.quickinfo : 'Numero di decimali'
  Decimals : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice ISO'
  @sap.quickinfo : 'Codice divisa ISO'
  CurrencyISOCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave alternativa'
  @sap.quickinfo : 'Chiave altern.'
  AlternativeCurrencyKey : String(3);
  @sap.label : 'Primario'
  @sap.quickinfo : 'Codice divisa SAP primario del codice ISO'
  IsPrimaryCurrencyForISOCrcy : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Cliente'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Customer {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CustomerName'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Codice cliente'
  key Customer : String(10) not null;
  @sap.label : 'Nome del cliente'
  CustomerName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome cliente'
  @sap.quickinfo : 'Nome completo del cliente'
  CustomerFullName : String(220);
  @sap.label : 'Nome del cliente'
  BPCustomerName : String(81);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome cliente'
  @sap.quickinfo : 'Nome completo del cliente'
  BPCustomerFullName : String(220);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Creato da'
  @sap.quickinfo : 'Nome dell''utente che ha inserito l''oggetto'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Data creazione'
  @sap.quickinfo : 'Data di inserimento record'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Indirizzo'
  AddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CustomerClassification_Text'
  @sap.label : 'Classif. clienti'
  @sap.quickinfo : 'Classificazione clienti'
  CustomerClassification : String(2);
  @sap.label : 'Descrizione classificazione clienti'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CustomerClassification_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partita IVA'
  @sap.quickinfo : 'Partita IVA comunitaria'
  VATRegistration : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo conti'
  @sap.quickinfo : 'Gruppo conti cliente'
  CustomerAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorizzazione'
  @sap.quickinfo : 'Gruppo di autorizzazione'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Blocco consegna'
  @sap.quickinfo : 'Blocco consegne centrale per cliente'
  DeliveryIsBlocked : String(2);
  @sap.label : 'Blocco registr.'
  @sap.quickinfo : 'Blocco centrale di registrazione'
  PostingIsBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Blocco fattura'
  @sap.quickinfo : 'Blocco centrale fatturazione per cliente'
  BillingIsBlockedForCustomer : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Blocco ordine'
  @sap.quickinfo : 'Blocco centrale ordine per cliente'
  OrderIsBlockedForCustomer : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'N.int. ubicazione 1'
  @sap.quickinfo : 'N. internazionale ubicazione (parte 1)'
  InternationalLocationNumber1 : String(7);
  @sap.label : 'Conto occasionale'
  @sap.quickinfo : 'Codice: conto occasionale?'
  IsOneTimeAccount : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sede fiscale'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'S. ind.'
  @sap.quickinfo : 'Chiave settore industriale'
  Industry : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo partita IVA'
  TaxNumberType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice fiscale 1'
  TaxNumber1 : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice fiscale 2'
  TaxNumber2 : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice fiscale 3'
  TaxNumber3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice fiscale 4'
  TaxNumber4 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice fiscale 5'
  TaxNumber5 : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice fiscale 6'
  TaxNumber6 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave gruppo'
  CustomerCorporateGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Area Nielsen'
  NielsenRegion : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd.sett.ind. 1'
  IndustryCode1 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd.settore ind. 2'
  IndustryCode2 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd.sett.ind. 3'
  IndustryCode3 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd.sett.ind. 4'
  IndustryCode4 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd.sett.ind. 5'
  IndustryCode5 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave paese/reg.'
  @sap.quickinfo : 'Chiave paese/regione'
  Country : String(3);
  @sap.label : 'Nome'
  @sap.quickinfo : 'Nome 1'
  OrganizationBPName1 : String(35);
  @sap.label : 'Nome 2'
  OrganizationBPName2 : String(35);
  @sap.label : 'Città'
  CityName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CAP'
  @sap.quickinfo : 'Codice di avviamento postale'
  PostalCode : String(10);
  @sap.label : 'Via'
  @sap.quickinfo : 'Via e numero civico'
  StreetName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criterio ricerca'
  @sap.quickinfo : 'Campo di classificazione'
  SortField : String(10);
  @sap.label : 'Numero di telefax'
  FaxNumber : String(31);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Suframa Code'
  BR_SUFRAMACode : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Regione'
  @sap.quickinfo : 'Regione (stato federale, stato federato, provincia, contea)'
  Region : String(3);
  @sap.label : 'Telefono 1'
  @sap.quickinfo : '1° numero di tel.'
  TelephoneNumber1 : String(16);
  @sap.label : 'Telefono 2'
  @sap.quickinfo : '2° numero di tel.'
  TelephoneNumber2 : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pag. alternativo'
  @sap.quickinfo : 'Numero conto di un pagatore alternativo'
  AlternativePayerAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave dich. DME'
  @sap.quickinfo : 'Chiave comunicazioni per data medium exchange'
  DataMediumExchangeIndicator : String(1);
  @sap.label : 'Soggetto ad IVA'
  VATLiability : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Obiettivo raggiunto'
  @sap.quickinfo : 'Indicatore per obiettivo commerciale raggiunto'
  IsBusinessPurposeCompleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di imposta'
  ResponsibleType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Indirizzo fiscale'
  @sap.quickinfo : 'Numero conto del record anagrafico con indirizzo fiscale'
  FiscalAddress : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Persona fisica'
  NFPartnerIsNaturalPerson : String(1);
  @sap.label : 'Ind. di elim.'
  @sap.quickinfo : 'Indicatore di eliminazione centrale per record anagrafico'
  DeletionIndicator : Boolean;
  @sap.label : 'Chiave lingua'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'N. società partner'
  @sap.quickinfo : 'Numero società partner'
  TradingPartner : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reg. data cons.'
  @sap.quickinfo : 'Regola data di consegna'
  DeliveryDateTypeRule : String(1);
  @sap.label : 'Stazione espressi'
  @sap.quickinfo : 'Stazione treni espressi'
  ExpressTrainStationName : String(25);
  @sap.label : 'Stazione'
  @sap.quickinfo : 'Stazione ferroviaria'
  TrainStationName : String(25);
  @sap.display.format : 'NonNegative'
  @sap.label : 'N. intern. ubic. 2'
  @sap.quickinfo : 'N. internazionale ubicazione (parte 2)'
  InternationalLocationNumber2 : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Cifra di controllo'
  @sap.quickinfo : 'Cifra di controllo per numero internazionale ubicazione'
  InternationalLocationNumber3 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice località'
  CityCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice contea'
  County : String(3);
  @sap.label : 'Punti di scarico'
  @sap.quickinfo : 'Codice: esistenza di posto di scarico merci'
  CustomerHasUnloadingPoint : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Orari di lavoro'
  @sap.quickinfo : 'Calendario orario di lavoro del cliente'
  CustomerWorkingTimeCalendar : String(2);
  @sap.label : 'Concorrente'
  @sap.quickinfo : 'Codice: concorrente'
  IsCompetitor : Boolean;
  @sap.label : 'Nome del rappr.'
  @sap.quickinfo : 'Nome del rappresentante'
  TaxInvoiceRepresentativeName : String(10);
  @sap.label : 'Tipo di attività'
  BusinessType : String(30);
  @sap.label : 'Tipo industria'
  IndustryType : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consolidated Invoic.'
  @sap.quickinfo : 'Consolidated Invoicing for Taiwan'
  TW_CollvBillingIsSupported : String(1);
  @sap.label : 'Pagatore nel doc.'
  @sap.quickinfo : 'Codice: pagatore differente nel documento ammesso?'
  AlternativePayeeIsAllowed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Attributo 1'
  FreeDefinedAttribute01 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commercial Category'
  FreeDefinedAttribute02 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Main BusinessType'
  @sap.quickinfo : 'Attribute 3 - Main BusType'
  FreeDefinedAttribute03 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'SubChannel'
  FreeDefinedAttribute04 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Attributo 5'
  FreeDefinedAttribute05 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Attributo 6'
  FreeDefinedAttribute06 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Attributo 7'
  FreeDefinedAttribute07 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Area Commerciale'
  @sap.quickinfo : 'Area Comm.'
  FreeDefinedAttribute08 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Like For Like Flag'
  @sap.quickinfo : 'L4L Flag'
  FreeDefinedAttribute09 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuta Sell-Out'
  FreeDefinedAttribute10 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Causale pagamento'
  @sap.quickinfo : 'Causale del pagamento'
  PaymentReason : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'RTW category'
  @sap.quickinfo : 'Customer condition group 1 - RTW category'
  CustomerConditionGroup1 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'MTM Category'
  @sap.quickinfo : 'Customer condition group 2 - MTM Category'
  CustomerConditionGroup2 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo condizioni 3'
  @sap.quickinfo : 'Clienti Gruppo condizioni 3'
  CustomerConditionGroup3 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo condizioni 4'
  @sap.quickinfo : 'Clienti Gruppo condizioni 4'
  CustomerConditionGroup4 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo condizioni 5'
  @sap.quickinfo : 'Clienti gruppo condizioni 5'
  CustomerConditionGroup5 : String(2);
  @sap.label : 'Interessato'
  @sap.quickinfo : 'Codice: interessato'
  IsSalesProspect : Boolean;
  @sap.label : 'Blocco pagamento'
  PaymentIsBlockedForCustomer : Boolean;
  @sap.label : 'Consumatore'
  @sap.quickinfo : 'Codice: consumatore'
  IsConsumer : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Imp. TitTrattDt'
  @sap.quickinfo : 'BP: indicatore per impostare i titolari del trattamento dati'
  DataControllerSet : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController1 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController2 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController3 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController4 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController5 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController6 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController7 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController8 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController9 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController10 : String(30);
  @sap.label : 'Nome'
  @sap.quickinfo : 'Nome 1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Nome 2'
  BusinessPartnerName2 : String(40);
  @sap.label : 'Nome 3'
  BusinessPartnerName3 : String(40);
  @sap.label : 'Nome 4'
  BusinessPartnerName4 : String(40);
  @sap.label : 'Località'
  BPAddrCityName : String(40);
  @sap.label : 'Via'
  BPAddrStreetName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criterio ricerca 1'
  @sap.quickinfo : 'Criterio di ricerca 1'
  AddressSearchTerm1 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criterio ricerca 2'
  @sap.quickinfo : 'Criterio di ricerca 2'
  AddressSearchTerm2 : String(20);
  @sap.label : 'Frazione'
  DistrictName : String(40);
  @sap.label : 'Città cas.post.'
  @sap.quickinfo : 'Città della casella postale'
  POBoxDeviatingCityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave intestazione'
  BusinessPartnerFormOfAddress : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Codice Dare/Avere'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_DebitCreditCode {
  @sap.display.format : 'UpperCase'
  @sap.text : 'DebitCreditCode_Text'
  @sap.label : 'Codice dare/avere'
  key DebitCreditCode : String(1) not null;
  @sap.label : 'Nome codice D/A'
  @sap.quickinfo : 'Nome codice dare/avere'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DebitCreditCode_Text : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Settore merceologico'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Division {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Division_Text'
  @sap.label : 'Settore merceologico'
  key Division : String(2) not null;
  @sap.label : 'Descrizione settore merceologico'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Division_Text : String(20);
  @sap.label : 'ID ogg. sett. merc.'
  @sap.quickinfo : 'ID oggetto settore merceologico'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DivisionOID : String(128);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Idoneità dipendente'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EmployeeSuitability {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'EmployeeSuitability_Text'
  @sap.label : 'Idoneità'
  key EmployeeSuitability : String(2) not null;
  @sap.label : 'Idoneità'
  @sap.quickinfo : 'Spiegazione relativa all''idoneità'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EmployeeSuitability_Text : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Gruppo retributivo dipendente'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EmployeeWageGroup {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'EmployeeWageGroup_Text'
  @sap.label : 'Gruppo retr.'
  key EmployeeWageGroup : String(3) not null;
  @sap.label : 'Descrizione'
  @sap.quickinfo : 'Definizione gruppo paga'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EmployeeWageGroup_Text : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Tipo di unità di movimentazione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_HandlingUnitType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'HandlingUnitType_Text'
  @sap.label : 'Tipo utà moviment.'
  @sap.quickinfo : 'Tipo di unità di movimentazione'
  key HandlingUnitType : String(4) not null;
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  HandlingUnitType_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Movimentazione di materiali'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_MaterialHandling {
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaterialHandling_Text'
  @sap.label : 'Indicatore handling'
  key MaterialHandling : String(4) not null;
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaterialHandling_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Gruppo di controllo qualità'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_QualityInspectionGroup {
  @sap.display.format : 'UpperCase'
  @sap.text : 'QualityInspectionGroup_Text'
  @sap.label : 'Gruppo ctrl. qualità'
  @sap.quickinfo : 'Gruppo di controllo qualità'
  key QualityInspectionGroup : String(4) not null;
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  QualityInspectionGroup_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Profilo numero di serie'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_SerialNumberProfile {
  @sap.display.format : 'UpperCase'
  @sap.text : 'SerialNumberProfile_Text'
  @sap.label : 'Profilo n.di serie'
  @sap.quickinfo : 'Profilo numero di serie'
  key SerialNumberProfile : String(4) not null;
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SerialNumberProfile_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Obbligo n. serie'
  @sap.quickinfo : 'Obbligo di numero di serie'
  SerialNumberRequiredLevel : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Gruppo di prodotti magazzino'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_WarehouseMaterialGroup {
  @sap.display.format : 'UpperCase'
  @sap.text : 'WarehouseProductGroup_Text'
  @sap.label : 'Grp. di prod. mag.'
  @sap.quickinfo : 'Gruppo di prodotti magazzino'
  key WarehouseProductGroup : String(4) not null;
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WarehouseProductGroup_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Condizione stoccaggio magazzino'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_WhseStorageCondition {
  @sap.display.format : 'UpperCase'
  @sap.text : 'WarehouseStorageCondition_Text'
  @sap.label : 'Cond. stocc. in mag.'
  @sap.quickinfo : 'Condizione stoccaggio magazzino'
  key WarehouseStorageCondition : String(2) not null;
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WarehouseStorageCondition_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Gruppo prodotti esterno'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ExtProdGrp {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ExternalProductGroup_Text'
  @sap.label : 'Gruppo prod. esterni'
  @sap.quickinfo : 'Gruppo prodotti esterno'
  key ExternalProductGroup : String(18) not null;
  @sap.label : 'Descr. gr. prod. est'
  @sap.quickinfo : 'Descrizione gruppo prodotti esterni'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ExternalProductGroup_Text : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Calendario di fabbrica'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_FactoryCalendar {
  @sap.display.format : 'UpperCase'
  @sap.text : 'FactoryCalendar_Text'
  @sap.label : 'Calendario fabbrica'
  @sap.quickinfo : 'ID calendario di fabbrica'
  key FactoryCalendar : String(2) not null;
  @sap.label : 'Nome calendario'
  @sap.quickinfo : 'Testo calendario di fabbrica'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FactoryCalendar_Text : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID calend. gg. fest.'
  @sap.quickinfo : 'Calendario giorni festivi'
  PublicHolidayCalendar : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Anno inizio validità'
  ValidityStartYear : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Anno fine validità'
  ValidityEndYear : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Data creazione'
  @sap.quickinfo : 'Data di creazione del record'
  CreationDate : Date;
  @sap.label : 'Ora'
  @sap.quickinfo : 'Ora acquisizione'
  CreationTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lunedì è un giorno lavorativo'
  @sap.quickinfo : 'Indicatore: lunedì è un giorno lavorativo'
  MondayIsWorkingDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Martedì è un giorno lavorativo'
  @sap.quickinfo : 'Indicatore: martedì è un giorno lavorativo'
  TuesdayIsWorkingDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mercoledì è un giorno lavorativo'
  @sap.quickinfo : 'Indicatore: mercoledì è un giorno lavorativo'
  WednesdayIsWorkingDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Giovedì è un giorno lavorativo'
  @sap.quickinfo : 'Indicatore: giovedì è un giorno lavorativo'
  ThursdayIsWorkingDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Venerdì è un giorno lavorativo'
  @sap.quickinfo : 'Indicatore: venerdì è un giorno lavorativo'
  FridayIsWorkingDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sabato è un giorno lavorativo'
  @sap.quickinfo : 'Indicatore: sabato è un giorno lavorativo'
  SaturdayIsWorkingDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Domenica è un giorno lavorativo'
  @sap.quickinfo : 'Indicatore: domenica è un giorno lavorativo'
  SundayIsWorkingDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Il giorno festivo è un giorno lavorativo'
  @sap.quickinfo : 'Indicatore: il giorno festivo è un giorno lavorativo'
  HolidayIsWorkingDay : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : '1° giorno lav.'
  @sap.quickinfo : 'Inizio della numerazione dei giorni del calendario di fabbr.'
  FactoryCalendarStartDayValue : String(5);
  @sap.display.format : 'Date'
  @sap.label : 'Ultima modifica'
  @sap.quickinfo : 'Data dell''ultima modifica'
  LastChangeDate : Date;
  @sap.label : 'Ora di modifica'
  @sap.quickinfo : 'Calendario: ora di creazione/modifica'
  LastChangeTime : Time;
  @sap.label : 'Esistono regole spec. calend. fabbrica'
  @sap.quickinfo : 'Esistono regole speciali calendario di fabbrica'
  FactoryCalSpclRulesAreExisting : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Gerarchia stato patrimoniale e conto economico'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_FinancialStatementHier {
  @sap.display.format : 'UpperCase'
  @sap.text : 'FinancialStatementHierarchy_Text'
  @sap.label : 'ID gerarchia'
  key FinancialStatementHierarchy : String(42) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Data fine validità'
  @sap.quickinfo : 'Data di fine validità'
  key ValidityEndDate : Date not null;
  @sap.label : 'Stato patrimoniale - Descrizione'
  @sap.quickinfo : 'Descrizione gerarchia'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FinancialStatementHierarchy_Text : String(50);
  @sap.display.format : 'Date'
  @sap.label : 'Data inizio validità'
  @sap.quickinfo : 'Data di inizio validità'
  ValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo gerarchia'
  @sap.quickinfo : 'Tipo di gerarchia'
  HierarchyType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autore ult.mod.'
  @sap.quickinfo : 'Autore ultima modifica'
  LastChangedByUser : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Ora di aggiornamento'
  @sap.quickinfo : 'Data ultimo aggiornamento (timestamp)'
  LastChangeTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Ora di aggiornamento'
  @sap.quickinfo : 'Data ultimo aggiornamento (timestamp)'
  LastChangeDateTime : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char80'
  @sap.quickinfo : 'Char 80'
  ChartOfAccounts : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char80'
  @sap.quickinfo : 'Char 80'
  FinancialStatementAssetsItem : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char80'
  @sap.quickinfo : 'Char 80'
  FinStatementLiabilitiesItem : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char80'
  @sap.quickinfo : 'Char 80'
  FinancialStatementNetLossItem : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char80'
  @sap.quickinfo : 'Char 80'
  FinStatementNetProfitItem : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char80'
  @sap.quickinfo : 'Char 80'
  FinStatementProfitAndLossItem : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char80'
  @sap.quickinfo : 'Char 80'
  FinancialStatementOrphansItem : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char80'
  @sap.quickinfo : 'Char 80'
  FinancialStatementNotesItem : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char80'
  @sap.quickinfo : 'Char 80'
  GroupChartOfAccountIsUsed : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char80'
  @sap.quickinfo : 'Char 80'
  FunctionalAreaIsUsed : String(80);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Area funzionale'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_FunctionalArea {
  @sap.display.format : 'UpperCase'
  @sap.text : 'FunctionalArea_Text'
  @sap.label : 'Area funzionale'
  key FunctionalArea : String(16) not null;
  @sap.label : 'Nome area funzionale'
  @sap.quickinfo : 'Nome dell''area funzionale'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FunctionalArea_Text : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Conto Co.Ge.'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_GLAccountStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'GLAccount_Text'
  @sap.label : 'Conto Co.Ge.'
  @sap.quickinfo : 'Numero del conto Co.Ge.'
  key GLAccount : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Società'
  key CompanyCode : String(4) not null;
  @sap.label : 'Nome conto Co.Ge.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  GLAccount_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID est. cto Co.Ge.'
  @sap.quickinfo : 'Numero di conto Co.Ge.'
  GLAccountExternal : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conto Co.Ge. alternativo'
  @sap.quickinfo : 'Numero di conto Co.Ge. alternativo nella società'
  AlternativeGLAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Piano dei conti'
  ChartOfAccounts : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo conti'
  @sap.quickinfo : 'Gruppo conti Co.Ge.'
  GLAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo conto Co.Ge.'
  @sap.quickinfo : 'Tipo di conto Co.Ge.'
  GLAccountType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID riconcil.'
  @sap.quickinfo : 'Il conto è un conto di riconciliazione'
  ReconciliationAccountType : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Tipo di movimento merci'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_GoodsMovementType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'GoodsMovementType_Text'
  @sap.label : 'Tipo movimento'
  @sap.quickinfo : 'Tipo movimento (gestione stock)'
  key GoodsMovementType : String(3) not null;
  @sap.label : 'Testo tipi movimento'
  @sap.quickinfo : 'Testo rel. al tipo movimento (gestione stock)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  GoodsMovementType_Text : String(20);
  @sap.label : 'Cd. tipo mov. storno'
  @sap.quickinfo : 'Tipo di movimento storno'
  IsReversalMovementType : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_DebitCreditCode/DebitCreditCode_Text'
  @sap.label : 'Indic. dare/avere'
  @sap.quickinfo : 'Indicatore dare/avere'
  @sap.value.list : 'fixed-values'
  DebitCreditCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ResvnAcctAssgmtCategory/ResvnAcctAssgmtCategory_Text'
  @sap.label : 'Tipo impegno'
  @sap.quickinfo : 'Contabilizzazione dell''impegno'
  @sap.value.list : 'fixed-values'
  ResvnAcctAssgmtCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rif. stringa reg.'
  @sap.quickinfo : 'Rif. stringa di registrazione (gestione stock)'
  BasicMovementTypeReference : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tp. movimento merci'
  @sap.quickinfo : 'Tipo movimento merci (Gestione stock) copiato'
  SourceGoodsMovementType : String(3);
  to_DebitCreditCode : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_DebitCreditCode {  };
  to_ResvnAcctAssgmtCategory : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ResvnAcctAssgmtCategory {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Lotto di controllo'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_InspectionLotStdVH {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Lotto di controllo'
  @sap.quickinfo : 'Numero lotto di controllo'
  key InspectionLot : String(12) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Categoria codice EAN'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Intntnlartnmbcat {
  @sap.display.format : 'UpperCase'
  @sap.text : 'InternationalArticleNumberCat_Text'
  @sap.label : 'Categoria GTIN'
  @sap.quickinfo : 'Categoria di Global Trade Item Number (GTIN)'
  key InternationalArticleNumberCat : String(2) not null;
  @sap.label : 'Def. tipo numero'
  @sap.quickinfo : 'Definizione tipo numero'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InternationalArticleNumberCat_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Tipo di stock inventario speciale'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_InventorySpecialStockType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'InventorySpecialStockType_Text'
  @sap.label : 'Stock speciale'
  @sap.quickinfo : 'Codice stock speciale'
  key InventorySpecialStockType : String(1) not null;
  @sap.label : 'Def. stock speciale'
  @sap.quickinfo : 'Definizione stock speciale'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InventorySpecialStockType_Text : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Tipo di valutazione di stock speciale'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_InvtrySpecialStockValnType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'InventorySpecialStockValnType_Text'
  @sap.label : 'Tipo valut. stock inventario speciale'
  @sap.quickinfo : 'Tipo di valutazione stock inventario speciale'
  key InventorySpecialStockValnType : String(1) not null;
  @sap.label : 'Nome tipo valutazione stock speciale'
  @sap.quickinfo : 'Nome per tipo valutazione di stock speciale inventario'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InventorySpecialStockValnType_Text : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Raggruppamento categorie posizione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ItemCategoryGroup {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ItemCategoryGroup_Text'
  @sap.label : 'Gruppo cat. pos.'
  @sap.quickinfo : 'Raggruppamento categorie pos. da anagrafica del materiale'
  key ItemCategoryGroup : String(4) not null;
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ItemCategoryGroup_Text : String(20);
  @sap.label : 'ID ogg. gr. CatPos'
  @sap.quickinfo : 'ID oggetto per gruppo categoria di posizione'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ItemCategoryGroupOID : String(128);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Lingua'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Language {
  @sap.text : 'Language_Text'
  @sap.label : 'Chiave lingua'
  key Language : String(2) not null;
  @sap.label : 'Denominazione'
  @sap.quickinfo : 'Definizione lingua'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Language_Text : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice lingua'
  @sap.quickinfo : 'Codice lingua SAP a due posizioni'
  LanguageISOCode : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Strategia riduzione lead time'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_LeadTimeReductionStrategy {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'LeadTimeReductionStrategy_Text'
  @sap.label : 'Strat.riduzione'
  @sap.quickinfo : 'Strategia di riduzione per operazione'
  key LeadTimeReductionStrategy : String(2) not null;
  @sap.label : 'Nome della strategia'
  @sap.quickinfo : 'Descrizione della strategia di riduzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LeadTimeReductionStrategy_Text : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'Ordine logistico'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_LogisticsOrder {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine'
  @sap.quickinfo : 'Numero ordine'
  OrderID : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Categoria ordine'
  @sap.quickinfo : 'Categoria dell''ordine'
  OrderCategory : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di ordine'
  OrderType : String(4);
  @sap.label : 'Descrizione ordine'
  OrderDescription : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ordine ha testo est.'
  @sap.quickinfo : 'L''ordine ha un testo esteso'
  OrderHasLongText : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Lingua del testo esteso'
  LongTextLanguage : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Flag di canc.'
  @sap.quickinfo : 'Flag di cancellazione'
  IsMarkedForDeletion : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posizioni multiple'
  @sap.quickinfo : 'Ordine con più posizioni'
  MfgOrderHasMultipleItems : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Network ordini'
  @sap.quickinfo : 'L''ordine fa parte del network di ordini'
  MfgOrderIsPartOfCollvOrder : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine superiore'
  @sap.quickinfo : 'Numero dell''ordine superiore'
  MfgOrderSuperiorMfgOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ord. rigenerazione'
  @sap.quickinfo : 'Codice ordine di rigenerazione (PM)'
  OrderIsRefurbishmentOrder : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Statistico'
  @sap.quickinfo : 'Codice ''ordine statistico'''
  IsStatisticalOrder : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priorità'
  @sap.quickinfo : 'Priorità dell''ordine'
  PriorityCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Liv.'
  @sap.quickinfo : 'Livello (per esplosioni della distinta base multilivello)'
  MfgOrderHierarchyLevel : Decimal(2, 0);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Elabor. flessibile'
  @sap.quickinfo : 'Elaborazione flessibile'
  ProdnProcgIsFlexible : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reg. bas. su eventi'
  @sap.quickinfo : 'Registrazione basata su eventi'
  OrderIsEventBasedPosting : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reg. bas. su eventi'
  @sap.quickinfo : 'Registrazione basata su eventi'
  EventBasedPostingMethod : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data di acquisizione'
  CreationDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora acquisizione'
  CreationTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autore'
  @sap.quickinfo : 'Nome autore acquisizione'
  CreatedByUser : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data modifica'
  @sap.quickinfo : 'Data modifica dell''anagrafica ordine'
  LastChangeDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora di modifica'
  LastChangeTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autore ult.mod.'
  @sap.quickinfo : 'Autore dell''ultima modifica'
  LastChangedByUser : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'N. ciclo operazioni'
  @sap.quickinfo : 'Numero ciclo per operazioni nell''ordine'
  OrderInternalBillOfOperations : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine riferimento'
  @sap.quickinfo : 'Numero dell''ordine di riferimento'
  ReferenceOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine principale'
  @sap.quickinfo : 'Ordine principale all''interno della lavorazione in corso'
  LeadingOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  @sap.value.list : 'standard'
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro lavoro resp.'
  @sap.quickinfo : 'Centro di lavoro responsabile delle misure di manutenzione'
  MainWorkCenter : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Div. per centro lav.'
  @sap.quickinfo : 'Divisione del centro di lavoro responsabile'
  @sap.value.list : 'standard'
  MainWorkCenterPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sede / Divisione'
  @sap.quickinfo : 'Ubicazione'
  MaintenanceObjectLocation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione della sede'
  LocationPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resp. MRP'
  @sap.quickinfo : 'Responsabile MRP ordine'
  MRPController : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resp. produzione'
  @sap.quickinfo : 'Responsabile della schedulazione della produzione'
  ProductionSupervisor : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profilo contr. prod.'
  @sap.quickinfo : 'Profilo di pianificazione della produzione'
  ProductionSchedulingProfile : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gr. resp. pian.'
  @sap.quickinfo : 'Gruppo di responsabili della pianificazione o reparto'
  ResponsiblePlannerGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine di vendita'
  @sap.quickinfo : 'Numero ordine di vendita'
  @sap.value.list : 'standard'
  SalesOrder : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Pos. ordine cliente'
  @sap.quickinfo : 'Numero posizione nell''ordine cliente'
  @sap.value.list : 'standard'
  SalesOrderItem : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Elemento WBS'
  @sap.quickinfo : 'Elemento della Work Breakdown Structure (elemento WBS)'
  WBSElementInternalID : String(24);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'ID interno WBS'
  @sap.quickinfo : 'Elemento WBS'
  @sap.value.list : 'standard'
  WBSElementInternalID_2 : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Def. progetto'
  @sap.quickinfo : 'Definizione del progetto'
  ProjectInternalID : String(24);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Def. progetto'
  @sap.quickinfo : 'Progetto (interno)'
  ProjectInternalID_2 : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subntw rel.'
  @sap.quickinfo : 'Numero del network superiore'
  SuperiorProjectNetwork : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Impegno'
  @sap.quickinfo : 'Numero dell''impegno / del fabbisogno dipendente'
  Reservation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Impegno'
  @sap.quickinfo : 'Numero dell''impegno / del fabbisogno dipendente'
  SettlementReservation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Conferma'
  @sap.quickinfo : 'Numero di conferma dell''operazione'
  MfgOrderConfirmation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore interno'
  MfgOrderConfirmationCount : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fabbisogno capacità'
  @sap.quickinfo : 'ID del record fabbisogno capacità'
  @sap.value.list : 'standard'
  CapacityRequirement : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Lotto di controllo'
  @sap.quickinfo : 'Numero lotto di controllo'
  @sap.value.list : 'standard'
  InspectionLot : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero di modifica'
  @sap.value.list : 'standard'
  ChangeNumber : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero di modifica'
  EngineeringChangeOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo schedulazione'
  @sap.quickinfo : 'Tipo di schedulazione'
  BasicSchedulingType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo sched. previs.'
  @sap.quickinfo : 'Tipo di scheduling (previsione)'
  ForecastSchedulingType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Base scheduling'
  @sap.quickinfo : 'Base dello scheduling'
  ProdAvailyCheckPlanningType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Schema calc. inter.'
  @sap.quickinfo : 'Schema interessi per calcolo interessi di progetti e ordini'
  ProjInterestCalcProfile : String(7);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contabilizzazione'
  @sap.quickinfo : 'Codice per la contabilizz. di un network (testata/operaz.)'
  NtwkAccountAssignmentCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profilo network'
  NetworkProfile : String(7);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero oggetto'
  ObjectInternalID : String(22);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Numero oggetto int.'
  @sap.quickinfo : 'Configurazione (numero oggetto interno)'
  ProductConfiguration : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Applicazione'
  ConditionApplication : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'N. ordine esterno'
  @sap.quickinfo : 'Numero ordine esterno'
  ExternalOrder : String(20);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave quote di CG'
  OverheadCode : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'CCST non automatico'
  @sap.quickinfo : 'Codice: calcolo costi non automatico'
  OrderIsNotCostedAutomatically : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Schedul. non autom.'
  @sap.quickinfo : 'Codice: non effettuare schedulazione automatica'
  OrdIsNotSchedldAutomatically : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Versione'
  @sap.quickinfo : 'Versione della disponibilità di capacità'
  CapacityActiveVersion : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Senza fabb. capacità'
  @sap.quickinfo : 'Indicatore: non creare fabbisogni di capacità'
  CapacityRqmtHasNotToBeCreated : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Numero progressivo'
  @sap.quickinfo : 'Numero progressivo dell''ordine'
  OrderSequenceNumber : String(14);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato di revisione'
  MaterialRevisionLevel : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato di revisione'
  MaterialRevisionLevel_2 : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato suddivisione'
  @sap.quickinfo : 'Stato ordine in una gerarchia di suddivisione'
  MfgOrderSplitStatus : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ord. rilev. per CQA'
  @sap.quickinfo : 'Ordine area prod. rilev. per controlli qualità ampliati'
  ExtdQualityCheckIsRequired : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  MasterProductionOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Settore contabile'
  @sap.value.list : 'standard'
  BusinessArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Società'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Società richiedente'
  RequestingCompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling area'
  ControllingArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit center'
  @sap.value.list : 'standard'
  ProfitCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro di costo'
  @sap.quickinfo : 'CdC per scarico dei costi semplice'
  @sap.value.list : 'standard'
  CostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'CdC richiedente'
  @sap.quickinfo : 'Centro di costo richiedente'
  RequestingCostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro costo resp.'
  @sap.quickinfo : 'Centro di costo responsabile'
  @sap.value.list : 'standard'
  ResponsibleCostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Voce di costo'
  @sap.quickinfo : 'Voce di costo di scarico costi'
  CostElement : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conto Co.Ge.'
  @sap.quickinfo : 'Conto Co.Ge. per scarico dei costi semplice'
  GLAccount : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Collettore costi'
  @sap.quickinfo : 'Collettore costi per processo produzione'
  ProductCostCollector : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Schema CCST'
  CostingSheet : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Classe dell''oggetto CO'
  ControllingObjectClass : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Area funzionale'
  FunctionalArea : String(16);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Joint venture'
  JointVenture : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Classe JIB/JIBE'
  JointVentureClass : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sottocl. A JIB/JIBE'
  @sap.quickinfo : 'Sottoclasse A JIB/JIBE'
  JointVentureSubClass : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Oggetto costi orig.'
  @sap.quickinfo : 'Oggetto costi originali JV'
  JointVentureOriginalCostObject : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'TipOggJointVent'
  @sap.quickinfo : 'Tipo oggetto della joint venture'
  JointVentureObjectType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sede fiscale'
  TaxJurisdiction : String(15);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Motivo investimento'
  @sap.quickinfo : 'Motivo dell''investimento'
  InvestmentReason : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Inv. per l''ambiente'
  @sap.quickinfo : 'Causa investimento per l''ambiente'
  EnvironmentalInvestmentReason : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Var.calc. costi eff.'
  @sap.quickinfo : 'Variante di calcolo dei costi effettivi'
  ActualCostsCostingVariant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Var. costi pian.'
  @sap.quickinfo : 'Variante di calcolo dei costi pianificati'
  PlannedCostsCostingVariant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Gruppo elaborazioni'
  OrderProcessingGroup : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Materiale DO'
  @sap.quickinfo : 'Materiale distinta delle operazioni'
  Material : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo DO'
  @sap.quickinfo : 'Tipo distinta delle operazioni'
  BillOfOperationsType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distinta operazioni'
  @sap.quickinfo : 'ID distinta delle operazioni'
  BillOfOperations : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo dist. oper.'
  @sap.quickinfo : 'Gruppo distinte delle operazioni'
  BillOfOperationsGroup : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Variante DO'
  @sap.quickinfo : 'Variante distinta delle operazioni'
  BillOfOperationsVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore interno'
  BOOInternalVersionCounter : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Applicazione DO'
  @sap.quickinfo : 'Applicazione distinta delle operazioni'
  BillOfOperationsApplication : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Util. DO'
  @sap.quickinfo : 'Utilizzo distinta delle operazioni'
  BillOfOperationsUsage : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vers. ciclo lavoro'
  @sap.quickinfo : 'Versione ciclo di lavoro'
  BillOfOperationsVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data esplosione'
  @sap.quickinfo : 'Data dell''esplosione ciclo'
  BOOExplosionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio validità'
  BOOValidityStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Categoria Db'
  @sap.quickinfo : 'Codice categoria distinta base'
  BillOfMaterialCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distinta base'
  BillOfMaterial : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distinta base'
  BillOfMaterialInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distinta base alt.'
  @sap.quickinfo : 'Distinta base alternativa'
  BillOfMaterialVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Util. distinta base'
  @sap.quickinfo : 'Utilizzo della distinta base'
  BillOfMaterialVariantUsage : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Versione Db'
  BillOfMaterialVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data esplosione Db'
  @sap.quickinfo : 'Data esplosione per distinta base e ciclo di lavoro'
  BOMExplosionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio validità'
  BOMValidityStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profilo buffer programmazione'
  @sap.quickinfo : 'Profilo di programmazione per buffer'
  SchedulingFloatProfile : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'M. in. sic.'
  @sap.quickinfo : 'Margine iniziale di sicurezza in giorni lavorativi'
  FloatBeforeProductionInWrkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Margine di sicurezza dopo la produzione'
  @sap.quickinfo : 'Margine di sicurezza dopo la produzione in giorni lavorativi'
  FloatAfterProductionInWorkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Orizzonte rilascio'
  @sap.quickinfo : 'Orizzonte di rilascio in giorni'
  ReleasePeriodInWorkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Date schedulate modificate'
  @sap.quickinfo : 'Indicatore: modifica alle date schedulate'
  ChangeToScheduledDatesIsMade : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data di inizio base'
  PlannedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Data inizio - ora'
  @sap.quickinfo : 'Data inizio cardine (ora)'
  PlannedStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data di fine di base'
  PlannedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora finale di base'
  @sap.quickinfo : 'Data finale di base (ora)'
  PlannedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Inizio schedulato'
  ScheduledBasicStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora inizio sched.'
  @sap.quickinfo : 'Inizio schedulato (ora)'
  ScheduledBasicStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Fine schedulata'
  ScheduledBasicEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora fine schedulata'
  @sap.quickinfo : 'Fine schedulata (ora)'
  ScheduledBasicEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data rilascio sched.'
  @sap.quickinfo : 'Data rilascio schedulata'
  ScheduledReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data inizio eff.'
  ActualStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora inizio eff.'
  @sap.quickinfo : 'Data inizio eff. (ora)'
  ActualStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data fine effettiva'
  ActualEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data rilascio eff.'
  @sap.quickinfo : 'Data rilascio effettiva'
  ActualReleasedDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data fine effettiva'
  @sap.quickinfo : 'Fine confermata dell''ordine'
  ConfirmedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Fine eff. - ora'
  @sap.quickinfo : 'Fine confermata dell''ordine (ora)'
  ConfirmedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Inizio schedulato'
  @sap.quickinfo : 'Inizio previsto schedulato'
  ScheduledForecastedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora inizio sched.'
  @sap.quickinfo : 'Inizio previsto schedulato (ora)'
  ScheduledForecastedStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Fine schedulata'
  @sap.quickinfo : 'Fine prevista schedulata'
  ScheduledForecastedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora fin. schedulata'
  @sap.quickinfo : 'Fine prevista schedulata (ora)'
  ScheduledForecastedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data rilascio sched.'
  @sap.quickinfo : 'Data di rilascio schedulata (previsione)'
  ScheduledFcstdReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data inizio'
  @sap.quickinfo : 'Data iniziale di previsione'
  ForecastedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora inizio'
  @sap.quickinfo : 'Inizio previsto (ora)'
  ForecastedStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data fine'
  @sap.quickinfo : 'Data fine (previsione)'
  ForecastedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora finale'
  @sap.quickinfo : 'Fine prevista (ora)'
  ForecastedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data conferma'
  @sap.quickinfo : 'Data conferma generale'
  TotalCommitmentDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Schedul. il'
  @sap.quickinfo : 'Data dell''ultima schedulazione'
  LastScheduledDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Rilascio pianificato'
  @sap.quickinfo : 'Data di rilascio pianificata'
  PlannedReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Chiusura tecn. pian.'
  @sap.quickinfo : 'Data di chiusura tecnica pianificata'
  PlannedCompletionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Chiusura tecnica'
  @sap.quickinfo : 'Data di chiusura tenica'
  TechnicalCompletionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unità misura base'
  @sap.quickinfo : 'Unità di misura di base'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Qtà totale ordine'
  @sap.quickinfo : 'Quantità totale ordine'
  @sap.filterable : 'false'
  OrderPlannedTotalQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Scarto totale'
  @sap.quickinfo : 'Quantità di scarto totale nell''ordine'
  @sap.filterable : 'false'
  OrderPlannedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Qtà ott. conf.'
  @sap.quickinfo : 'Qtà ottenuta confermata dalla conferma d''ordine'
  @sap.filterable : 'false'
  OrderConfirmedYieldQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Scarto conf.'
  @sap.quickinfo : 'Quantità di scarto confermata nella conferma ordine'
  @sap.filterable : 'false'
  OrderConfirmedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Rifinitura conf.'
  @sap.quickinfo : 'Quantità rifinitura confermata totale'
  @sap.filterable : 'false'
  MfgOrderConfirmedReworkQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Lotto da'
  @sap.filterable : 'false'
  MaterialFromLotSizeQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Lotto a'
  @sap.filterable : 'false'
  MaterialToLotSizeQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unità misura base'
  @sap.quickinfo : 'Unità di misura di base'
  @sap.semantics : 'unit-of-measure'
  MaterialBaseUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'MaterialBaseUnit'
  @sap.label : 'Quantità di base'
  @sap.filterable : 'false'
  PlannedTotalQtyInBaseUnit : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Divisa dell''ordine'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'Currency'
  @sap.label : 'Costi stimati'
  @sap.quickinfo : 'Stima dei costi complessivi dell''ordine'
  @sap.filterable : 'false'
  EstimatedTotalOrderCost : Decimal(12, 3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'Operazione ordine di produzione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ManufacturingOrderOperation {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'ID interno ordine'
  @sap.quickinfo : 'ID interno dell''ordine'
  MfgOrderInternalID : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'ID int. operazione'
  @sap.quickinfo : 'Identificatore interno di un''operazione o attività'
  OrderOperationInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine di produzione'
  @sap.quickinfo : 'ID ordine di produzione'
  @sap.value.list : 'standard'
  ManufacturingOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sequenza'
  @sap.quickinfo : 'Sequenza ordine di produzione'
  @sap.value.list : 'standard'
  ManufacturingOrderSequence : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'MfgOrderOperationText'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Operazione ordine di produzione'
  ManufacturingOrderOperation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'MfgOrderOperationText'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  ManufacturingOrderOperation_2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'MfgOrderOperationText'
  @sap.label : 'Sotto-operazione'
  @sap.quickinfo : 'Sotto-operazione dell''ordine di produzione'
  ManufacturingOrderSubOperation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'MfgOrderOperationText'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  ManufacturingOrdSubOperation_2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Numero operazione'
  MfgOrderOperationOrSubOp : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  MfgOrderOperationOrSubOp_2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Codice fase'
  MfgOrderOperationIsPhase : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore generale dell''ordine'
  OrderIntBillOfOpItemOfPhase : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operazione superiore'
  MfgOrderPhaseSuperiorOperation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operazione superiore'
  SuperiorOperation_2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.text : 'to_MfgOrderCategory/ManufacturingOrderCategory_Text'
  @sap.label : 'Categoria di ordine'
  @sap.quickinfo : 'Categoria ordine di produzione'
  @sap.value.list : 'fixed-values'
  ManufacturingOrderCategory : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_MfgOrderType/ManufacturingOrderType_Text'
  @sap.label : 'Tipo di ordine'
  @sap.quickinfo : 'Tipo di ordine di produzione'
  @sap.value.list : 'standard'
  ManufacturingOrderType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ProductionSupervisor/ProductionSupervisorName'
  @sap.label : 'Responsabile di produzione'
  ProductionSupervisor : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_MRPController/MRPControllerName'
  @sap.label : 'Responsabile MRP'
  MRPController : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ResponsiblePlannerGroup/ResponsiblePlannerGroupName'
  @sap.label : 'Gr. resp. pian.'
  @sap.quickinfo : 'Gruppo di responsabili della pianificazione o reparto'
  @sap.value.list : 'standard'
  ResponsiblePlannerGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Config. prodotto'
  @sap.quickinfo : 'Configurazione prodotto'
  ProductConfiguration : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Lotto di controllo'
  @sap.quickinfo : 'Numero lotto di controllo'
  @sap.value.list : 'standard'
  InspectionLot : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Importanza ordine'
  @sap.quickinfo : 'Codice importanza ordine'
  ManufacturingOrderImportance : String(1);
  @sap.label : 'Testo operazione'
  @sap.quickinfo : 'Testo operazione ordine di produzione'
  MfgOrderOperationText : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_OperationStandardTextCode/OperationStandardTextCode_Text'
  @sap.label : 'ID testo standard operazione'
  @sap.quickinfo : 'ID interno testo standard operazione'
  @sap.value.list : 'standard'
  OperationStandardTextCode : String(7);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Esiste testo esteso'
  @sap.quickinfo : 'Codice di ''esistenza testo esteso'''
  OperationHasLongText : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.text : 'to_Language/Language_Text'
  @sap.label : 'Chiave lingua'
  @sap.value.list : 'standard'
  Language : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Flag di canc.'
  @sap.quickinfo : 'Flag di cancellazione'
  OperationIsToBeDeleted : Boolean;
  @odata.Type : 'Edm.Byte'
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Numero di capacità'
  @sap.quickinfo : 'Numero delle capacità richieste'
  NumberOfCapacities : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'N. bolle conf.'
  @sap.quickinfo : 'Numero bolle di conferma'
  NumberOfConfirmationSlips : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priorità'
  OperationImportance : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nodo oper. sovraord.'
  @sap.quickinfo : 'Numero nodo dell''operazione sovraordinata'
  @sap.value.list : 'standard'
  SuperiorOperationInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  @sap.value.list : 'standard'
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. centro lav.'
  @sap.quickinfo : 'ID interno centro di lavoro'
  @sap.value.list : 'standard'
  WorkCenterInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo centro lavoro'
  @sap.quickinfo : 'Tipo di centro di lavoro'
  WorkCenterTypeCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di centro di lavoro'
  WorkCenterTypeCode_2 : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_OperationControlProfile/OperationControlProfile_Text'
  @sap.label : 'Profilo di controllo'
  @sap.quickinfo : 'Profilo di controllo operazione'
  @sap.value.list : 'standard'
  OperationControlProfile : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ControlRecipeDestination/ControlRecipeDestinationName'
  @sap.label : 'Dest. ricetta contr.'
  @sap.quickinfo : 'Destinatario ricetta di controllo'
  @sap.value.list : 'standard'
  ControlRecipeDestination : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Conferma'
  @sap.quickinfo : 'Numero di conferma dell''operazione'
  @sap.value.list : 'standard'
  OperationConfirmation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Numero di conferme'
  NumberOfOperationConfirmations : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_FactoryCalendar/FactoryCalendar_Text'
  @sap.label : 'Calendario fabbrica'
  @sap.quickinfo : 'ID calendario di fabbrica'
  @sap.value.list : 'standard'
  FactoryCalendar : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fabbisogno capacità'
  @sap.quickinfo : 'ID del record fabbisogno capacità'
  @sap.value.list : 'standard'
  CapacityRequirement : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Pos. fabb. capacità'
  @sap.quickinfo : 'Posizione fabbisogno di capacità'
  @sap.value.list : 'standard'
  CapacityRequirementItem : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero di modifica'
  @sap.value.list : 'standard'
  ChangeNumber : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero oggetto'
  @sap.quickinfo : 'ID interno oggetto'
  ObjectInternalID : String(22);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero fabbisogno'
  OperationTrackingNumber : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_BillOfOperationsType/BillOfOperationsType_Text'
  @sap.label : 'Tipo DO'
  @sap.quickinfo : 'Tipo distinta delle operazioni'
  @sap.value.list : 'fixed-values'
  BillOfOperationsType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo'
  @sap.quickinfo : 'Chiave per gruppo di cicli'
  @sap.value.list : 'standard'
  BillOfOperationsGroup : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cont. gruppi cicli'
  @sap.quickinfo : 'Contatore gruppi cicli'
  @sap.value.list : 'standard'
  BillOfOperationsVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sequenza distinta delle operazioni'
  @sap.value.list : 'standard'
  BillOfOperationsSequence : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nodo ciclo'
  @sap.quickinfo : 'Numero del nodo ciclo'
  BOOOperationInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vers. ciclo lavoro'
  @sap.quickinfo : 'Versione ciclo di lavoro'
  BillOfOperationsVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Categoria Db'
  @sap.quickinfo : 'Codice categoria distinta base'
  BillOfMaterialCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distinta base'
  BillOfMaterialInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distinta base'
  BillOfMaterialInternalID_2 : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Posizione Db'
  @sap.quickinfo : 'Pos. distinta base'
  BillOfMaterialItemNodeNumber : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore interno'
  BOMItemNodeCount : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lav. esterna'
  @sap.quickinfo : 'Indicatore: operazione elab. esterna con lavorazione esterna'
  ExtProcgOperationHasSubcontrg : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_PurchasingOrganization/PurchasingOrganizationName'
  @sap.label : 'Organizzazione acquisti'
  @sap.value.list : 'standard'
  PurchasingOrganization : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_PurchasingGroup/PurchasingGroupName'
  @sap.label : 'Gruppo acquisti'
  @sap.quickinfo : 'Gruppo acquisti per attività di elaborazione esterna'
  @sap.value.list : 'standard'
  PurchasingGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Richiesta d''acquisto'
  @sap.quickinfo : 'Numero della richiesta d''acquisto'
  PurchaseRequisition : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Posizione della richiesta d''acquisto'
  @sap.quickinfo : 'ID posizione della richiesta d''acquisto'
  PurchaseRequisitionItem : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ord. acquisto'
  @sap.quickinfo : 'Numero dell''ordine d''acquisto'
  PurchaseOrder : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Pos. ord. acq.'
  @sap.quickinfo : 'Numero posizione dell''ordine acquisto'
  PurchaseOrderItem : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Record info'
  @sap.quickinfo : 'Record info acquisti'
  PurchasingInfoRecord : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Il prezzo è fisso'
  @sap.quickinfo : 'I dati del record info acquisti sono fissi'
  PurgInfoRecdDataIsFixed : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Categoria record info acquisti'
  PurchasingInfoRecordCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  @sap.value.list : 'standard'
  Supplier : String(10);
  @sap.label : 'Destin. merci'
  GoodsRecipientName : String(12);
  @sap.label : 'Punto di scarico'
  UnloadingPointName : String(25);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo merci'
  MaterialGroup : String(9);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Chiave divisa'
  @sap.semantics : 'currency-code'
  OpExternalProcessingCurrency : String(5);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OpExternalProcessingCurrency'
  @sap.label : 'Prezzo'
  @sap.filterable : 'false'
  OpExternalProcessingPrice : Decimal(12, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unità di prezzo mat.'
  @sap.quickinfo : 'Quantità unità di prezzo materiale'
  NumberOfOperationPriceUnits : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Società'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Settore contabile'
  @sap.value.list : 'standard'
  BusinessArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ControllingArea/ControllingAreaName'
  @sap.label : 'Controlling area'
  @sap.value.list : 'standard'
  ControllingArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit center'
  @sap.value.list : 'standard'
  ProfitCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'CdC richiedente'
  @sap.quickinfo : 'Centro di costo richiedente'
  @sap.value.list : 'standard'
  RequestingCostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Voce di costo'
  @sap.value.list : 'standard'
  CostElement : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_CostingVariant/CostingVariant_Text'
  @sap.label : 'Variante CCST'
  @sap.quickinfo : 'Variante di calcolo costi'
  @sap.value.list : 'standard'
  CostingVariant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Schema CCST'
  CostingSheet : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'N. CCST'
  @sap.quickinfo : 'N. calcolo costi per CCST senza struttura quantitativa'
  CostEstimate : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisa oggetto'
  @sap.quickinfo : 'Divisa oggetto operazione network'
  @sap.semantics : 'currency-code'
  ControllingObjectCurrency : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ControllingObjectClass/ControllingObjectClass_Text'
  @sap.label : 'Classe dell''oggetto CO'
  @sap.value.list : 'standard'
  ControllingObjectClass : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_FunctionalArea/FunctionalArea_Text'
  @sap.label : 'Area funzionale'
  @sap.value.list : 'standard'
  FunctionalArea : String(16);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sede fiscale'
  TaxJurisdiction : String(15);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Voce retr. dip.'
  @sap.quickinfo : 'Voce retributiva dipendente'
  EmployeeWageType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_EmployeeWageGroup/EmployeeWageGroup_Text'
  @sap.label : 'Gr. retr. dipendente'
  @sap.quickinfo : 'Gruppo retributivo dipendente'
  @sap.value.list : 'standard'
  EmployeeWageGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_EmployeeSuitability/EmployeeSuitability_Text'
  @sap.label : 'Idoneità dipendente'
  @sap.value.list : 'standard'
  EmployeeSuitability : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'N. mod. ril.tempi'
  @sap.quickinfo : 'Numero moduli di rilevazione tempi'
  NumberOfTimeTickets : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Ris. um.'
  @sap.quickinfo : 'Codice identificativo dipendente'
  @sap.value.list : 'standard'
  Personnel : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Numero dipendenti'
  NumberOfEmployees : Decimal(5, 2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_OperationSetupGroupCategory/OperationSetupGroupCategory_Text'
  @sap.label : 'Cat. gr. attrezz.'
  @sap.quickinfo : 'Categoria gruppo attr. operazione'
  @sap.value.list : 'standard'
  OperationSetupGroupCategory : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_OperationSetupGroup/OperationSetupGroup_Text'
  @sap.label : 'Gruppo attrezzaggio'
  @sap.quickinfo : 'Gruppo attr. operazione'
  @sap.value.list : 'standard'
  OperationSetupGroup : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_OperationSetupType/OperationSetupType_Text'
  @sap.label : 'Tipo attrezzaggio'
  @sap.quickinfo : 'Tipo attr. operazione'
  @sap.value.list : 'standard'
  OperationSetupType : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Sovrapposiz.obblig.'
  @sap.quickinfo : 'Sovrapposizione obbligatoria'
  OperationOverlappingIsRequired : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Sovrapp. facoltativa'
  @sap.quickinfo : 'Sovrapposizione facoltativa'
  OperationOverlappingIsPossible : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Prod.a flusso cont.'
  OperationsIsAlwaysOverlapping : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Sudd. obbligatoria'
  @sap.quickinfo : 'Suddivisione obbligatoria'
  OperationSplitIsRequired : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'N. max suddivisioni'
  MaximumNumberOfSplits : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_LeadTimeReductionStrategy/LeadTimeReductionStrategy_Text'
  @sap.label : 'Strat.riduzione'
  @sap.quickinfo : 'Strategia riduzione lead time operazione'
  @sap.value.list : 'standard'
  LeadTimeReductionStrategy : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Livello di riduzione'
  @sap.quickinfo : 'Livello di riduzione che riduce lead time dell''operazione'
  OpSchedldReductionLevel : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Prima data inizio effettiva schedulata'
  OpErlstSchedldExecStrtDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Prima ora inizio esecuzione schedulata'
  OpErlstSchedldExecStrtTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Prima ora inizio elaborazione schedulata'
  OpErlstSchedldProcgStrtDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Prima ora inizio elaborazione schedulata'
  OpErlstSchedldProcgStrtTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Prima data inizio disattr. schedulata'
  @sap.quickinfo : 'Prima data inizio disattrezzaggio schedulata'
  OpErlstSchedldTrdwnStrtDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Prima ora inizio disattr. schedulata'
  @sap.quickinfo : 'Prima ora inizio disattrezzaggio schedulata'
  OpErlstSchedldTrdwnStrtTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Prima data di fine esec. pianificata'
  @sap.quickinfo : 'Prima data di fine esecuzione pianificata'
  OpErlstSchedldExecEndDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Prima ora di fine esecuzione pianificata'
  OpErlstSchedldExecEndTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Ultima data inizio esecuzione schedulata'
  @sap.quickinfo : 'Ultima data di inizio esecuzione schedulata'
  OpLtstSchedldExecStrtDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ultima ora inizio esecuzione schedualta'
  @sap.quickinfo : 'Ultima ora di inizio esecuzione schedulata'
  OpLtstSchedldExecStrtTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Ultima data inizio elaborazione pianif.'
  @sap.quickinfo : 'Ultima data di inizio dell''elaborazione pianificata'
  OpLtstSchedldProcgStrtDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora inizio di elab. schedulata p. ultima'
  @sap.quickinfo : 'Ora di inizio di elaborazione schedulata per ultima'
  OpLtstSchedldProcgStrtTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data inizio dis. schedulata per ultima'
  @sap.quickinfo : 'Data di inizio disattrezzaggio schedulata per ultima'
  OpLtstSchedldTrdwnStrtDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ultima ora inizio disattrezzaggio pian.'
  @sap.quickinfo : 'Ultima ora di inizio del disattrezzaggio pianificato'
  OpLtstSchedldTrdwnStrtTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data fine esec. pianificata per ultima'
  @sap.quickinfo : 'Data fine esecuzione pianificata per ultima'
  OpLtstSchedldExecEndDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora fine esec. pianificata per ultima'
  @sap.quickinfo : 'Ora fine esecuzione pianificata per ultima'
  OpLtstSchedldExecEndTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data iniziale prev. + presto'
  @sap.quickinfo : 'Prima data d''inizio prev. pianificata'
  SchedldFcstdEarliestStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Prima ora iniziale prev.'
  @sap.quickinfo : 'Prima ora d''inizio prevista pianificata'
  SchedldFcstdEarliestStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Prima data finale prev.'
  @sap.quickinfo : 'Prima data di fine prev. pianificata'
  SchedldFcstdEarliestEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Prima ora utile di fine prevista'
  @sap.quickinfo : 'Prima ora di fine prev. pianificata'
  SchedldFcstdEarliestEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Ultima data di inizio prevista'
  @sap.quickinfo : 'Ultima data di inizio prevista pianificata'
  LatestSchedldFcstdStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ultima ora di inizio prevista'
  @sap.quickinfo : 'Ultima ora di inizio prevista pianificata'
  SchedldFcstdLatestStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Ultima data di fine prevista'
  @sap.quickinfo : 'Ultima data di fine prevista pianificata'
  LatestSchedldFcstdEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ultima ora di fine prevista'
  @sap.quickinfo : 'Ultima ora di fine prevista pianificata'
  SchedldFcstdLatestEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data inizio conferm.'
  @sap.quickinfo : 'Data di inizio dell''operazione confermata'
  OperationConfirmedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data fine confermata'
  @sap.quickinfo : 'Data fine confermata operazione'
  OperationConfirmedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data di inizio esecuzione confermata'
  @sap.quickinfo : 'Data confermata di inizio dell''esecuzione'
  OpActualExecutionStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora di inizio esecuzione confermata'
  OpActualExecutionStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data di fine attrezzaggio confermata'
  OpActualSetupEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora di fine attrezzaggio confermata'
  OpActualSetupEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data di inizio elaborazione confermata'
  OpActualProcessingStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora di inizio elaborazione confermata'
  OpActualProcessingStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data di fine elaborazione confermata'
  @sap.quickinfo : 'Data di fine di elaborazione confermata'
  OpActualProcessingEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora fine eff. elab. confermata'
  @sap.quickinfo : 'Ora di fine di elaborazione confermata'
  OpActualProcessingEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data inizio disattrezzaggio confermata'
  @sap.quickinfo : 'Data di inizio del disattrezzaggio confermata'
  OpActualTeardownStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora inizio disattrezzaggio confermata'
  @sap.quickinfo : 'Ora di inizio del disattrezzaggio confermata'
  OpActualTeardownStartTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data di fine esecuzione confermata'
  OpActualExecutionEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora di fine esecuzione confermata'
  OpActualExecutionEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Data fine prev.'
  @sap.quickinfo : 'Data fine prev. effettiva'
  ActualForecastEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ora fine prev.'
  @sap.quickinfo : 'Ora fine prev. effettiva'
  ActualForecastEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Prima data in. att.'
  @sap.quickinfo : 'Prima data di inizio attesa schedulata'
  EarliestScheduledWaitStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Prima ora in. att.'
  @sap.quickinfo : 'Prima ora di inizio attesa schedulata'
  EarliestScheduledWaitStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Prima data fine att.'
  @sap.quickinfo : 'Prima data di fine attesa schedulata'
  EarliestScheduledWaitEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Prima ora fine att.'
  @sap.quickinfo : 'Prima ora di fine attesa schedulata'
  EarliestScheduledWaitEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'UltDtInizioAttPoss'
  @sap.quickinfo : 'Ultima data di inizio attesa schedulata possibile'
  LatestScheduledWaitStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ult. ora inizio att.'
  @sap.quickinfo : 'Ultima ora di inizio attesa schedulata'
  LatestScheduledWaitStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Ult.data fine attesa'
  @sap.quickinfo : 'Ultima data di fine attesa schedulata'
  LatestScheduledWaitEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ultima ora fine att.'
  @sap.quickinfo : 'Ultima ora di fine attesa schedulata'
  LatestScheduledWaitEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'UM durata pausa'
  @sap.quickinfo : 'Unità per durata pausa'
  @sap.semantics : 'unit-of-measure'
  BreakDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Tempo recupero'
  PlannedBreakDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Tempo recupero'
  @sap.quickinfo : 'Tempo di recupero confermato'
  ConfirmedBreakDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unità di tempo minimo di sovrapposizione'
  @sap.quickinfo : 'Unità del tempo minimo di sovrapposizione'
  @sap.semantics : 'unit-of-measure'
  OverlapMinimumDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Tempo min. sovrapp.'
  @sap.quickinfo : 'Tempo minimo di sovrapp.'
  OverlapMinimumDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'UM tmp.max attesa'
  @sap.quickinfo : 'Unità del tempo di attesa massimo'
  @sap.semantics : 'unit-of-measure'
  MaximumWaitDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Tmpo max di attesa'
  @sap.quickinfo : 'Tempo massimo di attesa'
  MaximumWaitDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'UM tempo att. rich.'
  @sap.quickinfo : 'Unità di misura del tempo di attesa richiesto'
  @sap.semantics : 'unit-of-measure'
  MinimumWaitDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Tempo attesa minimo'
  MinimumWaitDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'UM tempo trasf. std'
  @sap.quickinfo : 'Unità del tempo di trasferimento standard'
  @sap.semantics : 'unit-of-measure'
  StandardMoveDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Tmpo trasf. standard'
  StandardMoveDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Utà durata coda std'
  @sap.quickinfo : 'Unità per la durata coda standard'
  @sap.semantics : 'unit-of-measure'
  StandardQueueDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Tempo coda standard'
  @sap.quickinfo : 'Tempo di coda standard'
  StandardQueueDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unità dur. coda min.'
  @sap.quickinfo : 'Unità per durata coda minima'
  @sap.semantics : 'unit-of-measure'
  MinimumQueueDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Tempo minimo di coda'
  MinimumQueueDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'UM tempo trasf. min.'
  @sap.quickinfo : 'Unità del tempo minimo di trasferimento'
  @sap.semantics : 'unit-of-measure'
  MinimumMoveDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Tempo min.di trasf.'
  @sap.quickinfo : 'Tempo minimo di trasferimento'
  MinimumMoveDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Durata standard'
  @sap.quickinfo : 'Durata standard dell''operazione'
  OperationStandardDuration : Decimal(5, 1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Utà durata std'
  @sap.quickinfo : 'Unità durata standard'
  @sap.semantics : 'unit-of-measure'
  OperationStandardDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Durata minima'
  @sap.quickinfo : 'Durata minima dell''attività'
  MinimumDuration : Decimal(5, 1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unità per durata minima'
  @sap.quickinfo : 'Unità per la durata minima'
  @sap.semantics : 'unit-of-measure'
  MinimumDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Tempo trasf.'
  @sap.quickinfo : 'Tempo trasferimento utilizzato per la schedulazione'
  ScheduledMoveDuration : Double;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Unità tempo trasp.'
  @sap.quickinfo : 'Unità di misura per tempo di trasporto'
  @sap.semantics : 'unit-of-measure'
  ScheduledMoveDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Tempo di coda'
  @sap.quickinfo : 'Tempo di coda con cui viene eseguita la schedulazione'
  ScheduledQueueDuration : Double;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Unità tempo coda'
  @sap.quickinfo : 'Unità di misura per tempo di coda'
  @sap.semantics : 'unit-of-measure'
  ScheduledQueueDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Tempo di attesa'
  @sap.quickinfo : 'Tempo di attesa per la schedulazione'
  ScheduledWaitDuration : Double;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Unità tempo attesa'
  @sap.quickinfo : 'Unità di misura per tempo di attesa'
  @sap.semantics : 'unit-of-measure'
  ScheduledWaitDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Durata consegna'
  @sap.quickinfo : 'Durata consegna pianificata del materiale in giorni'
  PlannedDeliveryDuration : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Tempo attrezzaggio'
  OpPlannedSetupDurn : Double;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Unità tempo attr.'
  @sap.quickinfo : 'Unità di misura tempo attrezzaggio'
  @sap.semantics : 'unit-of-measure'
  OpPlannedSetupDurnUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Tempo di elab.'
  @sap.quickinfo : 'Tempo di elaborazione'
  OpPlannedProcessingDurn : Double;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Unità tempo lavor.'
  @sap.quickinfo : 'Unità di misura del tempo di lavorazione'
  @sap.semantics : 'unit-of-measure'
  OpPlannedProcessingDurnUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Disattrezzare'
  OpPlannedTeardownDurn : Double;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'UM disattrezzaggio'
  @sap.quickinfo : 'Unità di misura disattrezzaggio'
  @sap.semantics : 'unit-of-measure'
  OpPlannedTeardownDurnUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Durata previsione effettiva'
  @sap.quickinfo : 'Durata di previsione dell''attività da conferma'
  ActualForecastDuration : Decimal(5, 1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unità di durata di previsione effettiva'
  @sap.quickinfo : 'Unità di durata di previsione da conferma'
  @sap.semantics : 'unit-of-measure'
  ActualForecastDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_StartDateOffsetReferenceCode/OperationDateOffsetRefCode_Text'
  @sap.label : 'Data in. riferimento'
  @sap.quickinfo : 'Data di riferimento per inizio della sotto-operazione'
  @sap.value.list : 'standard'
  StartDateOffsetReferenceCode : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unità offset inizio'
  @sap.quickinfo : 'Unità per inizio offset'
  @sap.semantics : 'unit-of-measure'
  StartDateOffsetDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Scostamento inizio'
  @sap.quickinfo : 'Scostamento inizio sotto-operazione'
  StartDateOffsetDuration : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_EndDateOffsetReferenceCode/OperationDateOffsetRefCode_Text'
  @sap.label : 'Data fn. riferimento'
  @sap.quickinfo : 'Data di riferimento per fine della sotto-operazione'
  @sap.value.list : 'standard'
  EndDateOffsetReferenceCode : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unità fine offset'
  @sap.quickinfo : 'Unità per fine offset'
  @sap.semantics : 'unit-of-measure'
  EndDateOffsetDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Scostamento fine'
  @sap.quickinfo : 'Scostamento fine sotto-operazione'
  EndDateOffsetDuration : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_StandardWorkFmlaParamGroup/StandardWorkFormulaParamGroup_Text'
  @sap.label : 'Chiave val. standard'
  @sap.quickinfo : 'Chiave valore standard'
  @sap.value.list : 'standard'
  StandardWorkFormulaParamGroup : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unità operazione'
  @sap.quickinfo : 'Unità di misura operazione'
  @sap.semantics : 'unit-of-measure'
  OperationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Denominatore'
  @sap.quickinfo : 'Denominatore per conversione UM ciclo di lavoro e operazione'
  OpQtyToBaseQtyDnmntr : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Numeratore per conversione UM ciclo di lavoro e operazione'
  OpQtyToBaseQtyNmrtr : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Scarto'
  @sap.quickinfo : 'Fattore di scarto'
  OperationScrapPercent : Decimal(5, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OperationUnit'
  @sap.label : 'Quantità di base'
  @sap.filterable : 'false'
  OperationReferenceQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OperationUnit'
  @sap.label : 'Quantità operazione'
  @sap.quickinfo : 'Quantità totale operazione'
  @sap.filterable : 'false'
  OpPlannedTotalQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OperationUnit'
  @sap.label : 'Scarto previsto'
  @sap.quickinfo : 'Quantità di scarto prevista nell''operazione'
  @sap.filterable : 'false'
  OpPlannedScrapQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OperationUnit'
  @sap.label : 'Quantità ottenuta pianificata'
  @sap.filterable : 'false'
  OpPlannedYieldQuantity : Decimal(14, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OperationUnit'
  @sap.label : 'Qtà ott. conf.'
  @sap.quickinfo : 'Qtà ottenuta confermata totale'
  @sap.filterable : 'false'
  OpTotalConfirmedYieldQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OperationUnit'
  @sap.label : 'Scarto confermato'
  @sap.quickinfo : 'Scarto tot. confermato'
  @sap.filterable : 'false'
  OpTotalConfirmedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OperationUnit'
  @sap.label : 'Rifinitura conf.'
  @sap.quickinfo : 'Quantità rifinitura confermata totale'
  @sap.filterable : 'false'
  OperationConfirmedReworkQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unità di produzione'
  @sap.quickinfo : 'Unità di misura di produzione'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Qtà ott.in utà ord.'
  @sap.quickinfo : 'Quantità ottenuta confermata in unità di misura ordine'
  @sap.filterable : 'false'
  OpTotConfdYieldQtyInOrdQtyUnit : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'UM per quantità di lavoro confermata 1'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 1'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit1 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OpWorkQuantityUnit1'
  @sap.label : 'Quantità di lavoro confermata 1'
  @sap.quickinfo : 'Quantità di lavoro già confermata (attività) 1'
  @sap.filterable : 'false'
  OpConfirmedWorkQuantity1 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Nessuna qtà lavoro restante 1 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà di lavoro restante 1 è prevista'
  NoFurtherOpWorkQuantity1IsExpd : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'UM per quantità di lavoro confermata 2'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 2'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit2 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OpWorkQuantityUnit2'
  @sap.label : 'Quantità di lavoro confermata 2'
  @sap.quickinfo : 'Quantità di lavoro già confermata (attività) 2'
  @sap.filterable : 'false'
  OpConfirmedWorkQuantity2 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Nessuna qtà lavoro restante 2 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 2 prevista'
  NoFurtherOpWorkQuantity2IsExpd : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'UM per quantità di lavoro confermata 3'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 3'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit3 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OpWorkQuantityUnit3'
  @sap.label : 'Quantità di lavoro confermata 3'
  @sap.quickinfo : 'Quantità di lavoro già confermata (attività) 3'
  @sap.filterable : 'false'
  OpConfirmedWorkQuantity3 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Nessuna qtà lavoro restante 3 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 3 prevista'
  NoFurtherOpWorkQuantity3IsExpd : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'UM per quantità di lavoro confermata 4'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 4'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit4 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OpWorkQuantityUnit4'
  @sap.label : 'Quantità di lavoro confermata 4'
  @sap.quickinfo : 'Quantità di lavoro già confermata (attività) 4'
  @sap.filterable : 'false'
  OpConfirmedWorkQuantity4 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Nessuna qtà lavoro restante 4 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 4 prevista'
  NoFurtherOpWorkQuantity4IsExpd : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'UM per quantità di lavoro confermata 5'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 5'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit5 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OpWorkQuantityUnit5'
  @sap.label : 'Quantità di lavoro confermata 5'
  @sap.quickinfo : 'Quantità di lavoro già confermata (attività) 5'
  @sap.filterable : 'false'
  OpConfirmedWorkQuantity5 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Nessuna qtà lavoro restante 5 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 5 prevista'
  NoFurtherOpWorkQuantity5IsExpd : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'UM per quantità di lavoro confermata 6'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 6'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit6 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OpWorkQuantityUnit6'
  @sap.label : 'Quantità di lavoro confermata 6'
  @sap.quickinfo : 'Quantità di lavoro già confermata (attività) 6'
  @sap.filterable : 'false'
  OpConfirmedWorkQuantity6 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ness. qtà lavoro restante 6 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 6 prevista'
  NoFurtherOpWorkQuantity6IsExpd : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Un. quant. lavoro 1'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 1'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit1 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit1'
  @sap.label : 'Quantità di lavoro standard 1'
  @sap.filterable : 'false'
  WorkCenterStandardWorkQty1 : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di attività centro di costo 1'
  CostCtrActivityType1 : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Un. quant. lavoro 2'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 2'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit2 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit2'
  @sap.label : 'Quantità di lavoro standard 2'
  @sap.filterable : 'false'
  WorkCenterStandardWorkQty2 : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di attività centro di costo 2'
  CostCtrActivityType2 : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Un. quant. lavoro 3'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 3'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit3 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit3'
  @sap.label : 'Quantità di lavoro standard 3'
  @sap.filterable : 'false'
  WorkCenterStandardWorkQty3 : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di attività centro di costo 3'
  CostCtrActivityType3 : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Un. quant. lavoro 4'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 4'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit4 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit4'
  @sap.label : 'Quantità di lavoro standard 4'
  @sap.filterable : 'false'
  WorkCenterStandardWorkQty4 : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di attività centro di costo 4'
  CostCtrActivityType4 : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Un. quant. lavoro 5'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 5'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit5 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit5'
  @sap.label : 'Quantità di lavoro standard 5'
  @sap.filterable : 'false'
  WorkCenterStandardWorkQty5 : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di attività centro di costo 5'
  CostCtrActivityType5 : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Un. quant. lavoro 6'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 6'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit6 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Quantità di lavoro standard 6'
  @sap.filterable : 'false'
  WorkCenterStandardWorkQty6 : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di attività centro di costo 6'
  CostCtrActivityType6 : String(6);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit1'
  @sap.label : 'Quantità lavoro previsto 1'
  @sap.filterable : 'false'
  ForecastWorkQuantity1 : Decimal(9, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit2'
  @sap.label : 'Quantità lavoro previsto 2'
  @sap.filterable : 'false'
  ForecastWorkQuantity2 : Decimal(9, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit3'
  @sap.label : 'Quantità di lavoro di previsione 3'
  @sap.filterable : 'false'
  ForecastWorkQuantity3 : Decimal(9, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit4'
  @sap.label : 'Quantità lavoro previsto 4'
  @sap.filterable : 'false'
  ForecastWorkQuantity4 : Decimal(9, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit5'
  @sap.label : 'Quantità lavoro previsto 5'
  @sap.filterable : 'false'
  ForecastWorkQuantity5 : Decimal(9, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Quantità di lavoro previsto 6'
  @sap.filterable : 'false'
  ForecastWorkQuantity6 : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business process'
  @sap.value.list : 'standard'
  BusinessProcess : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unità di processo'
  @sap.quickinfo : 'Unità di misura della quantità per business process'
  @sap.semantics : 'unit-of-measure'
  BusinessProcessEntryUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BusinessProcessEntryUnit'
  @sap.label : 'Qtà di processo'
  @sap.quickinfo : 'Qtà confermata/attività per business process'
  @sap.filterable : 'false'
  BusinessProcessConfirmedQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Nessuna att. res.'
  @sap.quickinfo : 'Nessuna qtà residua prevista per business process'
  NoFurtherBusinessProcQtyIsExpd : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unità proc. residua'
  @sap.quickinfo : 'Unità per la quantità residua di business process'
  @sap.semantics : 'unit-of-measure'
  BusinessProcRemainingQtyUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BusinessProcRemainingQtyUnit'
  @sap.label : 'Rimanente quantità di business process'
  @sap.quickinfo : 'Quantità residua per business process'
  @sap.filterable : 'false'
  BusinessProcessRemainingQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'ID istanza attrezzaggio'
  @sap.quickinfo : 'Network att. operazione: ID istanza attrezzaggio'
  SetupOpActyNtwkInstance : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'ID istanza produzione'
  @sap.quickinfo : 'Network att. operazione: ID istanza produzione'
  ProduceOpActyNtwkInstance : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'ID istanza disattrezzaggio'
  @sap.quickinfo : 'Network att. operazione: ID istanza disattrezzaggio'
  TeardownOpActyNtwkInstance : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave campo'
  @sap.quickinfo : 'ID parola chiave per campi utente'
  FreeDefinedTableFieldSemantic : String(7);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Cmp utn. 20 car.'
  @sap.quickinfo : 'Campo utente 20 caratteri'
  FreeDefinedAttribute01 : String(20);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Cmp utn. 20 car.'
  @sap.quickinfo : 'Campo utente 20 caratteri'
  FreeDefinedAttribute02 : String(20);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'CampoDefinDaUtente'
  @sap.quickinfo : 'Campo utente con 10 caratteri'
  FreeDefinedAttribute03 : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'CampoDefinDaUtente'
  @sap.quickinfo : 'Campo utente con 10 caratteri'
  FreeDefinedAttribute04 : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità per campi quantità'
  @sap.semantics : 'unit-of-measure'
  FreeDefinedQuantity1Unit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'FreeDefinedQuantity1Unit'
  @sap.label : 'Campo utente qtà'
  @sap.quickinfo : 'Campo utente quantità (lunghezza 10,3)'
  @sap.filterable : 'false'
  FreeDefinedQuantity1 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità per campi quantità'
  @sap.semantics : 'unit-of-measure'
  FreeDefinedQuantity2Unit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'FreeDefinedQuantity2Unit'
  @sap.label : 'Campo utente qtà'
  @sap.quickinfo : 'Campo utente quantità (lunghezza 10,3)'
  @sap.filterable : 'false'
  FreeDefinedQuantity2 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità campi valore'
  @sap.semantics : 'currency-code'
  FreeDefinedAmount1Currency : String(5);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'FreeDefinedAmount1Currency'
  @sap.label : 'Campo utente val.'
  @sap.quickinfo : 'Campo utente valori (lunghezza 10,3)'
  @sap.filterable : 'false'
  FreeDefinedAmount1 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità campi valore'
  @sap.semantics : 'currency-code'
  FreeDefinedAmount2Currency : String(5);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'FreeDefinedAmount2Currency'
  @sap.label : 'Campo utente val.'
  @sap.quickinfo : 'Campo utente valori (lunghezza 10,3)'
  @sap.filterable : 'false'
  FreeDefinedAmount2 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Campo utente data'
  @sap.quickinfo : 'Campo utente per data'
  FreeDefinedDate1 : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Campo utente data'
  @sap.quickinfo : 'Campo utente per data'
  FreeDefinedDate2 : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Cmp utente cd.'
  @sap.quickinfo : 'Campo utente: codici di valutazione'
  FreeDefinedIndicator1 : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Cmp utente cd.'
  @sap.quickinfo : 'Campo utente: codici di valutazione'
  FreeDefinedIndicator2 : Boolean;
  to_BillOfOperationsGroup : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_BillOfOperationsGroup {  };
  to_BillOfOperationsSequence : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_MfgBillOfOperationsSequence {  };
  to_BillOfOperationsType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_BillOfOperationsType {  };
  to_BillOfOperationsVariant : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_MfgBillOfOperations {  };
  to_ControllingArea : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ControllingArea {  };
  to_ControllingObjectClass : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ControllingObjectClass {  };
  to_ControlRecipeDestination : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ControlRecipeDestination {  };
  to_CostElement : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_CostElement {  };
  to_CostingVariant : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_CostingVariant {  };
  to_EmployeeSuitability : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_EmployeeSuitability {  };
  to_EmployeeWageGroup : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_EmployeeWageGroup {  };
  to_EndDateOffsetReferenceCode : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_OperationDateOffsetRefCode {  };
  to_FactoryCalendar : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_FactoryCalendar {  };
  to_FunctionalArea : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_FunctionalArea {  };
  to_Language : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Language {  };
  to_LeadTimeReductionStrategy : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_LeadTimeReductionStrategy {  };
  to_MfgOrderCategory : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_MfgOrderCategory {  };
  to_MfgOrderType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_MfgOrderType {  };
  to_MRPController : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_MRPController {  };
  to_OperationConfirmation : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ConfirmationGroup {  };
  to_OperationControlProfile : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_OperationControlProfile {  };
  to_OperationSetupGroup : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_OperationSetupGroup {  };
  to_OperationSetupGroupCategory : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_OperationSetupGroupCategory {  };
  to_OperationSetupType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_OperationSetupType {  };
  to_OperationStandardTextCode : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_OperationStandardText {  };
  to_ProductionSupervisor : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ProductionSupervisor {  };
  to_PurchasingGroup : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_PurchasingGroup {  };
  to_PurchasingOrganization : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_PurchasingOrganization {  };
  to_ResponsiblePlannerGroup : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ResponsiblePlannerGroup {  };
  to_StandardWorkFmlaParamGroup : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_StandardWorkFmlaParamGroup {  };
  to_StartDateOffsetReferenceCode : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_OperationDateOffsetRefCode {  };
  to_SuperiorOperation : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_OrderOperationBasic {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Tipo di sostituzione materiale'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MatlCompDiscontinuationType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'MatlCompDiscontinuationType_Text'
  @sap.label : 'Tipo sostituzione'
  @sap.quickinfo : 'Codice di sostituzione'
  key MatlCompDiscontinuationType : String(1) not null;
  @sap.label : 'Nome di un tipo di sostituzione'
  @sap.quickinfo : 'Nome di un tipo di sostituzione per un componente materiale'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MatlCompDiscontinuationType_Text : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Distinta base operazioni'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MfgBillOfOperations {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo ciclo'
  key BillOfOperationsType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo'
  @sap.quickinfo : 'Chiave per gruppo di cicli'
  key BillOfOperationsGroup : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cont. gruppi cicli'
  @sap.quickinfo : 'Contatore gruppi cicli'
  key BillOfOperationsVariant : String(2) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Ultimo rich. ciclo'
  @sap.quickinfo : 'Data dell''ultimo richiamo del ciclo'
  LastUsageDate : Date;
  @sap.label : 'N. richiami ciclo'
  @sap.quickinfo : 'Numero dei richiami del ciclo'
  NumberOfUsages : Decimal(4, 0);
  @sap.label : 'Cd. numero modifica'
  @sap.quickinfo : 'Ciclo con numero di modifica'
  HasChangeNumber : Boolean;
  @sap.label : 'Cd. validità par.'
  @sap.quickinfo : 'Ciclo con validità parametri'
  HasParameterEffectivity : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Data modifica'
  @sap.quickinfo : 'Data dell''ultima modifica del ciclo effettuata'
  LastChangeDate : Date;
  @sap.label : 'Mod. alle'
  @sap.quickinfo : 'Ora dell''ultima modifica del ciclo effettuata'
  LastChangeTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autore modifica'
  @sap.quickinfo : 'Autore ultima modifica'
  LastChangedByUser : String(12);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Distinta base di produzione sequenza operazioni'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MfgBillOfOperationsSequence {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo ciclo'
  key BillOfOperationsType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo'
  @sap.quickinfo : 'Chiave per gruppo di cicli'
  key BillOfOperationsGroup : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cont. gruppi cicli'
  @sap.quickinfo : 'Contatore gruppi cicli'
  key BillOfOperationsVariant : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sequenza'
  key BillOfOperationsSequence : String(6) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Categoria ordine di produzione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MfgOrderCategory {
  @sap.display.format : 'NonNegative'
  @sap.text : 'ManufacturingOrderCategory_Text'
  @sap.label : 'Categoria di ordine'
  @sap.quickinfo : 'Categoria ordine di produzione'
  key ManufacturingOrderCategory : String(2) not null;
  @sap.label : 'Nome cat. ordine'
  @sap.quickinfo : 'Nome categoria ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ManufacturingOrderCategory_Text : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Sequenza ordine di produzione'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MfgOrderSequenceStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine di produzione'
  @sap.quickinfo : 'ID ordine di produzione'
  key ManufacturingOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'MfgOrderSequenceText'
  @sap.label : 'Sequenza'
  @sap.quickinfo : 'Sequenza ordine di produzione'
  key ManufacturingOrderSequence : String(6) not null;
  @sap.label : 'Testo sequenza'
  @sap.quickinfo : 'Testo sequenza ordine di produzione'
  MfgOrderSequenceText : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Ordine di produzione'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MfgOrderStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ManufacturingOrderText'
  @sap.label : 'Ordine di produzione'
  @sap.quickinfo : 'ID ordine di produzione'
  key ManufacturingOrder : String(12) not null;
  @sap.label : 'Testo ordine'
  @sap.quickinfo : 'Testo ordine di produzione'
  ManufacturingOrderText : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Tipo di ordine di produzione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MfgOrderType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ManufacturingOrderType_Text'
  @sap.label : 'Tipo di ordine'
  @sap.quickinfo : 'Tipo di ordine di produzione'
  key ManufacturingOrderType : String(4) not null;
  @sap.label : 'Nome tipo di ordine'
  @sap.quickinfo : 'Nome tipo ordine di produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ManufacturingOrderType_Text : String(40);
  @sap.display.format : 'NonNegative'
  @sap.text : 'to_MfgOrderCategory/ManufacturingOrderCategory_Text'
  @sap.label : 'Categoria di ordine'
  @sap.quickinfo : 'Categoria ordine di produzione'
  @sap.value.list : 'fixed-values'
  ManufacturingOrderCategory : String(2);
  to_MfgOrderCategory : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_MfgOrderCategory {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.addressable : 'false'
@sap.content.version : '1'
@sap.label : 'Responsabile MRP'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MRPController {
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Divisione'
  @sap.value.list : 'standard'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'MRPControllerName'
  @sap.label : 'Responsabile MRP'
  key MRPController : String(3) not null;
  @sap.label : 'Nome resp. MRP'
  @sap.quickinfo : 'Nome responsabile MRP'
  MRPControllerName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tel. resp.pian. MRP'
  @sap.quickinfo : 'Numero di telefono responsabile pianificazione MRP'
  MRPControllerPhoneNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_PurchasingGroup/PurchasingGroupName'
  @sap.label : 'Gruppo acquisti'
  @sap.value.list : 'standard'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_BusinessArea/BusinessArea_Text'
  @sap.label : 'Settore contabile'
  @sap.value.list : 'standard'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Destinatario'
  @sap.quickinfo : 'ID oggetto del destinatario'
  UserID : String(70);
  to_BusinessArea : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_BusinessArea {  };
  to_Plant : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Plant {  };
  to_PurchasingGroup : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_PurchasingGroup {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Profilo di controllo operazione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_OperationControlProfile {
  @sap.display.format : 'UpperCase'
  @sap.text : 'OperationControlProfile_Text'
  @sap.label : 'Profilo di controllo'
  @sap.quickinfo : 'Profilo di controllo operazione'
  key OperationControlProfile : String(4) not null;
  @sap.label : 'Nome profilo ctrl'
  @sap.quickinfo : 'Nome profilo di controllo operazione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OperationControlProfile_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di elaborazione esterna'
  @sap.quickinfo : 'Tipo di elaborazione esterna operazione'
  OperationExternalProcessing : String(1);
  @sap.label : 'Lavorazione esterna'
  @sap.quickinfo : 'Codice: operazione con lavorazione esterna'
  OperationIsProcessedExternally : Boolean;
  @sap.label : 'Elaborazione interna'
  @sap.quickinfo : 'L''attività è un''attività elaborata internamente (lavoro)'
  OperationIsProcessedInternally : Boolean;
  @sap.label : 'Codice milestone'
  @sap.quickinfo : 'Indicatore: l''operazione è una milestone'
  OperationIsMilestone : Boolean;
  @sap.label : 'Conferma necessaria'
  @sap.quickinfo : 'Indicatore: conferma obbligatoria'
  ConfirmationIsRequired : Boolean;
  @sap.label : 'Conferma non possibile'
  @sap.quickinfo : 'Indicatore: conferma non possibile'
  ConfirmationIsNotPossible : Boolean;
  @sap.label : 'La conferma è facoltativa'
  @sap.quickinfo : 'Indicatore: la conferma è facoltativa'
  ConfirmationIsOptional : Boolean;
  @sap.label : 'Schedulare'
  @sap.quickinfo : 'Codice: schedulare'
  OperationIsScheduled : Boolean;
  @sap.label : 'Stampare'
  @sap.quickinfo : 'Indicatore: stampa'
  OperationIsPrinted : Boolean;
  @sap.label : 'Calcolo costi'
  @sap.quickinfo : 'Codice: calcolo costi'
  OperationIsIncludedInCosting : Boolean;
  @sap.label : 'Rifinitura'
  @sap.quickinfo : 'Codice: operazione di rilavorazione'
  OperationIsReworkOperation : Boolean;
  @sap.label : 'EM automatica'
  @sap.quickinfo : 'Codice: registrare entrata merci automatica'
  GRIsPostedAutomatically : Boolean;
  @sap.label : 'Det. capacità fabb.'
  @sap.quickinfo : 'Codice: determinare fabbisogno di capacità'
  CapacityRequirementsAreDtmnd : Boolean;
  @sap.label : 'Caratt. contr. nec.'
  @sap.quickinfo : 'Caratteristiche di controllo necessarie per operazione'
  InspCharacteristicIsRequired : Boolean;
  @sap.label : 'Non rilevante p. MES'
  @sap.quickinfo : 'Non rilevante per Manufacturing Execution System esterno'
  OperationIsNotMESRelevant : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Codice riferimento intervallo date operazione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_OperationDateOffsetRefCode {
  @sap.display.format : 'UpperCase'
  @sap.text : 'OperationDateOffsetRefCode_Text'
  @sap.label : 'Data di riferimento'
  @sap.quickinfo : 'Chiave per date di rif. util. nella schedulazione offset'
  key OperationDateOffsetRefCode : String(2) not null;
  @sap.label : 'Descrizione'
  @sap.quickinfo : 'Testo breve per chiave rif. date nello schedulaz. delta'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OperationDateOffsetRefCode_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Gruppo attr. operazione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_OperationSetupGroup {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cat. gr. attrezz.'
  @sap.quickinfo : 'Categoria gruppo attr. operazione'
  key OperationSetupGroupCategory : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'OperationSetupGroup_Text'
  @sap.label : 'Gruppo attrezzaggio'
  @sap.quickinfo : 'Gruppo attr. operazione'
  key OperationSetupGroup : String(10) not null;
  @sap.label : 'Tst. gruppo setup'
  @sap.quickinfo : 'Spiegazione del codice gruppo setup (ciclo)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OperationSetupGroup_Text : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Categoria gruppo attr. operazione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_OperationSetupGroupCategory {
  @sap.display.format : 'UpperCase'
  @sap.text : 'OperationSetupGroupCategory_Text'
  @sap.label : 'Categoria gruppo attr. operazione'
  @sap.quickinfo : 'Categoria gruppo attr. per operazioni'
  key OperationSetupGroupCategory : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.label : 'Descrizione'
  @sap.quickinfo : 'Definizione del gruppo setup'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OperationSetupGroupCategory_Text : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Tipo attr. operazione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_OperationSetupType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'OperationSetupType_Text'
  @sap.label : 'Tipo attrezzaggio'
  @sap.quickinfo : 'Tipo attr. operazione'
  key OperationSetupType : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.label : 'Descrizione'
  @sap.quickinfo : 'Spiegazione del tipo attrezzaggio'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OperationSetupType_Text : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Testo standard per operazione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_OperationStandardText {
  @sap.display.format : 'UpperCase'
  @sap.text : 'OperationStandardTextCode_Text'
  @sap.label : 'ID testo standard operazione'
  @sap.quickinfo : 'ID interno testo standard operazione'
  key OperationStandardTextCode : String(7) not null;
  @sap.label : 'DescrTBreve standard'
  @sap.quickinfo : 'Descrizione della chiave testo standard'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OperationStandardTextCode_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'Operazione ordine-base'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_OrderOperationBasic {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'N. ciclo operazioni'
  @sap.quickinfo : 'Numero ciclo per operazioni nell''ordine'
  OrderInternalID : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore generale dell''ordine'
  OrderOperationInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sequenza'
  Sequence : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Numero operazione'
  Operation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  Operation_2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ch. testo standard'
  @sap.quickinfo : 'Chiave testo standard'
  StandardTextInternalID : String(7);
  @sap.label : 'Oper. testo breve'
  @sap.quickinfo : 'Operazione testo breve'
  OperationText : String(40);
  @sap.label : 'Descrizione'
  @sap.quickinfo : 'Descrizione dell''operazione: 2a riga testo'
  OperationSecondText : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Chiave lingua'
  Language : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Esiste testo esteso'
  @sap.quickinfo : 'Codice di ''esistenza testo esteso'''
  OperationHasLongText : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sequenza'
  BillOfOperationsSequence : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo ciclo'
  BillOfOperationsType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo'
  @sap.quickinfo : 'Chiave per gruppo di cicli'
  BillOfOperationsGroup : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cont. gruppi cicli'
  @sap.quickinfo : 'Contatore gruppi cicli'
  BillOfOperationsVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nodo ciclo'
  @sap.quickinfo : 'Numero del nodo ciclo'
  BOOOperationInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vers. ciclo lavoro'
  @sap.quickinfo : 'Versione ciclo di lavoro'
  BillOfOperationsVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nodo oper. sovraord.'
  @sap.quickinfo : 'Numero nodo dell''operazione sovraordinata'
  SuperiorOperationInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave di controllo'
  OperationControlProfile : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'ID oggetto'
  @sap.quickinfo : 'ID oggetto della risorsa'
  WorkCenterInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  WorkCenterTypeCode : String(1);
  @sap.aggregation.role : 'dimension'
  WorkCenterTypeCode_2 : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID cal. di fabbrica'
  @sap.quickinfo : 'Calendario di fabbrica'
  FactoryCalendar : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero oggetto'
  ObjectInternalID : String(22);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fabbisogno capacità'
  @sap.quickinfo : 'ID del record fabbisogno capacità'
  CapacityRequirement : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore interno'
  CapacityRequirementItem : String(8);
  @odata.Type : 'Edm.Byte'
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Numero'
  @sap.quickinfo : 'Numero capacità necessaria'
  NumberOfCapacities : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Utilizzo mlst.'
  @sap.quickinfo : 'Utilizzo'
  UsageCode : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Assemblaggio'
  Assembly : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Def. progetto'
  @sap.quickinfo : 'Progetto (interno)'
  ProjectInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Conferma'
  @sap.quickinfo : 'Numero di conferma dell''operazione'
  OperationConfirmation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore conferma'
  NumberOfOperationConfirmations : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero di modifica'
  ChangeNumber : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'C.I.D.'
  OperationPersonResponsible : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Numero dell''equipment'
  Equipment : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sede tecnica'
  FunctionalLocation : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Sede tecnica'
  FunctionalLocation_2 : String(30);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Crit. class.'
  @sap.quickinfo : 'Criterio di class. per record info non gestiti a magazzino'
  OperationPurgInfoRecdSearchTxt : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Lav. esterna'
  @sap.quickinfo : 'Indicatore: operazione elab. esterna con lavorazione esterna'
  ExtProcgOperationHasSubcontrg : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Prezzo fissato'
  @sap.quickinfo : 'Codice: dati del record informazione acquisti fissati'
  PurgInfoRecdDataIsFixed : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Record info acquisti'
  @sap.quickinfo : 'Numero del record info acquisti'
  PurchasingInfoRecord : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo record info'
  @sap.quickinfo : 'Cat. di record info acquisti'
  PurchasingInfoRecordCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Org. acquisti'
  @sap.quickinfo : 'Organizzazione acquisti'
  PurchasingOrganization : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo acquisti'
  @sap.quickinfo : 'Gruppo acquisti per attività di elaborazione esterna'
  PurchasingGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Richiesta d''acquisto'
  @sap.quickinfo : 'Numero della richiesta d''acquisto'
  PurchaseRequisition : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Posizione richiesta'
  @sap.quickinfo : 'Numero posizione richiesta d''acquisto nell''ordine'
  PurchaseRequisitionItem : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Documento d''acquisto'
  @sap.quickinfo : 'Numero del documento acquisti'
  PurchasingDocument : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Posizione'
  @sap.quickinfo : 'Numero posizione documento d''acquisto'
  PurchasingDocumentItem : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo merci'
  MaterialGroup : String(9);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Destinatario merci'
  GoodsRecipientName : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Punto di scarico'
  UnloadingPointName : String(25);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Società'
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Settore contabile'
  BusinessArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit center'
  ProfitCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Voce di costo'
  CostElement : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Variante CCST'
  @sap.quickinfo : 'Variante di calcolo costi'
  CostingVariant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'N. CCST'
  @sap.quickinfo : 'N. calcolo costi per CCST senza struttura quantitativa'
  CostEstimate : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Schema CCST'
  CostingSheet : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'CdC richiedente'
  @sap.quickinfo : 'Centro di costo richiedente'
  RequestingCostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave di calcolo'
  OperationCalculationControl : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calcolo costi'
  @sap.quickinfo : 'Codice di selezione per partite singole CCST'
  OperationCostingRelevancyType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contabilizzazione'
  @sap.quickinfo : 'Codice per la contabilizz. di un network (testata/operaz.)'
  NtwkAccountAssignmentCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Comp. progetti'
  @sap.quickinfo : 'Cd.: considerare operazione per compattazione progetti'
  ActyIsTakenAcctForProjSmmry : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisa oggetto'
  @sap.quickinfo : 'Divisa oggetto operazione network'
  @sap.semantics : 'currency-code'
  ControllingObjectCurrency : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Classe dell''oggetto CO'
  ControllingObjectClass : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sede fiscale'
  TaxJurisdiction : String(15);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Area funzionale'
  FunctionalArea : String(16);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di attività'
  CostCtrActivityType : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Chiave divisa'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'Currency'
  @sap.label : 'Importo'
  @sap.quickinfo : 'Importo per costi dell''attività'
  @sap.filterable : 'false'
  PlannedActivityCost : Decimal(12, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cat.gr.attr.'
  @sap.quickinfo : 'Categoria gruppo attrezzaggio'
  OperationSetupGroupCategory : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ch.gr.attrezzaggio'
  @sap.quickinfo : 'Chiave gruppo attrezzaggio'
  OperationSetupGroup : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave tipi attr.'
  @sap.quickinfo : 'Chiave tipi attrezzaggio'
  OperationSetupType : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Sovrapposiz.obblig.'
  @sap.quickinfo : 'Sovrapposizione obbligatoria'
  OperationOverlappingIsRequired : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Sovrapp. facoltativa'
  @sap.quickinfo : 'Sovrapposizione facoltativa'
  OperationOverlappingIsPossible : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Prod.a flusso cont.'
  OperationsIsAlwaysOverlapping : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Sudd. obbligatoria'
  @sap.quickinfo : 'Suddivisione obbligatoria'
  OperationSplitIsRequired : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'N. max suddivisioni'
  MaximumNumberOfSplits : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Strat.riduzione'
  @sap.quickinfo : 'Strategia di riduzione per operazione'
  LeadTimeReductionStrategy : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave quote di CG'
  OverheadCode : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Codice fase'
  MfgOrderOperationIsPhase : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore generale dell''ordine'
  OrderIntBillOfOpItemOfPhase : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priorità'
  OperationImportance : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Numero suddivisioni'
  @sap.quickinfo : 'Numero effettivo suddivisioni'
  ActualNumberOfSplits : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Flag di canc.'
  @sap.quickinfo : 'Flag di cancellazione'
  OperationIsToBeDeleted : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priorità'
  NetworkActivityPriority : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Scarto'
  @sap.quickinfo : 'Fattore di scarto'
  OperationScrapPercent : Decimal(5, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato impianto'
  @sap.quickinfo : 'Stato dell''impianto'
  OperationSystemCondition : String(1);
  @odata.Type : 'Edm.Byte'
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Percentuale'
  @sap.quickinfo : 'Percentuale di lavoro'
  OperationWorkPercent : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fase di esecuzione'
  @sap.quickinfo : 'PRE MAIN POST'
  MaintOperationExecStageCode : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fase processo'
  MaintOrdOpProcessPhaseCode : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sottofase processo'
  @sap.quickinfo : 'Sottofase del processo'
  MaintOrdOpProcessSubPhaseCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'ID istanza'
  @sap.quickinfo : 'Network attività operazione: ID istanza'
  SetupOpActyNtwkInstance : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'ID istanza'
  @sap.quickinfo : 'Network attività operazione: ID istanza'
  ProduceOpActyNtwkInstance : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'ID istanza'
  @sap.quickinfo : 'Network attività operazione: ID istanza'
  TeardownOpActyNtwkInstance : Integer;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Help di ricerca per contratti di lavoro'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_PersWrkAgrmtSrchHelp {
  @sap.display.format : 'NonNegative'
  @sap.text : 'PersonFullName'
  @sap.label : 'Codice identificativo dipendente'
  key PersonWorkAgreement : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID ogg. corr.'
  @sap.quickinfo : 'ID dell''oggetto correlato'
  Person : String(45);
  @sap.label : 'Cognome'
  @sap.quickinfo : 'Cognome del business partner (persona)'
  LastName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome di famiglia'
  FamilyName : String(35);
  @sap.label : 'Nome'
  @sap.quickinfo : 'Nome del business partner (persona)'
  FirstName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome indicato'
  GivenName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'N. identif.'
  @sap.quickinfo : 'Numero identificativo'
  PersonExternalID : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID utente'
  UserID : String(12);
  @sap.label : 'Nome completo'
  PersonFullName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Società'
  CompanyCode : String(4);
  @sap.label : 'Nome società'
  @sap.quickinfo : 'Definizione della società o della ditta'
  CompanyCodeName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CdC'
  @sap.quickinfo : 'Centro di costo'
  CostCenter : String(10);
  @sap.label : 'Nome centro di costo'
  @sap.quickinfo : 'Nome del centro di costo'
  CostCenterName : String(20);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Chiave mansione'
  @sap.quickinfo : 'Mansione'
  Job : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome job'
  @sap.quickinfo : 'Qualifica'
  JobName : String(255);
  @sap.label : 'Nome dell''unità organizzativa'
  OrganizationalUnitName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave organizzativa'
  PersonWorkAgrmtAuthznGrpg : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gr. autorizzazioni'
  @sap.quickinfo : 'Gruppo autorizzazioni'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ind.compl.sc.comm.'
  @sap.quickinfo : 'Indicatore per completamento scopo commerciale'
  IsBusinessPurposeCompleted : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Divisione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Plant {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantName'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.label : 'Nome divisione'
  PlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Area valorizzazione'
  ValuationArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd. cliente div.'
  @sap.quickinfo : 'Cd.cliente della divisione'
  PlantCustomer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd.forn.div.'
  @sap.quickinfo : 'Codice fornitore della divisione'
  @sap.value.list : 'standard'
  PlantSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calendario fabbrica'
  @sap.quickinfo : 'Chiave calendario di fabbrica'
  FactoryCalendar : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Org. acquisti'
  @sap.quickinfo : 'Organizzazione acquisti'
  DefaultPurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Org.comm. fatt. int.'
  @sap.quickinfo : 'Organizzazione commerciale per fatturazione interna'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Indirizzo'
  AddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cat. div.'
  PlantCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Canale distribuzione'
  @sap.quickinfo : 'Canale di distribuzione per fatturazione interna'
  DistributionChannel : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sett. fattur.interna'
  @sap.quickinfo : 'Settore per fatturazione interna'
  Division : String(2);
  @sap.label : 'Chiave lingua'
  Language : String(2);
  @sap.label : 'Ind. archiviazione'
  @sap.quickinfo : 'Marcatore archiviazione centrale per record anagrafico'
  IsMarkedForArchiving : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Divisione'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_PlantStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantName'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.label : 'Nome divisione'
  PlantName : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'View di base - profilo di adattamento'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProdEWMAdjmtProfile {
  @sap.display.format : 'UpperCase'
  @sap.text : 'AdjustmentProfile_Text'
  @sap.label : 'Prof. di adattamento'
  @sap.quickinfo : 'Distrib. merci - Profilo di adattamento'
  key AdjustmentProfile : String(3) not null;
  @sap.label : 'Descr. prof. adatt.'
  @sap.quickinfo : 'Descrizione - Distr. merci - Profilo di adattamento'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AdjustmentProfile_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Prodotto'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Product {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Product_Text'
  @sap.label : 'Prodotto'
  @sap.quickinfo : 'Codice prodotto'
  key Product : String(40) not null;
  @sap.label : 'Descrizione prodotto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Product_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Rappresentazione esterna del codice materiale'
  ProductExternalID : String(40);
  @sap.label : 'OID prodotto'
  @sap.quickinfo : 'Elemento dati per OID di prodotto'
  ProductOID : String(128);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductType_Text'
  @sap.label : 'Tipo di prodotto'
  @sap.value.list : 'standard'
  ProductType : String(4);
  @sap.label : 'Descrizione tipo di prodotto'
  @sap.quickinfo : 'Descrizione del tipo di prodotto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductType_Text : String(25);
  @sap.display.format : 'Date'
  @sap.label : 'Creato il'
  @sap.quickinfo : 'Data creazione'
  CreationDate : Date;
  @sap.label : 'Ora di creazione'
  CreationTime : Time;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Data cr.'
  @sap.quickinfo : 'Data di creazione del prodotto'
  CreationDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_CreatedByUserContactCard/UserDescription'
  @sap.label : 'Autore'
  @sap.quickinfo : 'Nome del responsabile che ha aggiunto l''oggetto'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Ultima modifica'
  @sap.quickinfo : 'Data dell''ultima modifica'
  LastChangeDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_LastChangedByUserContactCard/UserDescription'
  @sap.label : 'Autore modifica'
  @sap.quickinfo : 'Nome dell''utente autore della modifica oggetto'
  LastChangedByUser : String(12);
  @sap.label : 'Marc. per elim.'
  @sap.quickinfo : 'Indicatore di eliminazione'
  IsMarkedForDeletion : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CrossPlantStatus_Text'
  @sap.label : 'St.prod.val.per div.'
  @sap.quickinfo : 'Stato prodotto val. per tutte divisioni'
  @sap.value.list : 'standard'
  CrossPlantStatus : String(2);
  @sap.label : 'Tst st. val. tutte div.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CrossPlantStatus_Text : String(25);
  @sap.display.format : 'Date'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio validità stato mat. valido per tutte le div.'
  CrossPlantStatusValidityDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd. prodotto prec.'
  @sap.quickinfo : 'Codice prodotto precedente'
  ProductOldID : String(40);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Peso lordo'
  GrossWeight : Decimal(13, 3);
  @sap.label : 'UM ordine d''acquisto'
  @sap.quickinfo : 'UM dell''ordine d''acquisto'
  @sap.semantics : 'unit-of-measure'
  PurchaseOrderQuantityUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fonte d''acquisto'
  @sap.quickinfo : 'Fonte acquisto'
  SourceOfSupply : String(1);
  @sap.text : 'WeightUnit_Text'
  @sap.label : 'Unità di peso'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  WeightUnit : String(3);
  @sap.label : 'Testo UM'
  @sap.quickinfo : 'Testo unità di misura (massimo 30 posizioni)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WeightUnit_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Paese/Reg. origine'
  @sap.quickinfo : 'Paese/Regione di origine del materiale (orig. non prefer.)'
  CountryOfOrigin : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Concorrente'
  CompetitorID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductGroup_Text'
  @sap.label : 'Gruppo di prodotti'
  @sap.value.list : 'standard'
  ProductGroup : String(9);
  @sap.label : 'Descrizione gruppo di prodotti'
  @sap.quickinfo : 'Descrizione gruppo prodotti'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductGroup_Text : String(20);
  @sap.text : 'BaseUnit_Text'
  @sap.label : 'Unità misura base'
  @sap.quickinfo : 'Unità di misura di base'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.label : 'Testo UM'
  @sap.quickinfo : 'Testo unità di misura (massimo 30 posizioni)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BaseUnit_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ItemCategoryGroup_Text'
  @sap.label : 'Gr. tipi pos. gen.'
  @sap.quickinfo : 'Gruppo di tipi di posizione generale'
  @sap.value.list : 'standard'
  ItemCategoryGroup : String(4);
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ItemCategoryGroup_Text : String(20);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Peso netto'
  NetWeight : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductHierarchy_Text'
  @sap.label : 'Gerarchia prodotti'
  @sap.value.list : 'standard'
  ProductHierarchy : String(18);
  @sap.label : 'Testo per gerarchia prodotti'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductHierarchy_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'Division_Text'
  @sap.label : 'Settore merceologico'
  @sap.value.list : 'standard'
  Division : String(2);
  @sap.label : 'Descrizione settore merceologico'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Division_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Utà OdA variab.'
  @sap.quickinfo : 'Unità di misura OdA variabile attiva'
  VarblPurOrdUnitIsActive : String(1);
  @sap.text : 'VolumeUnit_Text'
  @sap.label : 'Unità di volume'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  VolumeUnit : String(3);
  @sap.label : 'Testo UM'
  @sap.quickinfo : 'Testo unità di misura (massimo 30 posizioni)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  VolumeUnit_Text : String(30);
  @sap.unit : 'VolumeUnit'
  @sap.label : 'Volume'
  MaterialVolume : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato per cat.distr.'
  @sap.quickinfo : 'Stato materiale valido per tutta la catena di distr.'
  SalesStatus : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo di trasporto'
  TransportationGroup : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio val. stato mat. valido per tutta la cat.distr.'
  SalesStatusValidityDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gr. autorizzazioni'
  @sap.quickinfo : 'Gruppo autorizzazioni'
  AuthorizationGroup : String(4);
  @sap.display.format : 'NonNegative'
  @sap.text : 'ANPCode_Text'
  @sap.label : 'ANP Code'
  @sap.value.list : 'standard'
  ANPCode : String(9);
  @sap.label : 'ANP Code Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ANPCode_Text : String(95);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductCategory_Text'
  @sap.label : 'Categoria prodotto'
  @sap.value.list : 'standard'
  ProductCategory : String(2);
  @sap.label : 'Testo per categoria di prodotto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductCategory_Text : String(60);
  @sap.display.format : 'UpperCase'
  @sap.text : 'Brand_Text'
  @sap.label : 'Marca'
  @sap.value.list : 'standard'
  Brand : String(4);
  @sap.label : 'Definizione marche'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Brand_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Regola approvv.'
  @sap.quickinfo : 'Regola approvvigionamento'
  ProcurementRule : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio validità'
  ValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Livello pianif. MRP'
  @sap.quickinfo : 'Livello pianificazione MRP'
  LowLevelCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Materiale collettivo'
  @sap.quickinfo : 'Codice mat. del materiale collettivo nei mat. preconf.'
  ProdNoInGenProdInPrepackProd : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profilo n.di serie'
  @sap.quickinfo : 'Profilo numero di serie'
  SerialIdentifierAssgmtProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grandezza/dimensione'
  SizeOrDimensionText : String(32);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Definizione standard'
  @sap.quickinfo : 'Definizione standard (es. DIN)'
  IndustryStandardName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'GTIN'
  @sap.quickinfo : 'Global Trade Item Number (EAN/UPC/GTIN)'
  ProductStandardID : String(18);
  @sap.display.format : 'UpperCase'
  @sap.text : 'InternationalArticleNumberCat_Text'
  @sap.label : 'Tipo EAN'
  @sap.quickinfo : 'Tipo n. articoli europei'
  @sap.value.list : 'standard'
  InternationalArticleNumberCat : String(2);
  @sap.label : 'Def. tipo numero'
  @sap.quickinfo : 'Definizione tipo numero'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InternationalArticleNumberCat_Text : String(40);
  @sap.label : 'Configurabile'
  @sap.quickinfo : 'Il prodotto è configurabile'
  ProductIsConfigurable : Boolean;
  @sap.label : 'Gestione partite'
  @sap.quickinfo : 'Indicatore Obbligo di gestione a partita'
  IsBatchManagementRequired : Boolean;
  @sap.label : 'Con dist. base vuoti'
  @sap.quickinfo : 'Cd.: distinta base vuoti'
  HasEmptiesBOM : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ExternalProductGroup_Text'
  @sap.label : 'Gruppo prod. esterni'
  @sap.quickinfo : 'Gruppo prodotti esterno'
  @sap.value.list : 'standard'
  ExternalProductGroup : String(18);
  @sap.label : 'Descr. gr. prod. est'
  @sap.quickinfo : 'Descrizione gruppo prodotti esterni'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ExternalProductGroup_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CrossPlantConfigurableProduct_Text'
  @sap.label : 'PC val.per tt.div.'
  @sap.quickinfo : 'Prodotto configurabile valido per tutte le divisioni'
  @sap.value.list : 'standard'
  CrossPlantConfigurableProduct : String(40);
  @sap.label : 'Descrizione prodotto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CrossPlantConfigurableProduct_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Liv. serializzazione'
  @sap.quickinfo : 'Livello di univocità del numero di serie'
  SerialNoExplicitnessLevel : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cod. comp. costr.'
  @sap.quickinfo : 'Codice componente costruttore'
  ProductManufacturerNumber : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costruttore'
  @sap.quickinfo : 'Numero di un costruttore'
  ManufacturerNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ProfCompAssCostr'
  @sap.quickinfo : 'Prof. compon. ass. costr.'
  ManufacturerPartProfile : String(4);
  @sap.label : 'QM in approv. attivo'
  @sap.quickinfo : 'QM attivo nell''approvvigionamento'
  QltyMgmtInProcmtIsActive : Boolean;
  @sap.label : 'Reg.part.autor.rich.'
  @sap.quickinfo : 'Registro partita autorizzato richiesto'
  IsApprovedBatchRecordReqd : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'HandlingIndicator_Text'
  @sap.label : 'Indicatore handling'
  @sap.value.list : 'standard'
  HandlingIndicator : String(4);
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  HandlingIndicator_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'WarehouseProductGroup_Text'
  @sap.label : 'Grp. mat. magazzino'
  @sap.quickinfo : 'Gruppo materiale magazzino'
  @sap.value.list : 'standard'
  WarehouseProductGroup : String(4);
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WarehouseProductGroup_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'WarehouseStorageCondition_Text'
  @sap.label : 'Cond. stocc. in mag.'
  @sap.quickinfo : 'Condizione stoccaggio magazzino'
  @sap.value.list : 'standard'
  WarehouseStorageCondition : String(2);
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WarehouseStorageCondition_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'StandardHandlingUnitType_Text'
  @sap.label : 'Tipo HU standard'
  @sap.value.list : 'standard'
  StandardHandlingUnitType : String(4);
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StandardHandlingUnitType_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'SerialNumberProfile_Text'
  @sap.label : 'Profilo n.di serie'
  @sap.quickinfo : 'Profilo numero di serie'
  @sap.value.list : 'standard'
  SerialNumberProfile : String(4);
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SerialNumberProfile_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'AdjustmentProfile_Text'
  @sap.label : 'Profilo adatt.'
  @sap.quickinfo : 'Profilo di adattamento'
  @sap.value.list : 'standard'
  AdjustmentProfile : String(3);
  @sap.label : 'Descr. prof. adatt.'
  @sap.quickinfo : 'Descrizione - Distr. merci - Profilo di adattamento'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AdjustmentProfile_Text : String(40);
  @sap.label : 'UM preferita'
  @sap.quickinfo : 'Utà di misura alternativa preferita per operazioni magazzino'
  @sap.semantics : 'unit-of-measure'
  PreferredUnitOfMeasure : String(3);
  @sap.label : 'A rischio di furto'
  IsPilferable : Boolean;
  @sap.label : 'Rilev. sost. peric.'
  @sap.quickinfo : 'Rilevante per sost. peric.'
  IsRelevantForHzdsSubstances : Boolean;
  @sap.unit : 'TimeUnitForQuarantinePeriod'
  @sap.label : 'Per. quarant.'
  @sap.quickinfo : 'Periodo di quarant.'
  QuarantinePeriod : Decimal(3, 0);
  @sap.text : 'TimeUnitForQuarantinePeriod_Text'
  @sap.label : 'Unità di tempo'
  @sap.quickinfo : 'Unità di tempo per periodo di quarantena'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  TimeUnitForQuarantinePeriod : String(3);
  @sap.label : 'Testo UM'
  @sap.quickinfo : 'Testo unità di misura (massimo 30 posizioni)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TimeUnitForQuarantinePeriod_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'QualityInspectionGroup_Text'
  @sap.label : 'Gruppo ctrl. qualità'
  @sap.quickinfo : 'Gruppo di controllo qualità'
  @sap.value.list : 'standard'
  QualityInspectionGroup : String(4);
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  QualityInspectionGroup_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'HandlingUnitType_Text'
  @sap.label : 'Tipo utà moviment.'
  @sap.quickinfo : 'Tipo di unità di movimentazione'
  @sap.value.list : 'standard'
  HandlingUnitType : String(4);
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  HandlingUnitType_Text : String(40);
  @sap.label : 'Peso netto var.'
  @sap.quickinfo : 'Peso netto variabile'
  HasVariableTareWeight : Boolean;
  @sap.unit : 'UnitForMaxPackagingDimensions'
  @sap.label : 'Lungh. imball. max.'
  @sap.quickinfo : 'Lunghezza imballaggio max. di un mat. d''imballaggio'
  MaximumPackagingLength : Decimal(15, 3);
  @sap.unit : 'UnitForMaxPackagingDimensions'
  @sap.label : 'Largh. imball. max.'
  @sap.quickinfo : 'Largh. imballaggio max. consentita di mat. d''imballaggio'
  MaximumPackagingWidth : Decimal(15, 3);
  @sap.unit : 'UnitForMaxPackagingDimensions'
  @sap.label : 'Altezza imball. max.'
  @sap.quickinfo : 'Altezza imballaggio max. di mat. d''imballaggio'
  MaximumPackagingHeight : Decimal(15, 3);
  @sap.label : 'Capacità massima'
  @sap.quickinfo : 'Capacità massima consentita del mat. d''imballaggio'
  MaximumCapacity : Decimal(15, 3);
  @sap.label : 'Toll. capacità max.'
  @sap.quickinfo : 'Tolleranza capacità max. handling unit'
  OvercapacityTolerance : Decimal(3, 1);
  @sap.text : 'UnitForMaxPackagingDimensions_Text'
  @sap.label : 'Unità di misura'
  @sap.quickinfo : 'Unità di mis. per lungh. /largh. /altezza max. d''imballaggio'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  UnitForMaxPackagingDimensions : String(3);
  @sap.label : 'Testo UM'
  @sap.quickinfo : 'Testo unità di misura (massimo 30 posizioni)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  UnitForMaxPackagingDimensions_Text : String(30);
  @sap.unit : 'ProductMeasurementUnit'
  @sap.label : 'Lunghezza'
  BaseUnitSpecificProductLength : Decimal(13, 3);
  @sap.unit : 'ProductMeasurementUnit'
  @sap.label : 'Larghezza'
  BaseUnitSpecificProductWidth : Decimal(13, 3);
  @sap.unit : 'ProductMeasurementUnit'
  @sap.label : 'Altezza'
  BaseUnitSpecificProductHeight : Decimal(13, 3);
  @sap.text : 'ProductMeasurementUnit_Text'
  @sap.label : 'Unità di misura'
  @sap.quickinfo : 'Unità di misura per lungh./largh./altezza'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  ProductMeasurementUnit : String(3);
  @sap.label : 'Testo UM'
  @sap.quickinfo : 'Testo unità di misura (massimo 30 posizioni)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductMeasurementUnit_Text : String(30);
  @sap.display.format : 'Date'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio validità'
  ProductValidStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Categoria prodotto'
  ArticleCategory : String(2);
  @sap.text : 'ContentUnit_Text'
  @sap.label : 'UM contenuto'
  @sap.quickinfo : 'Unità di misura contenuto'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  ContentUnit : String(3);
  @sap.label : 'Testo UM'
  @sap.quickinfo : 'Testo unità di misura (massimo 30 posizioni)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ContentUnit_Text : String(30);
  @sap.unit : 'ContentUnit'
  @sap.label : 'Cont. netto'
  NetContent : Decimal(13, 3);
  @sap.unit : 'ContentUnit'
  @sap.label : 'Unità di prezzo di confronto'
  @sap.quickinfo : 'Unità del prezzo di confronto'
  ComparisonPriceQuantity : Decimal(5, 0);
  @sap.unit : 'ContentUnit'
  @sap.label : 'Contenuti lordi'
  @sap.quickinfo : 'Contenuto lordo'
  GrossContent : Decimal(13, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Fine validità'
  @sap.quickinfo : 'Data liquidazione'
  ProductValidEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.text : 'AssortmentListType_Text'
  @sap.label : 'Tipo lista assort.'
  @sap.quickinfo : 'Tipo lista assortimento'
  @sap.value.list : 'standard'
  AssortmentListType : String(1);
  @sap.label : 'Descrizione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AssortmentListType_Text : String(20);
  @sap.label : 'Origine animale'
  @sap.quickinfo : 'Ind.: contiene parti non tessili di origine animale'
  HasTextilePartsWthAnimalOrigin : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Utilizzo stagione'
  @sap.quickinfo : 'Indicatore: utilizzo di stagione'
  ProductSeasonUsageCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Settore industriale'
  IndustrySector : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero di modifica'
  ChangeNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato rev.'
  MaterialRevisionLevel : String(2);
  @sap.label : 'È attivo'
  @sap.quickinfo : 'Bozza - Indicatore - È un documento attivo'
  IsActiveEntity : Boolean;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Ultima modifica'
  @sap.quickinfo : 'Timestamp di modifica'
  LastChangeDateTime : Timestamp;
  @sap.label : 'Ora ultima modifica'
  @sap.quickinfo : 'Ora dell''ultima modifica'
  LastChangeTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profilo codice MP'
  @sap.quickinfo : 'Profilo per codice merci pericolose'
  DangerousGoodsIndProfile : String(3);
  @sap.label : 'Prodotto'
  @sap.quickinfo : 'Chiave interna per prodotto'
  ProductUUID : UUID;
  @sap.label : 'ID prod.'
  @sap.quickinfo : 'Numero interno (UID) per prodotto'
  ProdSupChnMgmtUUID22 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero mod. doc.'
  @sap.quickinfo : 'N. modifica del documento (senza sistema gestione documenti)'
  ProductDocumentChangeNumber : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'N. di fogli'
  @sap.quickinfo : 'Numero fogli (senza sistema di gestione documenti)'
  ProductDocumentPageCount : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero della pagina'
  @sap.quickinfo : 'N. pagina documento (senza sist. gestione documenti)'
  ProductDocumentPageNumber : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice mat. interno'
  @sap.quickinfo : 'Codice del materiale interno gestito in base a stock'
  OwnInventoryManagedProduct : String(40);
  @sap.label : 'Cd. CAD'
  @sap.quickinfo : 'Codice CAD'
  DocumentIsCreatedByCAD : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Avv. prod./controllo'
  @sap.quickinfo : 'Avvert. produz./controllo'
  ProductionOrInspectionMemoTxt : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Formato DIN'
  @sap.quickinfo : 'Formato DIN istruzioni di produzione'
  ProductionMemoPageFormat : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Variante EAN'
  @sap.quickinfo : 'Variante per Global Trade Item Number'
  GlobalTradeItemNumberVariant : String(2);
  @sap.label : 'Viscosità elevata'
  @sap.quickinfo : 'Codice: viscosità elevata'
  ProductIsHighlyViscous : Boolean;
  @sap.label : 'Merce sfusa/liquidi'
  @sap.quickinfo : 'Codice: merce sfusa/liquidi'
  TransportIsInBulk : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Schema elab. quote'
  @sap.quickinfo : 'Elaborazione quote: schema di elaborazione quote'
  ProdAllocDetnProcedure : String(18);
  @sap.label : 'Val. validità par.'
  @sap.quickinfo : 'Valutazione con parametro validità / sostituire n. modifica'
  ProdEffctyParamValsAreAssigned : Boolean;
  @sap.label : 'Rilev. per l''amb.'
  @sap.quickinfo : 'Codice: rilevante per l''ambiente'
  ProdIsEnvironmentallyRelevant : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Laboratorio/ufficio'
  @sap.quickinfo : 'Laboratorio / Uff. progettazione'
  LaboratoryOrDesignOffice : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo mat. imb.'
  @sap.quickinfo : 'Gruppo materiali d''imballaggio'
  PackagingMaterialGroup : String(4);
  @sap.label : 'Fisso'
  @sap.quickinfo : 'Il materiale è fisso'
  ProductIsLocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sogg. sconto merce'
  @sap.quickinfo : 'Il materiale è soggetto allo sconto merce'
  DiscountInKindEligibility : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome del modulo'
  SmartFormName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mat. rif. norma imb.'
  @sap.quickinfo : 'Materiale di rif. per materiali imballati analogamente'
  PackingReferenceProduct : String(40);
  @sap.label : 'Mat. base'
  @sap.value.list : 'standard'
  BasicMaterial : String(48);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Documento'
  @sap.quickinfo : 'Numero documento (senza sistema gestione documenti)'
  ProductDocumentNumber : String(22);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Versione documento'
  @sap.quickinfo : 'Versione del documento (senza sistema gestione documenti)'
  ProductDocumentVersion : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di documento'
  @sap.quickinfo : 'Tipo documento (senza sistema gestione documenti)'
  ProductDocumentType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Formato pagina'
  @sap.quickinfo : 'Formato pag. documento (senza sistema gestione documenti)'
  ProductDocumentPageFormat : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'N. oggetto int.'
  ProductConfiguration : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Strategia segm.'
  @sap.quickinfo : 'Strategia di segmentazione'
  SegmentationStrategy : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ril. segm.'
  @sap.quickinfo : 'Rilevante per segm.'
  SegmentationIsRelevant : String(1);
  @sap.label : 'Composizione prod.'
  @sap.quickinfo : 'Cd.: composizione prodotto indicata su imballaggio'
  ProductCompositionIsRelevant : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'IsChemicalComplianceRelevant_Text'
  @sap.label : 'Indic. di ril. per conformità chimica'
  @sap.quickinfo : 'Indicatore di rilevanza per conformità chimica'
  @sap.value.list : 'fixed-values'
  IsChemicalComplianceRelevant : String(1);
  @sap.label : 'Descrizione breve'
  @sap.quickinfo : 'Testo breve per valori fissi'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IsChemicalComplianceRelevant_Text : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'NCollVar. C/F'
  @sap.quickinfo : 'Numero collettivo variante del produttore'
  ManufacturerBookPartNumber : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cat. mat. logistico'
  @sap.quickinfo : 'Categoria di un materiale logistico'
  LogisticalProductCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'N. mat. vendita'
  @sap.quickinfo : 'Numero di un materiale di vendita'
  SalesProduct : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Numero caratt. int.'
  @sap.quickinfo : 'Numero caratteristica interna nelle caratt. dei colori'
  ProdCharc1InternalNumber : String(30);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Numero caratt. int.'
  @sap.quickinfo : 'N. caratt. interna nelle caratt. per le dimens. principali'
  ProdCharc2InternalNumber : String(30);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Numero caratt. int.'
  @sap.quickinfo : 'N. caratt. interna nelle caratt. delle seconde dimensioni'
  ProdCharc3InternalNumber : String(30);
  @sap.label : 'Colore'
  @sap.quickinfo : 'Valore caratteristica per colori in caso di varianti'
  ProductCharacteristic1 : String(18);
  @sap.label : 'Dimensione princ.'
  @sap.quickinfo : 'Valore caratteristica per la dimens. princ. nelle varianti'
  ProductCharacteristic2 : String(18);
  @sap.label : 'Seconda dimensione'
  @sap.quickinfo : 'Valore caratt. per la seconda dimensione nelle varianti'
  ProductCharacteristic3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato aggiornamento'
  MaintenanceStatus : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Attrib. moda 1'
  @sap.quickinfo : 'Campo informazioni moda: 1'
  FashionProdInformationField1 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Attr. fashion 2'
  @sap.quickinfo : 'Campo informazioni fashion: 2'
  FashionProdInformationField2 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Attr. fashion 3'
  @sap.quickinfo : 'Campo informazioni fashion: 3'
  FashionProdInformationField3 : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd. sost. munizioni'
  @sap.quickinfo : 'Codice sostituzione munizioni'
  DfsAmmunitionGroupCode : String(8);
  @sap.label : 'ID CED'
  @sap.quickinfo : 'Codice dell''elemento di dichiarazione - ID numerico'
  DfsRICIdentifier : Integer64;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Confid. caratt.'
  @sap.quickinfo : 'Confidenzialità per caratteristiche'
  DfsProductSensitivity : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CCC esteso'
  @sap.quickinfo : 'Codice componente costruttore esteso'
  DfsManufacturerPartLongNumber : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gestione stato'
  @sap.quickinfo : 'Gestione stato materiale'
  DfsMatlConditionMgmt : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valore di ritorno'
  DfsReturnDelivery : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rit.fino a liv.log.'
  @sap.quickinfo : 'Ritorno fino al livello logistico'
  DfsLogisticsLevel : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd. fornitura NATO'
  @sap.quickinfo : 'Codice di fornitura NATO'
  DfsNationalItemIdnNumber : String(9);
  to_AdjustmentProfile_2 : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ProdEWMAdjmtProfile {  };
  to_AssortmentListType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_AssortmentListType {  };
  to_BaseUnitOfMeasure : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_UnitOfMeasure {  };
  to_BasicMaterial : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_BasicMaterial {  };
  to_Brand : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Brand {  };
  to_BR_ANPCode : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_BR_ANPCode {  };
  to_ChemicalComplianceRelevant : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ChemicalComplianceRelevant {  };
  to_ContentUnit : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_UnitOfMeasure {  };
  to_CreatedByUserContactCard : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_UserContactCard {  };
  to_Division : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Division {  };
  to_ExternalProductGroup : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ExtProdGrp {  };
  to_HandlingIndicator : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_MaterialHandling {  };
  to_HandlingUnitType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_HandlingUnitType {  };
  to_InternationalArticleNumberCat : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Intntnlartnmbcat {  };
  to_ItemCategoryGroup : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ItemCategoryGroup {  };
  to_LastChangedByUserContactCard : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_UserContactCard {  };
  to_ProductCategory : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ProductCategory {  };
  to_ProductGroup_2 : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ProductGroup_2 {  };
  to_ProductHierarchy : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ProductHierarchy {  };
  to_ProductMeasurementUnit : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_UnitOfMeasure {  };
  to_ProductStatus : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ProductStatus {  };
  to_ProductType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Producttype {  };
  to_QualityInspectionGroup : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_QualityInspectionGroup {  };
  to_QuantityUnitValueHelp : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_UnitOfMeasure {  };
  to_SerialNumberProfile : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_SerialNumberProfile {  };
  to_StandardHandlingUnitType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_HandlingUnitType {  };
  to_TimeUnitForQuarantinePeriod : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_UnitOfMeasure {  };
  to_UnitForMaxPackaging : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_UnitOfMeasure {  };
  to_WarehouseProductGroup : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_WarehouseMaterialGroup {  };
  to_WarehouseStorageCondition : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_WhseStorageCondition {  };
  to_WeightUnitValueHelp : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_UnitOfMeasure {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Tipo categoria di prodotto'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductCategory {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductCategory_Text'
  @sap.label : 'Categoria prodotto'
  @sap.quickinfo : 'Categoria di prodotto'
  key ProductCategory : String(2) not null;
  @sap.label : 'Testo per categoria di prodotto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductCategory_Text : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Gruppo di prodotti'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductGroup_2 {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductGroup_Text'
  @sap.label : 'Gruppo di prodotti'
  key ProductGroup : String(9) not null;
  @sap.label : 'Descrizione gruppo di prodotti'
  @sap.quickinfo : 'Descrizione gruppo prodotti'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductGroup_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Classe di valor.'
  ValuationClass : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ch. valori acquisto'
  @sap.quickinfo : 'Chiave valori d''acquisto'
  PurchasingAcknProfile : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Gerarchia prodotti'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductHierarchy {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductHierarchy_Text'
  @sap.label : 'Gerarchia prodotti'
  key ProductHierarchy : String(18) not null;
  @sap.label : 'Testo per gerarchia prodotti'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductHierarchy_Text : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Numero del livello'
  @sap.quickinfo : 'Numero del livello nella gerarchia dei prodotti'
  ProductHierarchyLevel : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Profilo di pianificazione della produzione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductionSchedulingProfile {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductionSchedulingProfile_Text'
  @sap.label : 'Profilo di pianificazione produzione'
  @sap.quickinfo : 'Profilo di pianificazione della produzione'
  key ProductionSchedulingProfile : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.label : 'Nome profilo sched.'
  @sap.quickinfo : 'Descrizione del profilo di controllo della produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductionSchedulingProfile_Text : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Categoria ordine'
  @sap.quickinfo : 'Categoria dell''ordine'
  OrderCategory : String(2);
  @sap.label : 'EM automatica'
  @sap.quickinfo : 'Codice: registrare entrata merci automatica'
  GRIsPostedAutomatically : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reg. sincr. in ubic.'
  @sap.quickinfo : 'Registrazione sincrona del movimento merci per EWM'
  MfgOrderEWMSynchronousPosting : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.addressable : 'false'
@sap.content.version : '1'
@sap.label : 'Responsabile della schedulazione della produzione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductionSupervisor {
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Divisione'
  @sap.value.list : 'standard'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductionSupervisorName'
  @sap.label : 'Responsabile di produzione'
  key ProductionSupervisor : String(3) not null;
  @sap.label : 'Nome resp. prod.'
  @sap.quickinfo : 'Nome responsabile produzione'
  ProductionSupervisorName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ProductionSchedulingProfile/ProductionSchedulingProfile_Text'
  @sap.label : 'Profilo di pianificazione produzione'
  @sap.quickinfo : 'Profilo di pianificazione della produzione'
  @sap.value.list : 'standard'
  ProductionSchedulingProfile : String(6);
  to_Plant : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Plant {  };
  to_ProductionSchedulingProfile : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ProductionSchedulingProfile {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Area approvv. prod.'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductionSupplyArea {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductionSupplyArea_Text'
  @sap.label : 'Area di approvvigionamento produzione'
  key ProductionSupplyArea : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Divisione'
  @sap.value.list : 'standard'
  key Plant : String(4) not null;
  @sap.label : 'Nome area di approvvigionamento prod.'
  @sap.quickinfo : 'Nome area di approvvigionamento della produzione'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductionSupplyArea_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_StorageLocation/StorageLocationName'
  @sap.label : 'Magazzino'
  @sap.value.list : 'standard'
  StorageLocation : String(4);
  @sap.label : 'Punto di scarico'
  UnloadingPointName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ind. area approvvig.'
  @sap.quickinfo : 'Indirizzo per area approvvigionamento'
  AddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ResponsiblePerson/MRPControllerName'
  @sap.label : 'Responsabile'
  @sap.quickinfo : 'Responsabile di una o più aree di approvv. produzione'
  ProductionSupplyAreaRespPerson : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calendario fabbrica'
  @sap.quickinfo : 'Chiave calendario di fabbrica'
  FactoryCalendar : String(2);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ShiftGrouping/ShiftGrouping_Text'
  @sap.label : 'Raggr. (cons.)'
  @sap.quickinfo : 'Raggruppamento per def. e programma del turno (consumatore)'
  @sap.value.list : 'standard'
  ShiftGrouping : String(2);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ShiftSequence/ShiftSequence_Text'
  @sap.label : 'Progr.turni (cons.)'
  @sap.quickinfo : 'Chiave per sequenza turni (consumatore)'
  @sap.value.list : 'standard'
  ShiftSequence : String(4);
  @sap.label : 'Int. pull [gg.]'
  @sap.quickinfo : 'Intervallo di pull in giorni lavorativi'
  PullIntervalInWorkdays : Decimal(3, 0);
  @sap.label : 'Int. pull [h:min]'
  @sap.quickinfo : 'Indicatore intervallo di pull in ore e minuti'
  PullIntervalInHoursAndMinutes : Decimal(11, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'P.scarico(Aut.)'
  @sap.quickinfo : 'Punto di scarico (Automotive)'
  UnloadingWarehouseStagingArea : String(10);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Ultima modifica'
  @sap.quickinfo : 'Timestamp dell''ultima modifica'
  LastChangeDateTime : Timestamp;
  @sap.label : 'Punto di carico'
  AutomotiveLoadingPoint : String(20);
  to_Plant : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Plant {  };
  to_ResponsiblePerson : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_MRPController {  };
  to_ShiftGrouping : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ShiftGrouping {  };
  to_ShiftSequence : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ShiftSequence {  };
  to_StorageLocation : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_StorageLocation {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Stato prodotto valido per tutte le divisioni'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductStatus {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Status_Text'
  @sap.label : 'Stato prodotto'
  @sap.quickinfo : 'Stato del prodotto spec. della divisione'
  key Status : String(2) not null;
  @sap.label : 'Tst st. val. tutte div.'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Status_Text : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Help valori per prodotto'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Product_Text'
  @sap.label : 'Prodotto'
  @sap.quickinfo : 'Codice prodotto'
  key Product : String(40) not null;
  @sap.label : 'Descrizione prodotto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Product_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID prodotto esterno'
  @sap.quickinfo : 'Rappresentazione esterna del codice materiale'
  ProductExternalID : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Tipo di prodotto'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Producttype {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductType_Text'
  @sap.label : 'Tipo di prodotto'
  key ProductType : String(4) not null;
  @sap.label : 'Descrizione tipo di prodotto'
  @sap.quickinfo : 'Descrizione del tipo di prodotto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductType_Text : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo tipi prodotto'
  ProductTypeCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grp. autorizzazione'
  @sap.quickinfo : 'Gruppo autorizzazione nell''anagrafica materiale'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato aggiornamento'
  MaintenanceStatus : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo mater. modello'
  @sap.quickinfo : 'Tipo materiale modello'
  ReferenceProductType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rif. classi conto'
  @sap.quickinfo : 'Riferimento classi conto'
  AcctCategoryRef : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Profit center'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProfitCenterStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProfitCenter_Text'
  @sap.label : 'Profit center'
  key ProfitCenter : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Fine validità'
  @sap.quickinfo : 'Data di fine validità'
  key ValidityEndDate : Date not null;
  @sap.label : 'Nome profit center'
  @sap.quickinfo : 'Descrizione del profit center'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProfitCenter_Text : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio validità'
  ValidityStartDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Documento d''acquisto'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_PurchasingDocument {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Documento d''acquisto'
  @sap.quickinfo : 'Numero del documento acquisti'
  key PurchasingDocument : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cat. documento acq.'
  @sap.quickinfo : 'Categoria documento d''acquisto'
  PurchasingDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo doc. d''acquisto'
  @sap.quickinfo : 'Tipo di documento d''acquisto'
  PurchasingDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd. controllo'
  @sap.quickinfo : 'Cd. controllo per tipo documento acquisti'
  PurchasingDocumentSubtype : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Società'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice canc.'
  @sap.quickinfo : 'Indicatore di cancellazione nel documento acquisti'
  PurchasingDocumentDeletionCode : String(1);
  @sap.label : 'Eseguito aging doc.'
  @sap.quickinfo : 'Eseguito aging del documento'
  PurchasingDocumentIsAged : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int.numero posizioni'
  @sap.quickinfo : 'Intervallo numero posizioni'
  ItemNumberInterval : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Intervallo sottopos.'
  @sap.quickinfo : 'Intervallo posizione per sottoposizioni'
  ItemNumberIntervalForSubItems : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato'
  @sap.quickinfo : 'Stato del doc. d''acquisto'
  PurchasingDocumentOrigin : String(1);
  @sap.label : 'Rilevante per ril.'
  @sap.quickinfo : 'Rilascio incompleto'
  ReleaseIsNotCompleted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Indicatore rilascio'
  @sap.quickinfo : 'Indicatore di rilascio documento acquisti'
  ReleaseCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Strat. rilascio'
  @sap.quickinfo : 'Strategia di rilascio'
  PurchasingReleaseStrategy : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato rilascio'
  @sap.quickinfo : 'Stato di rilascio'
  PurgReleaseSequenceStatus : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'P/R dich. imp.'
  @sap.quickinfo : 'Paese/regione per dichiarazione imposte'
  TaxReturnCountry : String(3);
  @sap.display.format : 'Date'
  @sap.label : 'Data di creazione'
  @sap.quickinfo : 'Data di creazione del documento d''acquisto'
  CreationDate : Date;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Ultima modifica'
  @sap.quickinfo : 'Timestamp di modifica'
  LastChangeDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autore creazione'
  @sap.quickinfo : 'Utente della persona che ha creato un documento d''acquisto'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornitore'
  Supplier : String(10);
  @sap.label : 'Venditore'
  @sap.quickinfo : 'Responsabile vendite presso il fornitore'
  SupplierRespSalesPersonName : String(30);
  @sap.label : 'Telefono'
  @sap.quickinfo : 'Numero di telefono del fornitore'
  SupplierPhoneNumber : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice indirizzo'
  SupplierAddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice indirizzo'
  ManualSupplierAddressID : String(10);
  @sap.label : 'Vs. rif.'
  @sap.quickinfo : 'Vs.Riferimento'
  CorrespncExternalReference : String(12);
  @sap.label : 'Il ns. riferimento'
  @sap.quickinfo : 'Il ns. rif.'
  CorrespncInternalReference : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Org. acquisti'
  @sap.quickinfo : 'Organizzazione acquisti'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo acquisti'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Chiave divisa'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.label : 'Tasso di cambio'
  ExchangeRate : Decimal(9, 5);
  @sap.display.format : 'Date'
  @sap.label : 'Data documento'
  @sap.quickinfo : 'Data del documento acquisto'
  PurchasingDocumentOrderDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornitore merci'
  SupplyingSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Div. fornitrice'
  @sap.quickinfo : 'Divisione fornitrice nell''ordine di trasporto'
  SupplyingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Emittente fattura'
  @sap.quickinfo : 'Creditore differente'
  InvoicingParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Codice cliente'
  Customer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contratto quadro'
  @sap.quickinfo : 'Numero del contratto superiore'
  PurchaseContract : String(10);
  @sap.label : 'Chiave lingua'
  Language : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Causa del rifiuto'
  PurgReasonForDocCancellation : String(2);
  @sap.label : 'Incompleto'
  @sap.quickinfo : 'Ordine d''acquisto non ancora completo'
  PurchasingCompletenessStatus : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (parte 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms parte 2'
  IncotermsTransferLocation : String(28);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condizioni di pag.'
  @sap.quickinfo : 'Chiave delle condizioni di pagamento'
  PaymentTerms : String(4);
  @sap.label : 'Giorni 1'
  @sap.quickinfo : 'Sconto giorni 1'
  CashDiscount1Days : Decimal(3, 0);
  @sap.label : 'Giorni 2'
  @sap.quickinfo : 'Sconto giorni 2'
  CashDiscount2Days : Decimal(3, 0);
  @sap.label : 'Giorni al netto'
  @sap.quickinfo : 'Data di scadenza per le condizioni al netto'
  NetPaymentDays : Decimal(3, 0);
  @sap.label : 'Percentuale sconto 1'
  CashDiscount1Percent : Decimal(5, 3);
  @sap.label : 'Percentuale sconto 2'
  CashDiscount2Percent : Decimal(5, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Schema'
  @sap.quickinfo : 'Schema (determinazione prezzi, output, det. conti,...)'
  PricingProcedure : String(6);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Valore previsto'
  @sap.quickinfo : 'Valore previsto area testata per distribuzione'
  TargetAmount : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo distribuzione'
  @sap.quickinfo : 'Tipo di distribuzione per documento d''acquisto'
  PurgDocumentDistributionType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'N. cond. documento'
  @sap.quickinfo : 'Numero della condizione del documento'
  PurchasingDocumentCondition : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Inizio validità'
  ValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Fine validità'
  ValidityEndDate : Date;
  @sap.label : 'Doc.rel.ord.di cons.'
  @sap.quickinfo : 'Codice per la document. dell''ordine di cons. a richiesta'
  ScheduleAgreementHasReleaseDoc : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Scadenza offerta'
  @sap.quickinfo : 'Termine ultimo per la presentazione dell''offerta'
  QuotationLatestSubmissionDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Periodo vincolante'
  @sap.quickinfo : 'Periodo vincolante offerta'
  BindingPeriodValidityEndDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Data dell''offerta'
  @sap.quickinfo : 'Data di consegna dell''offerta'
  QuotationSubmissionDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Offerta'
  @sap.quickinfo : 'Numero offerta'
  SupplierQuotationExternalID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rich. appalto'
  @sap.quickinfo : 'Numero di appalto'
  RequestForQuotation : String(10);
  @sap.label : 'Tasso cambio fisso'
  @sap.quickinfo : 'Indicatore per tasso di cambio fisso'
  ExchangeRateIsFixed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Versione Incoterms'
  IncotermsVersion : String(4);
  @sap.label : 'Ubic. Incoterms 1'
  @sap.quickinfo : 'Ubicazione Incoterms 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Ubic. Incoterms 2'
  @sap.quickinfo : 'Ubicazione Incoterms 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato elab.'
  @sap.quickinfo : 'Stato di elaborazione documento d''acquisto'
  PurchasingProcessingStatus : String(2);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Val.tot. ril.'
  @sap.quickinfo : 'Valore totale durante rilascio'
  PurgReleaseTimeTotalAmount : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Anticipo'
  @sap.quickinfo : 'Indicatore anticipo'
  DownPaymentType : String(4);
  @sap.label : 'Perc. acconto'
  @sap.quickinfo : 'Percentuale di acconto'
  DownPaymentPercentageOfTotAmt : Decimal(5, 2);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Importo acconto'
  @sap.quickinfo : 'Importo dell''acconto nella divisa documento'
  DownPaymentAmount : Decimal(12, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Data di scad.acconto'
  @sap.quickinfo : 'Data di scadenza dell''acconto'
  DownPaymentDueDate : Date;
  @sap.label : 'Nome doc. d''acquisto'
  @sap.quickinfo : 'Nome del documento d''acquisto'
  PurchasingDocumentName : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Data inizio offerta'
  @sap.quickinfo : 'La data relativa alle offerte può essere inoltrata'
  QuotationEarliestSubmsnDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Scadenza candidature'
  LatestRegistrationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cat. doc. successivo'
  @sap.quickinfo : 'Categoria documento d''acquisto successivo'
  FollowOnDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tp. doc. successivo'
  @sap.quickinfo : 'Tipo documento di acquisto successivo'
  FollowOnDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partita IVA'
  @sap.quickinfo : 'Partita IVA comunitaria'
  VATRegistration : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'P/Reg. partita IVA'
  @sap.quickinfo : 'Paese/regione della partita IVA'
  VATRegistrationCountry : String(3);
  @sap.label : 'Rilevanza Intrastat'
  @sap.quickinfo : 'Rilevante per dichiazione Intrastat'
  IsIntrastatReportingRelevant : Boolean;
  @sap.label : 'Esclusione Intrastat'
  @sap.quickinfo : 'Esclud. da dichiarazione Intrastat'
  IsIntrastatReportingExcluded : Boolean;
  @sap.label : 'Scopo comm. concluso'
  @sap.quickinfo : 'Scopo commerciale concluso'
  IsEndOfPurposeBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID doc. sovraord.'
  @sap.quickinfo : 'ID del documento sovraordinato'
  PurchasingParentDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID raggruppamento'
  @sap.quickinfo : 'ID raggruppamento per società'
  ProcmtHubCompanyCodeGroupingID : String(3);
  @sap.label : 'Spese Spedizione'
  @sap.quickinfo : 'Indicatore per l''addebito delle spese di spedizione'
  ShipFee : Boolean;
  @sap.label : 'spedizione con acc'
  @sap.quickinfo : 'Indicatore spedizione con accessori'
  ShipAccWithGoods : Boolean;
  @sap.label : 'Conforme GB 18401'
  @sap.quickinfo : 'Indicatore di conformità allo standard GB 18401'
  GB18401 : Boolean;
  @sap.label : 'Spedire in Italia'
  @sap.quickinfo : 'Indicatore per inviare l''ordine in Italia'
  SendToItaly : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID Ordine di Serv.'
  @sap.quickinfo : 'ID Ordine di Servizio'
  StagingOrderID : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Posizione del documento d''acquisto'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_PurchasingDocumentItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Documento d''acquisto'
  @sap.quickinfo : 'Numero del documento acquisti'
  key PurchasingDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Posizione'
  @sap.quickinfo : 'Numero posizione documento d''acquisto'
  key PurchasingDocumentItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posizione documento'
  @sap.quickinfo : 'Concatenazione di EBELN e EBELP'
  PurchasingDocumentItemUniqueID : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cat. doc. acquisti'
  @sap.quickinfo : 'Categoria documento acquisti'
  PurchasingDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice canc.'
  @sap.quickinfo : 'Indicatore di cancellazione nel documento acquisti'
  PurchasingDocumentDeletionCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Codice materiale'
  Material : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd. mat. fornitore'
  @sap.quickinfo : 'Codice materiale utilizzato dal fornitore'
  SupplierMaterialNumber : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Cd. materiale'
  ManufacturerMaterial : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cod. comp. costr.'
  @sap.quickinfo : 'Codice componente costruttore'
  ManufacturerPartNmbr : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costruttore'
  @sap.quickinfo : 'Numero di un costruttore'
  Manufacturer : String(10);
  @sap.label : 'Testo breve'
  PurchasingDocumentItemText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Società'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Div.'
  @sap.quickinfo : 'Divisione'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Indirizzo'
  @sap.quickinfo : 'Numero indirizzo manuale in posizione documento d''acquisto'
  ManualDeliveryAddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Indir.'
  @sap.quickinfo : 'Numero indirizzo consegna'
  ReferenceDeliveryAddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  Customer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Fornitore, destinatario della consegna'
  Subcontractor : String(10);
  @sap.label : 'Forn. lav. esterna'
  @sap.quickinfo : 'Fornitore lavorazione esterna'
  SupplierIsSubcontractor : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mat. config. gen.'
  @sap.quickinfo : 'Materiale configurabile gen.'
  CrossPlantConfigurableProduct : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Categoria materiale'
  ArticleCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Approvv. produzione'
  @sap.quickinfo : 'Tipo di approvvigionamento produzione'
  PlndOrderReplnmtElmntType : String(1);
  @sap.label : 'Unità punti'
  @sap.semantics : 'unit-of-measure'
  ProductPurchasePointsQtyUnit : String(3);
  @sap.unit : 'ProductPurchasePointsQtyUnit'
  @sap.label : 'Punti'
  @sap.quickinfo : 'N. punt.'
  ProductPurchasePointsQty : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Magazzino'
  StorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo merci'
  MaterialGroup : String(9);
  @sap.label : 'UM ordine d''acquisto'
  @sap.quickinfo : 'UM dell''ordine d''acquisto'
  @sap.semantics : 'unit-of-measure'
  OrderQuantityUnit : String(3);
  @sap.label : 'Corrisponde a'
  @sap.quickinfo : 'Contatore per la conversione da UM ORDACQ in UM di base'
  OrderItemQtyToBaseQtyNmrtr : Decimal(5, 0);
  @sap.label : 'Denominatore'
  @sap.quickinfo : 'Denominatore per la conversione da UM ord.acq. in UM di base'
  OrderItemQtyToBaseQtyDnmntr : Decimal(5, 0);
  @sap.unit : 'OrderPriceUnit'
  @sap.label : 'Unità di prezzo'
  NetPriceQuantity : Decimal(5, 0);
  @sap.label : 'Consegna completata'
  @sap.quickinfo : 'Codice di consegna finale'
  IsCompletelyDelivered : Boolean;
  @sap.label : 'Fattura finale'
  @sap.quickinfo : 'Codice fattura finale'
  IsFinallyInvoiced : Boolean;
  @sap.label : 'Entrata merci'
  @sap.quickinfo : 'Codice entrata merci'
  GoodsReceiptIsExpected : Boolean;
  @sap.label : 'Entrata fattura'
  @sap.quickinfo : 'Codice entrata fattura'
  InvoiceIsExpected : Boolean;
  @sap.label : 'Cons.finale'
  @sap.quickinfo : 'Codice consegna finale'
  OutwardDeliveryIsComplete : Boolean;
  @sap.label : 'Contr. fatt. rif. EM'
  @sap.quickinfo : 'Codice per controllo fattura rif. all''EM'
  InvoiceIsGoodsReceiptBased : Boolean;
  @sap.label : 'EM non valutata'
  @sap.quickinfo : 'Entrata merci non valutata'
  GoodsReceiptIsNonValuated : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Richiesta d''acquisto'
  @sap.quickinfo : 'Numero della richiesta d''acquisto'
  PurchaseRequisition : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Pos. rich. acq.'
  @sap.quickinfo : 'Numero posizione della richiesta d''acquisto'
  PurchaseRequisitionItem : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Numero pacchetto'
  ServicePackage : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Prestatore servizi'
  @sap.quickinfo : 'Prestatore di servizi'
  ServicePerformer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo tipi prodotto'
  ProductType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di materiale'
  MaterialType : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Pos. contratto'
  @sap.quickinfo : 'Numero pos. contratto superiore'
  PurchaseContractItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contratto quadro'
  @sap.quickinfo : 'Numero del contratto superiore'
  PurchaseContract : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rich. di offerta'
  @sap.quickinfo : 'Identificatore richiesta di offerta'
  RequestForQuotation : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'N. posizione per RdO'
  @sap.quickinfo : 'Numero posizione per richiesta di offerta'
  RequestForQuotationItem : String(5);
  @sap.label : 'Liq. autom. EM'
  @sap.quickinfo : 'Liquidazione automatica dell''entrata merci'
  EvaldRcptSettlmtIsAllowed : Boolean;
  @sap.label : 'Cons. eccesso ill.'
  @sap.quickinfo : 'Consegna in eccesso illimitata ammessa'
  UnlimitedOverdeliveryIsAllowed : Boolean;
  @sap.label : 'Toll. cons. in ecc.'
  @sap.quickinfo : 'Tolleranza consegna in eccesso'
  OverdelivTolrtdLmtRatioInPct : Decimal(3, 1);
  @sap.label : 'Toll. cons. in dif.'
  @sap.quickinfo : 'Tolleranza consegna in difetto'
  UnderdelivTolrtdLmtRatioInPct : Decimal(3, 1);
  @sap.label : 'Richiedente'
  @sap.quickinfo : 'Nome del richiedente'
  RequisitionerName : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Area pian. MRP'
  MRPArea : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (parte 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms parte 2'
  IncotermsTransferLocation : String(28);
  @sap.label : 'Ubic. Incoterms 1'
  @sap.quickinfo : 'Ubicazione Incoterms 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Ubic. Incoterms 2'
  @sap.quickinfo : 'Ubicazione Incoterms 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornitore precedente'
  PriorSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd. EAN/UPC'
  @sap.quickinfo : 'Codice europeo articoli (EAN)'
  InternationalArticleNumber : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controllo conferma'
  @sap.quickinfo : 'Chiave di controllo conferma'
  SupplierConfirmationControlKey : String(4);
  @sap.label : 'Stampa prezzo'
  PriceIsToBePrinted : Boolean;
  @sap.label : 'Unità misura base'
  @sap.quickinfo : 'Unità di misura di base'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di posizione'
  @sap.quickinfo : 'Tipo posizione nel doc. d''acquisto'
  PurchasingDocumentItemCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit center'
  ProfitCenter : String(10);
  @sap.label : 'UM prz. ord. acq.'
  @sap.quickinfo : 'Unità di misura del prezzo dell''ordine d''acquisto (acquisti)'
  @sap.semantics : 'unit-of-measure'
  OrderPriceUnit : String(3);
  @sap.label : 'Unità di volume'
  @sap.semantics : 'unit-of-measure'
  VolumeUnit : String(3);
  @sap.label : 'Unità di peso'
  @sap.semantics : 'unit-of-measure'
  WeightUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd. distribuzione'
  @sap.quickinfo : 'Codice distribuzione per contab. multipla'
  MultipleAcctAssgmtDistribution : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fattura parziale'
  @sap.quickinfo : 'Codice fattura parziale'
  PartialInvoiceDistribution : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contr. data prezzo'
  @sap.quickinfo : 'Controllo data det. prezzo'
  PricingDateControl : String(1);
  @sap.label : 'Statist.'
  @sap.quickinfo : 'La posizione ha carattere statistico'
  IsStatisticalItem : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Posizione superiore'
  @sap.quickinfo : 'Posizione superiore nei documenti d''acquisto'
  PurchasingParentItem : String(5);
  @sap.display.format : 'Date'
  @sap.label : 'Ultima data EM'
  @sap.quickinfo : 'Ultima entrata merci ammessa'
  GoodsReceiptLatestCreationDate : Date;
  @sap.label : 'Pos. resi'
  IsReturnsItem : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Causa ordine acq.'
  @sap.quickinfo : 'Causa ordine d''acquisto'
  PurchasingOrderReason : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cat. contabil.'
  @sap.quickinfo : 'Categoria di contabilizzazione'
  AccountAssignmentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Record info acquisti'
  @sap.quickinfo : 'Numero del record info acquisti'
  PurchasingInfoRecord : String(10);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Val. netto ord. acq.'
  @sap.quickinfo : 'Valore ordine netto in divisa ordine d''acquisto'
  NetAmount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Val. lordo ord.acq.'
  @sap.quickinfo : 'Val. lordo ord.acq. in divisa ord. acq.'
  GrossAmount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Valore effettivo'
  @sap.quickinfo : 'Valore effettivo della posizione'
  EffectiveAmount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Totale parziale 1'
  @sap.quickinfo : 'Tot. parz. 1 da schema det. prezzo per elemento del prezzo'
  Subtotal1Amount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Totale parziale 2'
  @sap.quickinfo : 'Totale parziale 2 da schema di calcolo per eleemnto prezzo'
  Subtotal2Amount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Totale parziale 3'
  @sap.quickinfo : 'Totale parziale 3 da schema di calcolo per elemento prezzo'
  Subtotal3Amount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Totale parziale 4'
  @sap.quickinfo : 'Totale parziale 4 da schema di calcolo per elemento prezzo'
  Subtotal4Amount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Totale parziale 5'
  @sap.quickinfo : 'Totale parziale 5 da schema di calcolo per elemento prezzo'
  Subtotal5Amount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Totale parziale 6'
  @sap.quickinfo : 'Totale parziale 6 da schema di calcolo per elemento prezzi'
  Subtotal6Amount : Decimal(14, 3);
  @sap.unit : 'OrderQuantityUnit'
  @sap.label : 'Qtà prevista'
  @sap.quickinfo : 'Qtà prev.'
  TargetQuantity : Decimal(13, 3);
  @sap.unit : 'OrderQuantityUnit'
  @sap.label : 'Qtà ordine acquisto'
  OrderQuantity : Decimal(13, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Prezzo netto ordine'
  @sap.quickinfo : 'Prezzo netto nel documento d''acquisto (in divisa documento)'
  NetPriceAmount : Decimal(12, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Val.prev.contr.quad.'
  @sap.quickinfo : 'Valore previsto per contratto quadro in divisa documento'
  TargetAmount : Decimal(14, 3);
  @sap.unit : 'VolumeUnit'
  @sap.label : 'Volume'
  ItemVolume : Decimal(13, 3);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Peso lordo'
  ItemGrossWeight : Decimal(13, 3);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Peso netto'
  ItemNetWeight : Decimal(13, 3);
  @sap.label : 'Conversione quantità'
  @sap.quickinfo : 'Contatore per la conversione da UM prz. ORDACQ in UMO'
  OrderPriceUnitToOrderUnitNmrtr : Decimal(5, 0);
  @sap.label : 'Conversione quantità'
  @sap.quickinfo : 'Denominatore per la conversione UM prz. ORDACQ in UM ORDACQ'
  OrdPriceUnitToOrderUnitDnmntr : Decimal(5, 0);
  @sap.display.format : 'Date'
  @sap.label : 'Data concordata'
  @sap.quickinfo : 'Data concordata per numero progressivo concordato'
  SchedAgrmtCumQtyReconcileDate : Date;
  @sap.unit : 'OrderQuantityUnit'
  @sap.label : 'Qtà acc.conc.'
  @sap.quickinfo : 'Quantità accumulata concordata'
  SchedAgrmtAgreedCumQty : Decimal(13, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Ult. trasf.'
  @sap.quickinfo : 'Ultimo trasf.'
  ItemLastTransmissionDate : Date;
  @sap.label : 'Periodo fisso 1'
  @sap.quickinfo : 'Primo periodo fisso'
  ScheduleLineFirmOrderInDays : Decimal(3, 0);
  @sap.label : 'Periodo fisso 2'
  @sap.quickinfo : 'Secondo periodo fisso'
  SchedLineSemiFirmOrderInDays : Decimal(3, 0);
  @sap.label : '1° soll.'
  @sap.quickinfo : 'Numero giorni per il primo sollecito'
  NoDaysReminder1 : Decimal(3, 0);
  @sap.label : '2° soll.'
  @sap.quickinfo : 'N. giorni per il secondo sollecito'
  NoDaysReminder2 : Decimal(3, 0);
  @sap.label : '3° soll.'
  @sap.quickinfo : 'N. giorni per il terzo sollecito'
  NoDaysReminder3 : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero fabbisogno'
  RequirementTracking : String(10);
  @sap.label : 'Obbligo conf.ordine'
  @sap.quickinfo : 'Obbligo di conferma ordine'
  IsOrderAcknRqd : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo stock'
  StockType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice IVA'
  TaxCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sede fiscale'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Norma di spedizione'
  ShippingInstruction : String(2);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Non detraibile'
  @sap.quickinfo : 'IVA acquisti non detraibile'
  NonDeductibleInputTaxAmount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo valorizzazione'
  @sap.quickinfo : 'Tipo di valutazione'
  ValuationType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cat. valorizzazione'
  @sap.quickinfo : 'Categoria di valorizzazione'
  ValuationCategory : String(1);
  @sap.label : 'Codice rifiuto'
  ItemIsRejectedBySupplier : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Data prezzo'
  @sap.quickinfo : 'Data della determinazione del prezzo'
  PurgDocPriceDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Agg. info'
  @sap.quickinfo : 'Indicatore: aggiornare record inf.'
  IsInfoRecordUpdated : String(1);
  @sap.unit : 'OrderQuantityUnit'
  @sap.label : 'Qtà ord.cons.stand.'
  @sap.quickinfo : 'Quantità ordine di consegna standard'
  PurgDocReleaseOrderQuantity : Decimal(13, 3);
  @sap.label : 'Conferma ordine'
  @sap.quickinfo : 'Numero conferma ordine'
  PurgDocOrderAcknNumber : String(20);
  @sap.label : 'Prezzo stimato'
  @sap.quickinfo : 'Codice prezzo stimato'
  PurgDocEstimatedPrice : Boolean;
  @sap.label : 'Info per reg.'
  @sap.quickinfo : 'Codice: azione per registrazione'
  IsInfoAtRegistration : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Assort. parz. forn.'
  @sap.quickinfo : 'Assortimento parziale fornitore'
  SupplierSubrange : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CdC'
  @sap.quickinfo : 'Centro di costo'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conto Co.Ge.'
  @sap.quickinfo : 'Numero del conto Co.Ge.'
  GLAccount : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Elem. WBS'
  @sap.quickinfo : 'Elemento della Work Breakdown Structure (elemento WBS)'
  WBSElementInternalID : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fondi'
  Fund : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Periodo budget'
  BudgetPeriod : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro resp.'
  @sap.quickinfo : 'Centro di responsabilità'
  FundsCenter : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pos. finanz.'
  @sap.quickinfo : 'Posizione finanziaria'
  CommitmentItem : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Area funzionale'
  FunctionalArea : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sovvenzione'
  GrantID : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fondi accantonati'
  @sap.quickinfo : 'Numero documento: fondi accantonati'
  EarmarkedFunds : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fondi accantonati'
  @sap.quickinfo : 'Numero documento: fondi accantonati'
  EarmarkedFundsDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Posizione documento'
  @sap.quickinfo : 'Posizione documento: fondi accantonati'
  EarmarkedFundsItem : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Posizione documento'
  @sap.quickinfo : 'Posizione documento: fondi accantonati'
  EarmarkedFundsDocumentItem : String(3);
  @sap.label : 'Tempo consegna pian.'
  @sap.quickinfo : 'Tempo di consegna pianificato in giorni'
  PlannedDeliveryDurationInDays : Decimal(3, 0);
  @sap.label : 'Tempo elab. EM'
  @sap.quickinfo : 'Tempo di elaborazione entrata merci (in giorni)'
  GoodsReceiptDurationInDays : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consegna parz./pos.'
  @sap.quickinfo : 'Consegna parziale a livello di posizione (trasf. stock)'
  PartialDeliveryIsAllowed : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consumo'
  @sap.quickinfo : 'Registrazione consumo'
  ConsumptionPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profilo creazione'
  @sap.quickinfo : 'Profilo creazione ord. cons.'
  SchedgAgrmtRelCreationProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Categoria controllo'
  @sap.quickinfo : 'Controllo delle quantità accumulate'
  SchedAgrmtCumulativeQtyControl : String(1);
  @sap.label : 'Ness. trasferim. QA'
  @sap.quickinfo : 'Nessun trasf. di qtà accumulate nell''ord. in base a PC'
  CumulativeQuantityIsNotSent : Boolean;
  @sap.label : 'Durata min. residua'
  MinRemainingShelfLife : Decimal(4, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Indic.per.data scad.'
  @sap.quickinfo : 'Indicatore periodo per data di scadenza'
  ShelfLifeExpirationDatePeriod : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave controllo QM'
  @sap.quickinfo : 'Chiave controllo p. Quality Management in approvvigionamento'
  QualityMgmtCtrlKey : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock speciale'
  @sap.quickinfo : 'Codice stock speciale'
  InventorySpecialStockType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consegna JIT'
  @sap.quickinfo : 'Piani di consegna JIT'
  IsRelevantForJITDelivSchedule : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'OrdConsDettSucc'
  @sap.quickinfo : 'Trasmissione succ. ord. di consegna con rich. a lungo term.'
  NextJITDelivSchedSendingDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'SchedConsPrSucc'
  @sap.quickinfo : 'Trasmissione succ. ord. di consegna con rich.a lungo term.'
  NextFcstDelivSchedSendingDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deb. per pian. MRP'
  @sap.quickinfo : 'Debito dei periodi di rilascio per la pianificazione MRP'
  FirmTradeOffZoneBindMRP : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di certificato'
  QualityCertificateType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Richiesta di offerta'
  @sap.quickinfo : 'N. richiesta di offerta'
  SupplierQuotation : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Posizione'
  @sap.quickinfo : 'N. posizione della richiesta di offerta'
  SupplierQuotationItem : String(5);
  @sap.label : 'Cod. serv. intrastat'
  @sap.quickinfo : 'Intrastat Service Code'
  IntrastatServiceCode : String(30);
  @sap.label : 'Codice merceologico'
  CommodityCode : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo consegna reso'
  @sap.quickinfo : 'Tipo di consegna per resi a fornitore'
  DeliveryDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gr.nolo mat.'
  @sap.quickinfo : 'Gruppo nolo materiale'
  MaterialFreightGroup : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sogg. sconto merce'
  @sap.quickinfo : 'Il materiale è soggetto allo sconto merce'
  DiscountInKindEligibility : String(1);
  @sap.label : 'Blocco spedizione'
  @sap.quickinfo : 'Posizione bloccata per consegna SD'
  PurgItemIsBlockedForDelivery : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mag. di provenienza'
  @sap.quickinfo : 'Magazzino di provenienza per ordine di trasf.'
  IssuingStorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tabella assegnazioni'
  AllocationTable : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Posizione'
  @sap.quickinfo : 'Posizione tabella assegnazioni'
  AllocationTableItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Promozione'
  RetailPromotion : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Anticipo'
  @sap.quickinfo : 'Indicatore anticipo'
  DownPaymentType : String(4);
  @sap.label : 'Perc. acconto'
  @sap.quickinfo : 'Percentuale di acconto'
  DownPaymentPercentageOfTotAmt : Decimal(5, 2);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Importo acconto'
  @sap.quickinfo : 'Importo dell''acconto nella divisa documento'
  DownPaymentAmount : Decimal(12, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Data di scad.acconto'
  @sap.quickinfo : 'Data di scadenza dell''acconto'
  DownPaymentDueDate : Date;
  @sap.label : 'Ora di creazione'
  @sap.quickinfo : 'Ora di creazione documento d''acquisto'
  CreationTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Dta creazione'
  @sap.quickinfo : 'Data creazione documento d''acquisto'
  CreationDate : Date;
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Valore previsto'
  @sap.quickinfo : 'Valore previsto del limite totale'
  ExpectedOverallLimitAmount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Limite totale'
  OverallLimitAmount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contratto per limite'
  @sap.quickinfo : 'Contratto di acquisto per limite ampliato'
  PurContractForOverallLimit : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Segmento fabbisogno'
  RequirementSegment : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Origine materiale'
  BR_MaterialOrigin : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Impiego materiale'
  BR_MaterialUsage : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cat. materiale CFOP'
  @sap.quickinfo : 'Categoria di materiale CFOP'
  BR_CFOPCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice NBM'
  @sap.quickinfo : 'Codice NBM - Brasile'
  BR_NCM : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice NBM'
  @sap.quickinfo : 'Codice NBM - Brasile'
  ConsumptionTaxCtrlCode : String(16);
  @sap.label : 'Produzione propria'
  BR_IsProducedInHouse : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Materiale del sistema esterno'
  PurchasingCentralMaterial : String(40);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Valore previsto pos.'
  @sap.quickinfo : 'Valore previsto a liv. posizione in hub approvvigionamento'
  PurgDocItmTargetAmount : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine rif. CRM'
  @sap.quickinfo : 'Numero ordine riferim. CRM per la gest. ord. in conto terzi'
  ThirdPtyOrdProcgExtReference : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'N. pos.rif. CRM'
  @sap.quickinfo : 'Numero pos. ord. rifer. CRM nella gest. ord. in conto terzi'
  ThirdPtyOrdProcgExtRefItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mot.blocco - ID'
  @sap.quickinfo : 'Motivo del blocco - Identificatore'
  PurgDocItmBlkRsnCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scopo comm. concluso'
  @sap.quickinfo : 'Scopo commerciale concluso'
  IsEndOfPurposeBlocked : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Chiave divisa'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo sottopos.'
  @sap.quickinfo : 'Tipo pos. sec. doc. d''acquisto'
  SubItemCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Esercizio stagionale'
  ProductSeasonYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stagione'
  ProductSeason : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Collezione'
  @sap.quickinfo : 'Collezione fashion'
  ProductCollection : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tema'
  @sap.quickinfo : 'Tema fashion'
  ProductTheme : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ind. compl. stagioni'
  @sap.quickinfo : 'Indicatore di completezza stagioni'
  SeasonCompletenessStatus : String(1);
  @sap.unit : 'OrderQuantityUnit'
  @sap.label : 'Quantità confermata'
  CommittedQuantity : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reg. di raggr. PSST'
  @sap.quickinfo : 'Regola di raggruppamento PSST'
  ShippingGroupRule : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo PSST'
  ShippingGroupNumber : String(10);
  @sap.label : 'Caratteristica 1'
  @sap.quickinfo : 'Definizione caratteristica 1'
  ProductCharacteristic1 : String(18);
  @sap.label : 'Caratteristica 2'
  @sap.quickinfo : 'Definizione caratteristica 2'
  ProductCharacteristic2 : String(18);
  @sap.label : 'Caratteristica 3'
  @sap.quickinfo : 'Definizione caratteristica 3'
  ProductCharacteristic3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato deviazione'
  @sap.quickinfo : 'Stato del processo di deviazione'
  DiversionStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Doc. di riferimento'
  @sap.quickinfo : 'Numero documento di riferimento per tracciabilità OdA'
  ReferenceDocumentNumber : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Pos. di rif.'
  @sap.quickinfo : 'Numero pos. riferimento per tracciabilità OdA'
  ReferenceDocumentItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Azione di rif.'
  @sap.quickinfo : 'Azione per tracciabilità in OdA'
  PurchaseOrderReferenceType : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Numero pos. schedulazione di riferim. per tracc. OdA'
  @sap.heading : ''
  ReferenceDocumentScheduleLine : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rilevante per VAS'
  ItemHasValueAddedService : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Posizione'
  @sap.quickinfo : 'Numero posizione documento d''acquisto'
  ValAddedSrvcParentItmNumber : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priorità fabbisogno'
  @sap.quickinfo : 'Priorità fabbisogno ARun'
  ARunPriorityValue : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priorità fabbisogno'
  @sap.quickinfo : 'Priorità gruppo fabbisogno ARun'
  ARunDemandGroupPriority : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Segmento di stock'
  StockSegment : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priorità DocumentoWS'
  @sap.quickinfo : 'Priorità Documento WS'
  ZZPRIORITY : String(5);
  @sap.display.format : 'Date'
  @sap.label : 'Data inzio c.Tema'
  @sap.quickinfo : 'WS - Data inzio consegnabilità tema'
  ZZTHDEL_ITEM_FROM : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commercial article'
  CommercialArticle : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cimossa articolo'
  @sap.quickinfo : 'Cimossa dell''articolo'
  CimossaID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Obbligo Cimossa'
  CimossaObligID : String(1);
  @sap.label : 'Quantità Ordinata 2'
  Quantity2 : Decimal(15, 3);
  @sap.label : 'Unita di Misura 2'
  @sap.semantics : 'unit-of-measure'
  UoM2 : String(3);
  @sap.label : 'Quantità Ordinata 3'
  Quantity3 : Decimal(15, 3);
  @sap.label : 'Unita di Misura 3'
  @sap.semantics : 'unit-of-measure'
  UoM3 : String(3);
  @sap.label : '% Conditioning'
  Conditioning : Decimal(12, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Data Consegna Rich.'
  @sap.quickinfo : 'Data Consegna Richiesta'
  RequiredDeliveryDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Qualità'
  QualityID : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ProgrammaCommerciale'
  @sap.quickinfo : 'Programma Commerciale'
  CommercialProgram : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posizione Item'
  @sap.quickinfo : 'Posizione Item nell''ordine'
  StagingItemID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dimensione Bunch'
  BunchDimension : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave Aritcolo 1'
  ArticleKey1 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave Articolo 2'
  ArticleKey2 : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ch. Articolo3'
  ArticleKey3 : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ch. Articolo4'
  @sap.quickinfo : 'Ch. Articolo 4'
  ArticleKey4 : String(8);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Gruppo acquisti'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_PurchasingGroup {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingGroupName'
  @sap.label : 'Gruppo acquisti'
  key PurchasingGroup : String(3) not null;
  @sap.label : 'Nome grp. acquisti'
  @sap.quickinfo : 'Nome gruppo acquisti'
  PurchasingGroupName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'N. tel. gr. acq.'
  @sap.quickinfo : 'Numero di telefono del gruppo acquisti (gruppo acquirenti)'
  PurchasingGroupPhoneNumber : String(12);
  @sap.label : 'Numero di fax'
  @sap.quickinfo : 'N. telefax del gruppo acquirenti'
  FaxNumber : String(31);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telefono'
  @sap.quickinfo : 'Numero di telefono: prefisso e numero'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Interno'
  @sap.quickinfo : 'Numero di telefono: interno'
  PhoneNumberExtension : String(10);
  @sap.label : 'Indir. e-mail'
  @sap.quickinfo : 'Indirizzo e-mail'
  EmailAddress : String(241);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Organizzazione acquisti'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_PurchasingOrganization {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingOrganizationName'
  @sap.label : 'Organizzazione acquisti'
  key PurchasingOrganization : String(4) not null;
  @sap.label : 'Nome org. acquisti'
  @sap.quickinfo : 'Nome organizzazione acquisti'
  PurchasingOrganizationName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Società'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Validità'
  @sap.quickinfo : 'Identificazione di inserimenti obsoleti'
  ConfigDeprecationCode : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Ubicazione destintario'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_RecipientLocationCode {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ubicazione destinatario'
  @sap.quickinfo : 'Codice ubicazione destinatario'
  key RecipientLocationCode : String(15) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Forma br. timestamp'
  @sap.quickinfo : 'Timestamp UTC in forma breve (AAAAMMGGhhmmss)'
  LastChangeDateTime : DateTime;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Tipo di record per documento impegni'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ReservationDocRecordType {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di record'
  key RecordType : String(1) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Testata documento impegni'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ReservationDocumentHeader {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Impegno'
  @sap.quickinfo : 'Numero dell''impegno / del fabbisogno dipendente'
  key Reservation : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cod. creazione imp.'
  @sap.quickinfo : 'Codice di creazione impegno'
  ReservationCreationCode : String(4);
  @sap.label : 'Origine'
  ReservationOrigin : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine'
  @sap.quickinfo : 'Numero ordine'
  @sap.value.list : 'standard'
  OrderID : String(12);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_GoodsMovementType/GoodsMovementType_Text'
  @sap.label : 'Tipo movimento'
  @sap.quickinfo : 'Tipo movimento (gestione stock)'
  @sap.value.list : 'standard'
  GoodsMovementType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_CostCenter/CostCenter_Text'
  @sap.label : 'CdC'
  @sap.quickinfo : 'Centro di costo'
  @sap.value.list : 'standard'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit center'
  ProfitCenter : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Segmento di profittabilità (obsoleto)'
  @sap.quickinfo : 'Obsoleto: segmento di profittabilità'
  ProfitabilitySegment : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Segmento di profittabilità'
  ProfitabilitySegment_2 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ControllingArea/ControllingAreaName'
  @sap.label : 'Controlling area'
  @sap.value.list : 'standard'
  ControllingArea : String(4);
  @sap.label : 'Destinatario merci'
  GoodsRecipientName : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Data di base'
  @sap.quickinfo : 'Data di base dell''impegno'
  ReservationDate : Date;
  @sap.label : 'Valutare il calend.'
  @sap.quickinfo : 'Controllare la data in base al calendario di fabbr.'
  IsCheckedAgainstFactoryCal : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Customer/CustomerName'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Numero conto cliente'
  @sap.value.list : 'standard'
  Customer : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Elem. WBS'
  @sap.quickinfo : 'Elemento della Work Breakdown Structure (elemento WBS)'
  WBSElementInternalID : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine di vendita'
  @sap.quickinfo : 'Numero ordine di vendita'
  SalesOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Pos. ordine cliente'
  @sap.quickinfo : 'Numero posizione nell''ordine cliente'
  SalesOrderItem : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sched. ord. cliente'
  @sap.quickinfo : 'Schedulazione ordine cliente'
  SalesOrderScheduleLine : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Allegato'
  @sap.quickinfo : 'Numero principale cespite'
  AssetNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero secondario'
  @sap.quickinfo : 'Numero secondario cespite'
  AssetSubNumber : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Network'
  @sap.quickinfo : 'Numero network per contabilizzazione'
  NetworkNumberForAcctAssgmt : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Div. di destinazione'
  @sap.quickinfo : 'Divisione di destinazione/di provenienza'
  IssuingOrReceivingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Magazzino dest.'
  @sap.quickinfo : 'Magazzino di destinazione/di provenienza'
  IssuingOrReceivingStorageLoc : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Soc. compens.'
  @sap.quickinfo : 'Società operante una compensazione'
  ResvnVerificationCompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome utente'
  @sap.quickinfo : 'Nome dell''utente'
  UserID : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Data di creazione'
  CreationDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autore modifica'
  @sap.quickinfo : 'Autore ultima modifica'
  LastChangedByUser : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Data dell''ultima modifica'
  LastChangeDateTime : Timestamp;
  to_ControllingArea : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ControllingArea {  };
  to_CostCenter : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_CostCenter {  };
  to_Customer : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Customer {  };
  to_GoodsMovementType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_GoodsMovementType {  };
  to_Order : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_LogisticsOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Posizione documento impegni'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ReservationDocumentItem {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Impegno'
  @sap.quickinfo : 'Numero dell''impegno / del fabbisogno dipendente'
  @sap.value.list : 'standard'
  key Reservation : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Posizione'
  @sap.quickinfo : 'Numero posizione dell''impegno / del fabbisogno dipendente'
  key ReservationItem : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di record'
  @sap.value.list : 'standard'
  key RecordType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Divisione'
  @sap.value.list : 'standard'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_StorageLocation/StorageLocationName'
  @sap.label : 'Magazzino'
  @sap.value.list : 'standard'
  StorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Product/Product_Text'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Codice materiale'
  @sap.value.list : 'standard'
  Product : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partita'
  @sap.quickinfo : 'Numero partita'
  Batch : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo valorizzazione'
  @sap.quickinfo : 'Tipo di valutazione'
  ValuationType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_InventorySpecialStockType/InventorySpecialStockType_Text'
  @sap.label : 'Stock speciale'
  @sap.quickinfo : 'Codice stock speciale'
  @sap.value.list : 'standard'
  InventorySpecialStockType : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'ID interno WBS'
  @sap.quickinfo : 'Elemento WBS'
  SpecialStockIdfgWBSElement : String(8);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_GoodsMovementType/GoodsMovementType_Text'
  @sap.label : 'Tipo movimento'
  @sap.quickinfo : 'Tipo movimento (gestione stock)'
  @sap.value.list : 'standard'
  GoodsMovementType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di fabbisogno'
  RequirementType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato impegno'
  @sap.quickinfo : 'Stato dell''impegno'
  ReservationItemCreationCode : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Data fabbisogno'
  @sap.quickinfo : 'Data fabbisogno del componente'
  MatlCompRequirementDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Numero operazione'
  ManufacturingOrderOperation : String(4);
  @sap.label : 'Movimento ammesso'
  @sap.quickinfo : 'Movimento merci ammesso per impegno'
  GoodsMovementIsAllowed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_DebitCreditCode/DebitCreditCode_Text'
  @sap.label : 'Indic. dare/avere'
  @sap.quickinfo : 'Indicatore dare/avere'
  @sap.value.list : 'fixed-values'
  DebitCreditCode : String(1);
  @sap.text : 'to_BaseUnit/UnitOfMeasure_Text'
  @sap.label : 'Unità misura base'
  @sap.quickinfo : 'Unità di misura di base'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conto Co.Ge.'
  @sap.quickinfo : 'Numero del conto Co.Ge.'
  GLAccount : String(10);
  @sap.label : 'Conto manuale'
  ResvnAccountIsEnteredManually : Boolean;
  @sap.text : 'to_EntryUnit/UnitOfMeasure_Text'
  @sap.label : 'UM acquisizione'
  @sap.quickinfo : 'Unità di misura di registrazione'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.label : 'La quantità è fissa'
  QuantityIsFixed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Currency/Currency_Text'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Chiave divisa'
  @sap.value.list : 'standard'
  @sap.semantics : 'currency-code'
  CompanyCodeCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_IssuingOrReceivingPlant/PlantName'
  @sap.label : 'Div. di destinazione'
  @sap.quickinfo : 'Divisione di destinazione/di provenienza'
  @sap.value.list : 'standard'
  IssuingOrReceivingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_IssuingOrReceivingStorageLoc/StorageLocationName'
  @sap.label : 'Magazzino dest.'
  @sap.quickinfo : 'Magazzino di destinazione/di provenienza'
  @sap.value.list : 'standard'
  IssuingOrReceivingStorageLoc : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Documento d''acquisto'
  @sap.quickinfo : 'Numero del documento acquisti'
  @sap.value.list : 'standard'
  PurchasingDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Posizione'
  @sap.quickinfo : 'Numero posizione documento d''acquisto'
  @sap.value.list : 'standard'
  PurchasingDocumentItem : String(5);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantità fabbisogno'
  ResvnItmRequiredQtyInBaseUnit : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Qtà per contr. disp.'
  @sap.quickinfo : 'Quantità confermata per contr. disponibilità in UMM'
  ConfdQtyForATPInBaseUoM : Decimal(15, 3);
  @sap.label : 'Prel. fin.'
  @sap.quickinfo : 'Prelievo finale dell''impegno'
  ReservationItemIsFinallyIssued : Boolean;
  @sap.label : 'Posizione cancellata'
  ReservationItmIsMarkedForDeltn : Boolean;
  @sap.unit : 'EntryUnit'
  @sap.label : 'Qtà in UM acq.'
  @sap.quickinfo : 'Quantità in unità di misura di acquisizione'
  ResvnItmRequiredQtyInEntryUnit : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantità prelevata'
  ResvnItmWithdrawnQtyInBaseUnit : Decimal(13, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Valore prelevato'
  ResvnItmWithdrawnAmtInCCCrcy : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Supplier/SupplierName'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  @sap.value.list : 'standard'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo merci'
  MaterialGroup : String(9);
  @sap.label : 'Approvv. diretto'
  @sap.quickinfo : 'Codice approvv. diretto'
  MaterialCompIsProcuredDirectly : Boolean;
  @sap.label : 'Destinatario merci'
  GoodsRecipientName : String(12);
  @sap.label : 'Punto di scarico'
  UnloadingPointName : String(25);
  @sap.label : 'Testo'
  @sap.quickinfo : 'Testo posizione'
  ReservationItemText : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ubicazione destinatario'
  @sap.quickinfo : 'Codice ubicazione destinatario'
  @sap.value.list : 'standard'
  RecipientLocationCode : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di oggetto'
  ServiceObjectType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operazione'
  ServiceDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'N. pos nel documento'
  @sap.quickinfo : 'Numero posizione abbreviato nel documento'
  ServiceDocumentItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo doc. servizio'
  @sap.quickinfo : 'Tipo documento di servizio'
  ResvnItmSrvcDocTypeAsAcctAsgt : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Doc. dei servizi'
  @sap.quickinfo : 'ID documento dei servizi'
  ResvnItmSrvcDocAsAcctAsgt : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Pos. doc. servizio'
  @sap.quickinfo : 'ID posizione documento di servizio'
  ResvnItmSrvcDocItmAsAcctAsgt : String(6);
  to_BaseUnit : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_UnitOfMeasure {  };
  to_Currency : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Currency {  };
  to_DebitCreditCode : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_DebitCreditCode {  };
  to_EntryUnit : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_UnitOfMeasure {  };
  to_GoodsMovementType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_GoodsMovementType {  };
  to_InventorySpecialStockType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_InventorySpecialStockType {  };
  to_IssuingOrReceivingPlant : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Plant {  };
  to_IssuingOrReceivingStorageLoc : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_StorageLocation {  };
  to_Plant : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Plant {  };
  to_Product : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Product {  };
  to_PurchasingDocument : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_PurchasingDocument {  };
  to_PurchasingDocumentItem : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_PurchasingDocumentItem {  };
  to_RecipientLocationCode : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_RecipientLocationCode {  };
  to_ReservationDocRecordType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ReservationDocRecordType {  };
  to_ReservationDocumentHeader : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ReservationDocumentHeader {  };
  to_StorageLocation : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_StorageLocation {  };
  to_Supplier : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Supplier {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Gruppo pianificatori responsabili'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ResponsiblePlannerGroup {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ResponsiblePlannerGroupName'
  @sap.label : 'Gr. resp. pian.'
  @sap.quickinfo : 'Gruppo di responsabili della pianificazione o reparto'
  key ResponsiblePlannerGroup : String(3) not null;
  @sap.label : 'Descr.gr.resp.pian.'
  @sap.quickinfo : 'Descrizione gruppo responsabili pianificazione'
  ResponsiblePlannerGroupName : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Categoria di contabilizzazione'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ResvnAcctAssgmtCategory {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ResvnAcctAssgmtCategory_Text'
  @sap.label : 'Tipo impegno'
  @sap.quickinfo : 'Contabilizzazione dell''impegno'
  key ResvnAcctAssgmtCategory : String(1) not null;
  @sap.label : 'Nm. categoria'
  @sap.quickinfo : 'Nome della categoria di contabilizzazione per doc. impegni'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ResvnAcctAssgmtCategory_Text : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Posizione dell''ordine di vendita'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_SalesOrderItemStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine cliente'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.text : 'SalesOrderItemText'
  @sap.label : 'Posizione'
  @sap.quickinfo : 'Posizione dell''ordine cliente'
  key SalesOrderItem : String(6) not null;
  @sap.label : 'Descr. posizione'
  @sap.quickinfo : 'Testo breve per posizione ordine del cliente'
  SalesOrderItemText : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Ordine di vendita'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_SalesOrderStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ordine cliente'
  key SalesOrder : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Categoria sequenza'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_SequenceCategory {
  @sap.display.format : 'UpperCase'
  @sap.text : 'SequenceCategory_Text'
  @sap.label : 'Categoria sequenza'
  @sap.quickinfo : 'Tipo di sequenza'
  key SequenceCategory : String(1) not null;
  @sap.label : 'Descrizione tipo'
  @sap.quickinfo : 'Descrizione di un tipo di sequenza'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SequenceCategory_Text : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Codice raggr. turni'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ShiftGrouping {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ShiftGrouping_Text'
  @sap.label : 'Raggrupp. turni'
  @sap.quickinfo : 'Raggruppamento per definizione turni e sequenza turni'
  key ShiftGrouping : String(2) not null;
  @sap.label : 'Definizione'
  @sap.quickinfo : 'Definizione generale'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ShiftGrouping_Text : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Codice sequenza turni'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ShiftSequence {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Raggrupp. turni'
  @sap.quickinfo : 'Raggruppamento per definizione turni e sequenza turni'
  key ShiftGrouping : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ShiftSequence_Text'
  @sap.label : 'Sequenza turni'
  @sap.quickinfo : 'Chiave della sequenza turni'
  key ShiftSequence : String(4) not null;
  @sap.label : 'Denominazione'
  @sap.quickinfo : 'Testo (20 posizioni)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ShiftSequence_Text : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Gruppo di parametri per formula di lavoro standard'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_StandardWorkFmlaParamGroup {
  @sap.display.format : 'UpperCase'
  @sap.text : 'StandardWorkFormulaParamGroup_Text'
  @sap.label : 'Chiave val. standard'
  @sap.quickinfo : 'Chiave valore standard'
  key StandardWorkFormulaParamGroup : String(4) not null;
  @sap.label : 'Tsto ch. valore std'
  @sap.quickinfo : 'Testo per chiave valore standard'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StandardWorkFormulaParamGroup_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parametro'
  @sap.quickinfo : 'ID parametro'
  StandardWorkFormulaParam1 : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parametro'
  @sap.quickinfo : 'ID parametro'
  StandardWorkFormulaParam2 : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parametro'
  @sap.quickinfo : 'ID parametro'
  StandardWorkFormulaParam3 : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parametro'
  @sap.quickinfo : 'ID parametro'
  StandardWorkFormulaParam4 : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parametro'
  @sap.quickinfo : 'ID parametro'
  StandardWorkFormulaParam5 : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parametro'
  @sap.quickinfo : 'ID parametro'
  StandardWorkFormulaParam6 : String(6);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Magazzino'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_StorageLocation {
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Divisione'
  @sap.value.list : 'standard'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'StorageLocationName'
  @sap.label : 'Magazzino'
  key StorageLocation : String(4) not null;
  @sap.label : 'Nome del magazzino'
  StorageLocationName : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Org. commerciale'
  @sap.quickinfo : 'Organizzazione commerciale'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Canale distribuzione'
  @sap.quickinfo : 'Canale di distribuzione'
  DistributionChannel : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Settore merceologico'
  Division : String(2);
  @sap.label : 'Controllo autorizz.'
  @sap.quickinfo : 'Autorizzazione mag. logico per movimenti merci attiva'
  IsStorLocAuthznCheckActive : Boolean;
  @sap.label : 'UdM obbl.'
  @sap.quickinfo : 'Handling Unit obbligatoria'
  HandlingUnitIsRequired : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Validità'
  @sap.quickinfo : 'Identificazione di inserimenti obsoleti'
  ConfigDeprecationCode : String(1);
  to_Plant : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Plant {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Fornitore'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Supplier {
  @sap.display.format : 'UpperCase'
  @sap.text : 'SupplierName'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo di conti'
  @sap.quickinfo : 'Gruppo conti fornitori'
  SupplierAccountGroup : String(4);
  @sap.label : 'Nome del fornitore'
  SupplierName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome del fornitore'
  @sap.quickinfo : 'Nome del fornitore completo'
  SupplierFullName : String(220);
  @sap.label : 'Nome del fornitore'
  BPSupplierName : String(81);
  @sap.label : 'Nome del fornitore'
  @sap.quickinfo : 'Nome completo del fornitore'
  BPSupplierFullName : String(163);
  @sap.label : 'Nome'
  @sap.quickinfo : 'Nome 1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Nome 2'
  BusinessPartnerName2 : String(40);
  @sap.label : 'Nome 3'
  BusinessPartnerName3 : String(40);
  @sap.label : 'Nome 4'
  BusinessPartnerName4 : String(40);
  @sap.label : 'Località'
  BPAddrCityName : String(40);
  @sap.label : 'Via'
  BPAddrStreetName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criterio ricerca 1'
  @sap.quickinfo : 'Criterio di ricerca 1'
  AddressSearchTerm1 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criterio ricerca 2'
  @sap.quickinfo : 'Criterio di ricerca 2'
  AddressSearchTerm2 : String(20);
  @sap.label : 'Frazione'
  DistrictName : String(40);
  @sap.label : 'Città cas.post.'
  @sap.quickinfo : 'Città della casella postale'
  POBoxDeviatingCityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave intestazione'
  BusinessPartnerFormOfAddress : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Obiettivo raggiunto'
  @sap.quickinfo : 'Indicatore per obiettivo commerciale raggiunto'
  IsBusinessPurposeCompleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autore creazione'
  @sap.quickinfo : 'Nome dell''utente che ha inserito l''oggetto'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Data creazione'
  @sap.quickinfo : 'Data di inserimento record'
  CreationDate : Date;
  @sap.label : 'Conto occasionale'
  @sap.quickinfo : 'Codice: conto occasionale?'
  IsOneTimeAccount : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorizzazione'
  @sap.quickinfo : 'Gruppo di autorizzazione'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partita IVA'
  @sap.quickinfo : 'Partita IVA comunitaria'
  VATRegistration : String(20);
  @sap.label : 'Blocco registrazioni (obsoleto)'
  @sap.quickinfo : 'Blocco centrale di registrazione'
  AccountIsBlockedForPosting : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sede fiscale'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard Carrier Cd'
  @sap.quickinfo : 'Standard Carrier Access Code'
  SupplierStandardCarrierAccess : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sped.gr.nolo'
  @sap.quickinfo : 'Spedizioniere - gruppo nolo'
  SupplierFwdAgentFreightGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gr.schemi forn.serv.'
  @sap.quickinfo : 'Gruppo di schemi di fornitori di servizi'
  SupplierAgentProcedureGroup : String(4);
  @sap.label : 'Assicurato pr. PS'
  @sap.quickinfo : 'Registrato per la previdenza sociale'
  SupplIsSocialInsuranceRegtrd : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice prev. soc.'
  @sap.quickinfo : 'Codice attività per la previdenza sociale'
  SocialInsuranceActivityCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave gruppo'
  SupplierCorporateGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Codice cliente'
  Customer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'S. ind.'
  @sap.quickinfo : 'Chiave settore industriale'
  Industry : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice fiscale 1'
  TaxNumber1 : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice fiscale 2'
  TaxNumber2 : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice fiscale 3'
  TaxNumber3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice fiscale 4'
  TaxNumber4 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice fiscale 5'
  TaxNumber5 : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice fiscale 6'
  TaxNumber6 : String(20);
  @sap.label : 'Blocco registr.'
  @sap.quickinfo : 'Blocco centrale di registrazione'
  PostingIsBlocked : Boolean;
  @sap.label : 'Blocco acquisti'
  @sap.quickinfo : 'Blocco acquisti assegnato a livello centrale'
  PurchasingIsBlocked : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'N.int. ubicazione 1'
  @sap.quickinfo : 'N. internazionale ubicazione (parte 1)'
  InternationalLocationNumber1 : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'N. intern. ubic. 2'
  @sap.quickinfo : 'N. internazionale ubicazione (parte 2)'
  InternationalLocationNumber2 : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Cifra di controllo'
  @sap.quickinfo : 'Cifra di controllo per numero internazionale ubicazione'
  InternationalLocationNumber3 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Indirizzo'
  AddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Regione'
  @sap.quickinfo : 'Regione (stato federale, stato federato, provincia, contea)'
  Region : String(3);
  @sap.label : 'Nome'
  @sap.quickinfo : 'Nome 1'
  OrganizationBPName1 : String(35);
  @sap.label : 'Nome 2'
  OrganizationBPName2 : String(35);
  @sap.label : 'Città'
  CityName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CAP'
  @sap.quickinfo : 'Codice di avviamento postale'
  PostalCode : String(10);
  @sap.label : 'Via'
  @sap.quickinfo : 'Via e numero civico'
  StreetName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave paese/reg.'
  @sap.quickinfo : 'Chiave paese/regione'
  Country : String(3);
  @sap.label : 'N. ubic. intern.'
  @sap.quickinfo : 'Numero di ubicazione internazionale concatenato'
  ConcatenatedInternationalLocNo : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Funzione di blocco'
  @sap.quickinfo : 'Funzione che viene bloccata'
  SupplierProcurementBlock : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sistema QM effettivo'
  @sap.quickinfo : 'Sistema QM del fornitore'
  SuplrQualityManagementSystem : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Fine val. sist. QM'
  @sap.quickinfo : 'Data validità della certificazione'
  SuplrQltyInProcmtCertfnValidTo : Date;
  @sap.label : 'Chiave lingua'
  SupplierLanguage : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dest. pag. diverg.'
  @sap.quickinfo : 'Numero del conto del beneficiario alternativo del pagamento'
  AlternativePayeeAccountNumber : String(10);
  @sap.label : 'Telefono 1'
  @sap.quickinfo : '1° numero di tel.'
  PhoneNumber1 : String(16);
  @sap.label : 'Numero di telefax'
  FaxNumber : String(31);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Persona fisica'
  IsNaturalPerson : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partita IVA'
  @sap.quickinfo : 'Partita IVA presso uff. imposte competente'
  TaxNumberResponsible : String(18);
  @sap.label : 'Tipo operazione'
  @sap.quickinfo : 'Tipo di operazione del subfornitore'
  UK_ContractorBusinessType : String(12);
  @sap.label : 'Nome comm. partner'
  @sap.quickinfo : 'Nome commerciale del partner'
  UK_PartnerTradingName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'UTR del partner'
  @sap.quickinfo : 'Numero fiscale univoco (UTR) per partner'
  UK_PartnerTaxReference : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato della verifica'
  UK_VerificationStatus : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero di verifica'
  UK_VerificationNumber : String(20);
  @sap.label : 'Soc.: n. reg. ed.'
  @sap.quickinfo : 'Società: numero registrazione edificio'
  UK_CompanyRegistrationNumber : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato fiscale'
  @sap.quickinfo : 'Stato fiscale del subfornitore verificato'
  UK_VerifiedTaxStatus : String(1);
  @sap.label : 'Titolo'
  FormOfAddress : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gr. conti di rif.'
  @sap.quickinfo : 'Gruppo conti rif. per conto occas. (fornitori)'
  ReferenceAccountGroup : String(4);
  @sap.label : 'Soggetto ad IVA'
  VATLiability : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di imposta'
  ResponsibleType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Categoria di codice fiscale'
  @sap.quickinfo : 'Tipo partita IVA'
  TaxNumberType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Domicilio fiscale'
  @sap.quickinfo : 'Numero conto del record anagrafico con indirizzo fiscale'
  FiscalAddress : String(10);
  @sap.label : 'Tipo di attività'
  BusinessType : String(30);
  @sap.display.format : 'Date'
  @sap.label : 'Data di nascita'
  @sap.quickinfo : 'Data di nascita della persona soggetta a rit. d''acconto'
  BirthDate : Date;
  @sap.label : 'Blocco del pagamento'
  @sap.quickinfo : 'Blocco pagamento'
  PaymentIsBlockedForSupplier : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criterio di ricerca'
  @sap.quickinfo : 'Campo di classificazione'
  SortField : String(10);
  @sap.label : 'Telefono 2'
  @sap.quickinfo : '2° numero di tel.'
  PhoneNumber2 : String(16);
  @sap.label : 'Ind. di elim.'
  @sap.quickinfo : 'Indicatore di eliminazione centrale per record anagrafico'
  DeletionIndicator : Boolean;
  @sap.label : 'Nome del rappr.'
  @sap.quickinfo : 'Nome del rappresentante'
  TaxInvoiceRepresentativeName : String(10);
  @sap.label : 'Tipo industria'
  IndustryType : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'GST Ven Class.'
  @sap.quickinfo : 'Vendor Classification for GST'
  IN_GSTSupplierClassification : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rilev. per CRC'
  @sap.quickinfo : 'Indicatore fornitore rilevante per conferma ric. consegna'
  SuplrProofOfDelivRlvtCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'N. società partner'
  @sap.quickinfo : 'Numero società partner'
  TradingPartner : String(6);
  @sap.label : 'Divisione delle imposte'
  @sap.quickinfo : 'Codice: ripartire il valore imposte'
  BR_TaxIsSplit : Boolean;
  @sap.label : 'Enterprise in AU'
  @sap.quickinfo : 'Is payer making payment in course of carrying on enterprise'
  AU_PayerIsPayingToCarryOnEnt : Boolean;
  @sap.label : 'Individual'
  @sap.quickinfo : 'Is an individual under 18 and payment does not exceed $350'
  AU_IndividualIsUnder18 : Boolean;
  @sap.label : 'Il pagamento non supera'
  @sap.quickinfo : 'The payment does not exceed $75, excl. GST'
  AU_PaymentIsExceeding75 : Boolean;
  @sap.label : 'Wholly Input Taxed'
  @sap.quickinfo : 'The supply that the payment relates to is wholly input taxed'
  AU_PaymentIsWhollyInputTaxed : Boolean;
  @sap.label : 'Individuo senza utile'
  @sap.quickinfo : 'The supply is made by an individual without gain'
  AU_PartnerIsSupplyWithoutGain : Boolean;
  @sap.label : 'ABN Eligible'
  @sap.quickinfo : 'The supplier is not entitled to an ABN'
  AU_SupplierIsEntitledToABN : Boolean;
  @sap.label : 'Payment Exempt'
  @sap.quickinfo : 'The whole of the payment is exempt income.'
  AU_PaymentIsIncomeExempted : Boolean;
  @sap.label : 'Hobby'
  @sap.quickinfo : 'An activity done as a private recreational pursuit'
  AU_SupplyIsMadeAsPrivateHobby : Boolean;
  @sap.label : 'Domestic'
  @sap.quickinfo : 'wholly of a private or domestic nature'
  AU_SupplyMadeIsOfDmstcNature : Boolean;
  @sap.label : 'Accettazione forn.'
  @sap.quickinfo : 'Accettazione all''origine'
  IsToBeAcceptedAtOrigin : Boolean;
  @sap.label : 'Casella di spunta'
  @sap.heading : ''
  BPIsEqualizationTaxSubject : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Base imponibile'
  @sap.quickinfo : 'Percentuale della base imponibile'
  BRSpcfcTaxBasePercentageCode : String(1);
  @sap.label : 'Professione'
  SupplierProfession : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costruttore esterno'
  @sap.quickinfo : 'Nome esterno usato dal costruttore'
  SuplrManufacturerExternalName : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave dich. DME'
  @sap.quickinfo : 'Chiave comunicazioni per data medium exchange'
  DataMediumExchangeIndicator : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave istruzioni'
  @sap.quickinfo : 'Chiave istruzioni per data medium exchange'
  DataExchangeInstructionKey : String(2);
  @sap.label : 'Rilevante per VSR'
  @sap.quickinfo : 'Codice: assortimento parziale fornitore rilevante'
  SupplierIsSubRangeRelevant : Boolean;
  @sap.label : 'Stazione ferroviaria'
  TrainStationName : String(25);
  @sap.label : 'Ben. pag. in doc.'
  @sap.quickinfo : 'Indicatore: benef. alternativo pagam. ammesso in documento?'
  AlternativePayeeIsAllowed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero PBC/OPR'
  @sap.quickinfo : 'Numero partecipante OPR'
  PaytSlipWthRefSubscriber : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo statistiche, forn. serv.'
  @sap.quickinfo : 'Trasporto: gr. statistiche, fornitore servizi di trasporto'
  TranspServiceAgentStstcGrp : String(2);
  @sap.label : 'Rilevante per livello divisione'
  @sap.quickinfo : 'Codice: livello divisione rilevante'
  SupplierIsPlantRelevant : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Uff. imp. comp.'
  @sap.quickinfo : 'N. conto del record anagrafico ufficio imposte competente'
  SuplrTaxAuthorityAccountNumber : String(10);
  @sap.label : 'Conferma vettore'
  @sap.quickinfo : 'Prevista conferma del vettore'
  SuplrCarrierConfirmIsExpected : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  @sap.quickinfo : 'Divisione (propria o esterna)'
  SupplierPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calendario fabbrica'
  @sap.quickinfo : 'Chiave calendario di fabbrica'
  FactoryCalendar : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Causale pagamento'
  @sap.quickinfo : 'Causale del pagamento'
  PaymentReason : String(4);
  @sap.label : 'Blocco elim. centrale'
  @sap.quickinfo : 'Blocco di cancell. centrale per record anagrafico'
  SupplierCentralDeletionIsBlock : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Imp. TitTrattDt'
  @sap.quickinfo : 'BP: indicatore per impostare i titolari del trattamento dati'
  DataControllerSet : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController1 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController2 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController3 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController4 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController5 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController6 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController7 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController8 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController9 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController10 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Catena di trasporto'
  SupplierTransportationChain : String(10);
  @sap.label : 'Tempo approntamento'
  @sap.quickinfo : 'Tempo di approntamento in giorni'
  SupplierStagingTimeInDays : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Proc. schedulazione'
  @sap.quickinfo : 'Procedura di schedulazione'
  SupplierSchedulingProcedure : String(1);
  @sap.label : 'Rilevante per SUBMI'
  @sap.quickinfo : 'Cross-docking: rilevante per l''appalto'
  CollectiveNumberingIsRelevant : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PAN'
  @sap.quickinfo : 'Permanent Account Number'
  BusinessPartnerPanNumber : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PAN Reference Number'
  BPPanReferenceNumber : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'PAN Valid From Date'
  BPPanValidFromDate : Date;
  @sap.label : 'Proj Code 7'
  @sap.quickinfo : 'PROJ7'
  ZZ1_PROJ7_sup : String(7);
  @sap.label : 'Proj Code 3'
  @sap.quickinfo : 'PROJ3'
  ZZ1_PROJ3_sup : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Fornitore'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Supplier_VH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BPSupplierName'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  key Supplier : String(10) not null;
  @sap.label : 'Nome del fornitore 1'
  @sap.quickinfo : 'Nome del fornitore'
  SupplierName : String(35);
  @sap.label : 'Nome business partner 1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Nome del fornitore business partner'
  @sap.quickinfo : 'Nome del fornitore'
  BPSupplierName : String(81);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorizzazione'
  @sap.quickinfo : 'Gruppo di autorizzazione'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo conti'
  @sap.quickinfo : 'Gruppo conti fornitori'
  SupplierAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Obiettivo raggiunto'
  @sap.quickinfo : 'Indicatore per obiettivo commerciale raggiunto'
  IsBusinessPurposeCompleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business partner'
  @sap.quickinfo : 'Numero business partner'
  BusinessPartner : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo di business partner'
  @sap.quickinfo : 'Tipo business partner'
  BusinessPartnerType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Imp. TitTrattDt'
  @sap.quickinfo : 'BP: indicatore per impostare i titolari del trattamento dati'
  DataControllerSet : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController1 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController2 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController3 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController4 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController5 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController6 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController7 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController8 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController9 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tit. tratt. dei dati'
  @sap.quickinfo : 'BP: titolare del trattamento dati (solo utilizzo interno)'
  DataController10 : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Unità di misura'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_UnitOfMeasure {
  @sap.text : 'UnitOfMeasure_Text'
  @sap.label : 'Unità di misura'
  @sap.semantics : 'unit-of-measure'
  key UnitOfMeasure : String(3) not null;
  @sap.label : 'Testo UM'
  @sap.quickinfo : 'Testo unità di misura (massimo 30 posizioni)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  UnitOfMeasure_Text : String(30);
  @sap.label : 'Codice SAP interno'
  @sap.quickinfo : 'Unità di misura, codice SAP interno (senza conversione)'
  UnitOfMeasureSAPCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd. ISO'
  @sap.quickinfo : 'Codice ISO unità di misura'
  UnitOfMeasureISOCode : String(3);
  @sap.label : 'Cd. primario'
  @sap.quickinfo : 'Campo di marcatura per conversione cd. ISO in cd. int.'
  IsPrimaryUnitForISOCode : Boolean;
  @sap.label : 'Arrotond. decimali'
  @sap.quickinfo : 'Numero di decimali da arrotondare'
  UnitOfMeasureNumberOfDecimals : Integer;
  @sap.label : 'Utà commerciale'
  @sap.quickinfo : 'Codice unità di misura commerciale'
  UnitOfMeasureIsCommercial : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dimensione'
  @sap.quickinfo : 'Chiave dimensione'
  UnitOfMeasureDimension : String(6);
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Numeratore per la conversione in unità SI'
  SIUnitCnvrsnRateNumerator : Integer;
  @sap.label : 'Denominatore'
  @sap.quickinfo : 'Denominatore per la conversione in unità SI'
  SIUnitCnvrsnRateDenominator : Integer;
  @sap.label : 'Esponente'
  @sap.quickinfo : 'Esponente alla decima per la conversione in unità SI'
  SIUnitCnvrsnRateExponent : Integer;
  @sap.label : 'Costante aggiuntiva'
  @sap.quickinfo : 'Costante aggiuntiva per conversione in unità SI'
  SIUnitCnvrsnAdditiveValue : Decimal(9, 6);
  @sap.label : 'Esp. virgola mobile'
  @sap.quickinfo : 'Esponente alla 10a per rappresentazione virgola mobile'
  UnitOfMeasureDspExponent : Integer;
  @sap.label : 'Decimali'
  @sap.quickinfo : 'Numero di decimali nella rappresentazione numerica'
  UnitOfMeasureDspNmbrOfDcmls : Integer;
  @sap.unit : 'UnitOfMeasureTemperatureUnit'
  @sap.label : 'Val. temper.'
  @sap.quickinfo : 'Valore temperatura'
  UnitOfMeasureTemperature : Double;
  @sap.label : 'Unità temperatura'
  @sap.semantics : 'unit-of-measure'
  UnitOfMeasureTemperatureUnit : String(3);
  @sap.unit : 'UnitOfMeasurePressureUnit'
  @sap.label : 'Valore pressione'
  UnitOfMeasurePressure : Double;
  @sap.label : 'Unità pressione'
  @sap.semantics : 'unit-of-measure'
  UnitOfMeasurePressureUnit : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.addressable : 'false'
@sap.content.version : '1'
@sap.label : 'User Contact Card'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_UserContactCard {
  @sap.display.format : 'UpperCase'
  @sap.text : 'UserDescription'
  @sap.label : 'Utente'
  @sap.quickinfo : 'Nome riportato nell''anagrafica utente'
  key ContactCardID : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero persona'
  Person : String(10);
  @sap.label : 'GUID BP'
  @sap.quickinfo : 'GUID di un business partner'
  BusinessPartnerUUID : UUID;
  @sap.label : 'Nome'
  FirstName : String(40);
  @sap.label : 'Cognome'
  LastName : String(40);
  @sap.label : 'Nome completo'
  @sap.quickinfo : 'Nome completo della persona'
  FullName : String(80);
  @sap.label : 'Descrizione'
  @sap.quickinfo : 'Descrizione utente'
  UserDescription : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice indirizzo'
  AddressID : String(10);
  @sap.label : 'Telefono'
  @sap.quickinfo : 'Numero telefono scheda di contatto'
  @sap.semantics : 'tel'
  PhoneNumber : String(30);
  @sap.label : 'Telefono cellulare'
  @sap.quickinfo : 'Numero cellulare nella scheda di contatto'
  @sap.semantics : 'tel'
  MobilePhoneNumber : String(30);
  @sap.label : 'Fax'
  @sap.quickinfo : 'Numero di fax nella scheda di contatto'
  @sap.semantics : 'tel'
  FaxNumber : String(30);
  @sap.label : 'E-mail'
  @sap.quickinfo : 'Indirizzo e-mail scheda di contatto'
  @sap.semantics : 'email'
  EmailAddress : String(241);
  @sap.label : 'Reparto'
  Department : String(40);
  @sap.label : 'Funzione'
  FunctionalTitleName : String(40);
  ContactCardRole : String(7);
  ContactCardType : String(4);
  ContactCardNavLinkSemanticObj : String(4);
  ContactCardNavLinkQueryPart : String(17);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Dati di base per elemento WBS'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_WBSElementBasicDataStdVH {
  @sap.display.format : 'NonNegative'
  @sap.label : 'ID interno WBS'
  @sap.quickinfo : 'Elemento WBS'
  key WBSElementInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'WBSDescription'
  @sap.label : 'Elemento WBS'
  @sap.quickinfo : 'Elemento WBS (editato)'
  WBSElementExternalID : String(24);
  @sap.label : 'Nome elemento WBS'
  @sap.quickinfo : 'Nome elemento Work Breakdown Structure'
  WBSDescription : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Def. progetto'
  @sap.quickinfo : 'Progetto (interno)'
  ProjectInternalID : String(8);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Centro di lavoro'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_WorkCenterStdVH {
  @sap.display.format : 'NonNegative'
  @sap.text : 'WorkCenterInternalID_Text'
  @sap.label : 'ID oggetto'
  @sap.quickinfo : 'ID oggetto della risorsa'
  key WorkCenterInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo oggetto'
  @sap.quickinfo : 'CIM Resource Object Type'
  key WorkCenterTypeCode : String(2) not null;
  @sap.label : 'Testo centro lavoro'
  @sap.quickinfo : 'Testo centro di lavoro'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenterInternalID_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'ZZ1_C_COMBINEDPRODORDER'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_COMBINEDPRODORDER {
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
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'ZZ1_C_COMBORDER_COMP'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_COMBORDER_COMP {
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
@sap.label : 'ZZ1_C_MASTERORDER_COMP'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MASTERORDER_COMP {
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  key FshMprodOrd : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di fabbisogno'
  key requirementtype : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Codice materiale'
  key Material : String(40) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Descrizione prodotto'
  key ProductDescription : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore generale dell''ordine'
  key OrderIntBillOfOperationsItem : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di posizione distinta base'
  key BillOfMaterialItemNumber_2 : String(4) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità misura base'
  @sap.quickinfo : 'Unità di misura di base'
  @sap.semantics : 'unit-of-measure'
  key BaseUnit : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Crit. class.'
  @sap.quickinfo : 'Criterio di classificazione'
  key SortField : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cat. pos .dist. base'
  @sap.quickinfo : 'Categoria di posizione distinta base'
  key BOMItemCategory : String(1) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione dummy'
  @sap.quickinfo : 'Indicatore posizione dummy'
  key MaterialComponentIsPhantomItem : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Merce sfusa'
  @sap.quickinfo : 'Indicatore: merce sfusa'
  key IsBulkMaterialComponent : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di valutazione stock speciale'
  @sap.quickinfo : 'Tipo di valutazione stock inventario speciale'
  key InventorySpecialStockValnType : String(1) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prel. fin.'
  @sap.quickinfo : 'Prelievo finale dell''impegno'
  key ReservationIsFinallyIssued : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM acquisizione'
  @sap.quickinfo : 'Unità di misura di registrazione'
  @sap.semantics : 'unit-of-measure'
  key EntryUnit : String(3) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Scarto comp. (%)'
  @sap.quickinfo : 'Scarto del componente in percentuale'
  key ComponentScrapInPercent : Decimal(5, 2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Scarto oper. in %'
  @sap.quickinfo : 'Scarto operazione'
  key OperationScrapInPercent : Decimal(5, 2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Scostamento nel lead time'
  key LeadTimeOffset : Decimal(3, 0) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Magazzino'
  key StorageLocation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Area di approvvigionamento produzione'
  key ProductionSupplyArea : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Partita'
  @sap.quickinfo : 'Numero partita'
  key Batch : String(10) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo posizione'
  @sap.quickinfo : 'Testo posizione distinta base (riga 1)'
  key BOMItemDescription : String(40) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo posizione 2'
  @sap.quickinfo : 'Testo posizione distinta base (riga 2)'
  key BOMItemText2 : String(40) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Flag di canc.'
  @sap.quickinfo : 'Flag di cancellazione'
  key IsMarkedForDeletion : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prodotto'
  @sap.quickinfo : 'Codice prodotto'
  key Product : String(40) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di produzione'
  @sap.quickinfo : 'Unità di misura di produzione'
  @sap.semantics : 'unit-of-measure'
  key ProductionUnit : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Esercizio stagionale'
  key ProductSeasonYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stagione'
  key ProductSeason : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Collezione'
  @sap.quickinfo : 'Collezione fashion'
  key ProductCollection : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tema'
  @sap.quickinfo : 'Tema fashion'
  key ProductTheme : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di ordine'
  key ManufacturingOrderType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Magazzino'
  @sap.quickinfo : 'Magazzino produzione'
  key ProductionInvtryManagedLoc : String(4) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo di lunghezza 4'
  key Lgort1 : String(4) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo di lunghezza 4'
  key Lgort2 : String(4) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo di lunghezza 4'
  key Lgort3 : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Int. centro lav.'
  @sap.quickinfo : 'ID interno centro di lavoro'
  key WorkCenterInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di centro di lavoro'
  key WorkCenterTypeCODE_2_1 : String(2) not null;
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
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Segmento di stock'
  key StockSegment : String(40) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'ParentStockSegment'
  key ParentStockSegment : String(20) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'RequirementSegment'
  key RequirementSegment : String(20) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tp. stock speciale'
  @sap.quickinfo : 'Tipo di stock inventario speciale'
  key InventorySpecialStockType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Centro di lavoro'
  key WorkCenter : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Codice cliente'
  key Customer : String(10) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Nome del fornitore'
  key BPSupplierName : String(81) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Via'
  @sap.quickinfo : 'Via e numero civico'
  key StreetName : String(35) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Città'
  key CityName : String(35) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'CAP'
  @sap.quickinfo : 'Codice di avviamento postale'
  key PostalCode : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiave paese/reg.'
  @sap.quickinfo : 'Chiave paese/regione'
  key Country : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Regione'
  @sap.quickinfo : 'Regione (stato federale, stato federato, provincia, contea)'
  key Region : String(3) not null;
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
@sap.semantics : 'aggregate'
@sap.label : 'ZZ1_C_MASTERPRODORDER'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MASTERPRODORDER {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  MasterProductionOrder : String(12);
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
  @sap.label : 'Ord. prod. combinato'
  @sap.quickinfo : 'Ordine prod. principale comb.'
  CombinedOrder : String(12);
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
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'ZZ1_C_MFG_COMBINEDOPER'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_COMBINEDOPER {
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. prod. combinato'
  @sap.quickinfo : 'Ordine prod. principale comb.'
  key CprodOrd : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequenza'
  @sap.quickinfo : 'Sequenza ordine di produzione'
  ManufacturingOrderSequence : String(6);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Operazione ordine di produzione'
  ManufacturingOrderOperation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  ManufacturingOrderOperation_2 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sotto-operazione'
  @sap.quickinfo : 'Sotto-operazione dell''ordine di produzione'
  ManufacturingOrderSubOperation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  ManufacturingOrdSubOperation_2 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Numero operazione'
  MfgOrderOperationOrSubOp : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  MfgOrderOperationOrSubOp_2 : String(4);
  @sap.required.in.filter : 'false'
  @sap.label : 'Codice fase'
  MfgOrderOperationIsPhase : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore generale dell''ordine'
  OrderIntBillOfOpItemOfPhase : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione superiore'
  MfgOrderPhaseSuperiorOperation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione superiore'
  SuperiorOperation_2 : String(4);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria di ordine'
  @sap.quickinfo : 'Categoria ordine di produzione'
  ManufacturingOrderCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di ordine'
  @sap.quickinfo : 'Tipo di ordine di produzione'
  ManufacturingOrderType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile di produzione'
  ProductionSupervisor : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile MRP'
  MRPController : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gr. resp. pian.'
  @sap.quickinfo : 'Gruppo di responsabili della pianificazione o reparto'
  ResponsiblePlannerGroup : String(3);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Config. prodotto'
  @sap.quickinfo : 'Configurazione prodotto'
  ProductConfiguration : String(18);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lotto di controllo'
  @sap.quickinfo : 'Numero lotto di controllo'
  InspectionLot : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Importanza ordine'
  @sap.quickinfo : 'Codice importanza ordine'
  ManufacturingOrderImportance : String(1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo operazione'
  @sap.quickinfo : 'Testo operazione ordine di produzione'
  MfgOrderOperationText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID testo standard operazione'
  @sap.quickinfo : 'ID interno testo standard operazione'
  OperationStandardTextCode : String(7);
  @sap.required.in.filter : 'false'
  @sap.label : 'Esiste testo esteso'
  @sap.quickinfo : 'Codice di ''esistenza testo esteso'''
  OperationHasLongText : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiave lingua'
  Language : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Flag di canc.'
  @sap.quickinfo : 'Flag di cancellazione'
  OperationIsToBeDeleted : Boolean;
  @odata.Type : 'Edm.Byte'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di capacità'
  @sap.quickinfo : 'Numero delle capacità richieste'
  NumberOfCapacities : Integer;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'N. bolle conf.'
  @sap.quickinfo : 'Numero bolle di conferma'
  NumberOfConfirmationSlips : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Priorità'
  OperationImportance : String(1);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nodo oper. sovraord.'
  @sap.quickinfo : 'Numero nodo dell''operazione sovraordinata'
  SuperiorOperationInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisione'
  Plant : String(4);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Int. centro lav.'
  @sap.quickinfo : 'ID interno centro di lavoro'
  WorkCenterInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo centro lavoro'
  @sap.quickinfo : 'Tipo di centro di lavoro'
  WorkCenterTypeCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di centro di lavoro'
  WorkCenterTypeCode_2 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profilo di controllo'
  @sap.quickinfo : 'Profilo di controllo operazione'
  OperationControlProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero oggetto'
  @sap.quickinfo : 'ID interno oggetto'
  ObjectInternalID : String(22);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero fabbisogno'
  OperationTrackingNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo DO'
  @sap.quickinfo : 'Tipo distinta delle operazioni'
  BillOfOperationsType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo'
  @sap.quickinfo : 'Chiave per gruppo di cicli'
  BillOfOperationsGroup : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cont. gruppi cicli'
  @sap.quickinfo : 'Contatore gruppi cicli'
  BillOfOperationsVariant : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequenza distinta delle operazioni'
  BillOfOperationsSequence : String(6);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nodo ciclo'
  @sap.quickinfo : 'Numero del nodo ciclo'
  BOOOperationInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Vers. ciclo lavoro'
  @sap.quickinfo : 'Versione ciclo di lavoro'
  BillOfOperationsVersion : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria Db'
  @sap.quickinfo : 'Codice categoria distinta base'
  BillOfMaterialCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base'
  BillOfMaterialInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base'
  BillOfMaterialInternalID_2 : String(8);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione Db'
  @sap.quickinfo : 'Pos. distinta base'
  BillOfMaterialItemNodeNumber : String(8);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore interno'
  BOMItemNodeCount : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lav. esterna'
  @sap.quickinfo : 'Indicatore: operazione elab. esterna con lavorazione esterna'
  ExtProcgOperationHasSubcontrg : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Organizzazione acquisti'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo acquisti'
  @sap.quickinfo : 'Gruppo acquisti per attività di elaborazione esterna'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Richiesta d''acquisto'
  @sap.quickinfo : 'Numero della richiesta d''acquisto'
  PurchaseRequisition : String(10);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione della richiesta d''acquisto'
  @sap.quickinfo : 'ID posizione della richiesta d''acquisto'
  PurchaseRequisitionItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. acquisto'
  @sap.quickinfo : 'Numero dell''ordine d''acquisto'
  PurchaseOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. ord. acq.'
  @sap.quickinfo : 'Numero posizione dell''ordine acquisto'
  PurchaseOrderItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Record info'
  @sap.quickinfo : 'Record info acquisti'
  PurchasingInfoRecord : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Il prezzo è fisso'
  @sap.quickinfo : 'I dati del record info acquisti sono fissi'
  PurgInfoRecdDataIsFixed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria record info acquisti'
  PurchasingInfoRecordCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  Supplier : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Destin. merci'
  GoodsRecipientName : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Punto di scarico'
  UnloadingPointName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo merci'
  MaterialGroup : String(9);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Chiave divisa'
  @sap.semantics : 'currency-code'
  OpExternalProcessingCurrency : String(5);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di prezzo mat.'
  @sap.quickinfo : 'Quantità unità di prezzo materiale'
  NumberOfOperationPriceUnits : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Società'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Settore contabile'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling area'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profit center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'CdC richiedente'
  @sap.quickinfo : 'Centro di costo richiedente'
  RequestingCostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Voce di costo'
  CostElement : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Variante CCST'
  @sap.quickinfo : 'Variante di calcolo costi'
  CostingVariant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Schema CCST'
  CostingSheet : String(6);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'N. CCST'
  @sap.quickinfo : 'N. calcolo costi per CCST senza struttura quantitativa'
  CostEstimate : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisa oggetto'
  @sap.quickinfo : 'Divisa oggetto operazione network'
  @sap.semantics : 'currency-code'
  ControllingObjectCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Classe dell''oggetto CO'
  ControllingObjectClass : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Area funzionale'
  FunctionalArea : String(16);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sede fiscale'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Voce retr. dip.'
  @sap.quickinfo : 'Voce retributiva dipendente'
  EmployeeWageType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gr. retr. dipendente'
  @sap.quickinfo : 'Gruppo retributivo dipendente'
  EmployeeWageGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Idoneità dipendente'
  EmployeeSuitability : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'N. mod. ril.tempi'
  @sap.quickinfo : 'Numero moduli di rilevazione tempi'
  NumberOfTimeTickets : Decimal(3, 0);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ris. um.'
  @sap.quickinfo : 'Codice identificativo dipendente'
  Personnel : String(8);
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero dipendenti'
  NumberOfEmployees : Decimal(5, 2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cat. gr. attrezz.'
  @sap.quickinfo : 'Categoria gruppo attr. operazione'
  OperationSetupGroupCategory : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo attrezzaggio'
  @sap.quickinfo : 'Gruppo attr. operazione'
  OperationSetupGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo attrezzaggio'
  @sap.quickinfo : 'Tipo attr. operazione'
  OperationSetupType : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Sovrapposiz.obblig.'
  @sap.quickinfo : 'Sovrapposizione obbligatoria'
  OperationOverlappingIsRequired : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Sovrapp. facoltativa'
  @sap.quickinfo : 'Sovrapposizione facoltativa'
  OperationOverlappingIsPossible : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prod.a flusso cont.'
  OperationsIsAlwaysOverlapping : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Sudd. obbligatoria'
  @sap.quickinfo : 'Suddivisione obbligatoria'
  OperationSplitIsRequired : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'N. max suddivisioni'
  MaximumNumberOfSplits : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Strat.riduzione'
  @sap.quickinfo : 'Strategia riduzione lead time operazione'
  LeadTimeReductionStrategy : String(2);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Livello di riduzione'
  @sap.quickinfo : 'Livello di riduzione che riduce lead time dell''operazione'
  OpSchedldReductionLevel : String(1);
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldExecStrtDte'
  OpErlstSchedldExecStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldExecStrtTme'
  OpErlstSchedldExecStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldProcgStrtDte'
  OpErlstSchedldProcgStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldProcgStrtTme'
  OpErlstSchedldProcgStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldTrdwnStrtDte'
  OpErlstSchedldTrdwnStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldTrdwnStrtTme'
  OpErlstSchedldTrdwnStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldExecEndDte'
  OpErlstSchedldExecEndDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldExecEndTme'
  OpErlstSchedldExecEndTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldExecStrtDte'
  OpLtstSchedldExecStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldExecStrtTme'
  OpLtstSchedldExecStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldProcgStrtDte'
  OpLtstSchedldProcgStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldProcgStrtTme'
  OpLtstSchedldProcgStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldTrdwnStrtDte'
  OpLtstSchedldTrdwnStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldTrdwnStrtTme'
  OpLtstSchedldTrdwnStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldExecEndDte'
  OpLtstSchedldExecEndDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldExecEndTme'
  OpLtstSchedldExecEndTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdEarliestStartDate'
  SchedldFcstdEarliestStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdEarliestStartTime'
  SchedldFcstdEarliestStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdEarliestEndDate'
  SchedldFcstdEarliestEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdEarliestEndTime'
  SchedldFcstdEarliestEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestSchedldFcstdStartDate'
  LatestSchedldFcstdStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdLatestStartTime'
  SchedldFcstdLatestStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestSchedldFcstdEndDate'
  LatestSchedldFcstdEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdLatestEndTime'
  SchedldFcstdLatestEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OperationConfirmedStartDate'
  OperationConfirmedStartDate : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OperationConfirmedEndDate'
  OperationConfirmedEndDate : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualExecutionStartDate'
  OpActualExecutionStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualExecutionStartTime'
  OpActualExecutionStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualSetupEndDate'
  OpActualSetupEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualSetupEndTime'
  OpActualSetupEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualProcessingStartDate'
  OpActualProcessingStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualProcessingStartTime'
  OpActualProcessingStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualProcessingEndDate'
  OpActualProcessingEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualProcessingEndTime'
  OpActualProcessingEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualTeardownStartDate'
  OpActualTeardownStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualTeardownStartTme'
  OpActualTeardownStartTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualExecutionEndDate'
  OpActualExecutionEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualExecutionEndTime'
  OpActualExecutionEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'ActualForecastEndDate'
  ActualForecastEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'ActualForecastEndTime'
  ActualForecastEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'EarliestScheduledWaitStartDate'
  EarliestScheduledWaitStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'EarliestScheduledWaitStartTime'
  EarliestScheduledWaitStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'EarliestScheduledWaitEndDate'
  EarliestScheduledWaitEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'EarliestScheduledWaitEndTime'
  EarliestScheduledWaitEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestScheduledWaitStartDate'
  LatestScheduledWaitStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestScheduledWaitStartTime'
  LatestScheduledWaitStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestScheduledWaitEndDate'
  LatestScheduledWaitEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestScheduledWaitEndTime'
  LatestScheduledWaitEndTime : Time;
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpExternalProcessingCurrency'
  @sap.label : 'OpExternalProcessingPrice'
  OpExternalProcessingPrice : Decimal(12, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM durata pausa'
  @sap.quickinfo : 'Unità per durata pausa'
  @sap.semantics : 'unit-of-measure'
  BreakDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BreakDurationUnit'
  @sap.label : 'SumPlannedBreakDuration'
  SumPlannedBreakDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BreakDurationUnit'
  @sap.label : 'SumConfirmedBreakDuration'
  SumConfirmedBreakDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di tempo minimo di sovrapposizione'
  @sap.quickinfo : 'Unità del tempo minimo di sovrapposizione'
  @sap.semantics : 'unit-of-measure'
  OverlapMinimumDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OverlapMinimumDurationUnit'
  @sap.label : 'SumOverlapMinimumDuration'
  SumOverlapMinimumDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM tmp.max attesa'
  @sap.quickinfo : 'Unità del tempo di attesa massimo'
  @sap.semantics : 'unit-of-measure'
  MaximumWaitDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MaximumWaitDurationUnit'
  @sap.label : 'SumMaximumWaitDuration'
  SumMaximumWaitDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM tempo att. rich.'
  @sap.quickinfo : 'Unità di misura del tempo di attesa richiesto'
  @sap.semantics : 'unit-of-measure'
  MinimumWaitDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumWaitDurationUnit'
  @sap.label : 'SumMinimumWaitDuration'
  SumMinimumWaitDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM tempo trasf. std'
  @sap.quickinfo : 'Unità del tempo di trasferimento standard'
  @sap.semantics : 'unit-of-measure'
  StandardMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'StandardMoveDurationUnit'
  @sap.label : 'SumStandardMoveDuration'
  SumStandardMoveDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Utà durata coda std'
  @sap.quickinfo : 'Unità per la durata coda standard'
  @sap.semantics : 'unit-of-measure'
  StandardQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'StandardQueueDurationUnit'
  @sap.label : 'SumStandardQueueDuration'
  SumStandardQueueDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità dur. coda min.'
  @sap.quickinfo : 'Unità per durata coda minima'
  @sap.semantics : 'unit-of-measure'
  MinimumQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM tempo trasf. min.'
  @sap.quickinfo : 'Unità del tempo minimo di trasferimento'
  @sap.semantics : 'unit-of-measure'
  MinimumMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumMoveDurationUnit'
  @sap.label : 'SumMinimumMoveDuration'
  SumMinimumMoveDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OperationStandardDurationUnit'
  @sap.label : 'SumOperationStandardDuration'
  SumOperationStandardDuration : Decimal(5, 1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Utà durata std'
  @sap.quickinfo : 'Unità durata standard'
  @sap.semantics : 'unit-of-measure'
  OperationStandardDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumDurationUnit'
  @sap.label : 'SumMinimumDuration'
  SumMinimumDuration : Decimal(5, 1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità per durata minima'
  @sap.quickinfo : 'Unità per la durata minima'
  @sap.semantics : 'unit-of-measure'
  MinimumDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumDurationUnit'
  @sap.label : 'SumScheduledMoveDuration'
  SumScheduledMoveDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo trasp.'
  @sap.quickinfo : 'Unità di misura per tempo di trasporto'
  @sap.semantics : 'unit-of-measure'
  ScheduledMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumScheduledQueueDuration'
  SumScheduledQueueDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo coda'
  @sap.quickinfo : 'Unità di misura per tempo di coda'
  @sap.semantics : 'unit-of-measure'
  ScheduledQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumScheduledWaitDuration'
  SumScheduledWaitDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo attesa'
  @sap.quickinfo : 'Unità di misura per tempo di attesa'
  @sap.semantics : 'unit-of-measure'
  ScheduledWaitDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumPlannedDeliveryDuration'
  SumPlannedDeliveryDuration : Decimal(3, 0);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumOpPlannedSetupDurn'
  SumOpPlannedSetupDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo attr.'
  @sap.quickinfo : 'Unità di misura tempo attrezzaggio'
  @sap.semantics : 'unit-of-measure'
  OpPlannedSetupDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumOpPlannedProcessingDurn'
  SumOpPlannedProcessingDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo lavor.'
  @sap.quickinfo : 'Unità di misura del tempo di lavorazione'
  @sap.semantics : 'unit-of-measure'
  OpPlannedProcessingDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumOpPlannedTeardownDurn'
  SumOpPlannedTeardownDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'UM disattrezzaggio'
  @sap.quickinfo : 'Unità di misura disattrezzaggio'
  @sap.semantics : 'unit-of-measure'
  OpPlannedTeardownDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ActualForecastDurationUnit'
  @sap.label : 'SumActualForecastDuration'
  SumActualForecastDuration : Decimal(5, 1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di durata di previsione effettiva'
  @sap.quickinfo : 'Unità di durata di previsione da conferma'
  @sap.semantics : 'unit-of-measure'
  ActualForecastDurationUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data in. riferimento'
  @sap.quickinfo : 'Data di riferimento per inizio della sotto-operazione'
  StartDateOffsetReferenceCode : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità offset inizio'
  @sap.quickinfo : 'Unità per inizio offset'
  @sap.semantics : 'unit-of-measure'
  StartDateOffsetDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'StartDateOffsetDurationUnit'
  @sap.label : 'SumStartDateOffsetDuration'
  SumStartDateOffsetDuration : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data fn. riferimento'
  @sap.quickinfo : 'Data di riferimento per fine della sotto-operazione'
  EndDateOffsetReferenceCode : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità fine offset'
  @sap.quickinfo : 'Unità per fine offset'
  @sap.semantics : 'unit-of-measure'
  EndDateOffsetDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'EndDateOffsetDurationUnit'
  @sap.label : 'SumEndDateOffsetDuration'
  SumEndDateOffsetDuration : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiave val. standard'
  @sap.quickinfo : 'Chiave valore standard'
  StandardWorkFormulaParamGroup : String(4);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità operazione'
  @sap.quickinfo : 'Unità di misura operazione'
  @sap.semantics : 'unit-of-measure'
  OperationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OperationUnit'
  @sap.label : 'SumOpQtyToBaseQtyDnmntr'
  SumOpQtyToBaseQtyDnmntr : Decimal(5, 0);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OperationUnit'
  @sap.label : 'SumOpQtyToBaseQtyNmrtr'
  SumOpQtyToBaseQtyNmrtr : Decimal(5, 0);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OperationUnit'
  @sap.label : 'SumOperationScrapPercent'
  SumOperationScrapPercent : Decimal(5, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOperationReferenceQuantity'
  SumOperationReferenceQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOpPlannedTotalQuantity'
  SumOpPlannedTotalQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOpPlannedScrapQuantity'
  SumOpPlannedScrapQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOpPlannedYieldQuantity'
  SumOpPlannedYieldQuantity : Decimal(14, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOpTotalConfirmedYieldQty'
  SumOpTotalConfirmedYieldQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOpTotalConfirmedScrapQty'
  SumOpTotalConfirmedScrapQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOperationConfirmedReworkQty'
  SumOperationConfirmedReworkQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di produzione'
  @sap.quickinfo : 'Unità di misura di produzione'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Qtà ott.in utà ord.'
  @sap.quickinfo : 'Quantità ottenuta confermata in unità di misura ordine'
  OpTotConfdYieldQtyInOrdQtyUnit : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 1'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 1'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit1 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit1'
  @sap.label : 'SumOpConfirmedWorkQuantity1'
  SumOpConfirmedWorkQuantity1 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 1 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà di lavoro restante 1 è prevista'
  NoFurtherOpWorkQuantity1IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 2'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 2'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit2 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit2'
  @sap.label : 'SumOpConfirmedWorkQuantity2'
  SumOpConfirmedWorkQuantity2 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 2 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 2 prevista'
  NoFurtherOpWorkQuantity2IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 3'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 3'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit3 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit3'
  @sap.label : 'SumOpConfirmedWorkQuantity3'
  SumOpConfirmedWorkQuantity3 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 3 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 3 prevista'
  NoFurtherOpWorkQuantity3IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 4'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 4'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit4 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit4'
  @sap.label : 'SumOpConfirmedWorkQuantity4'
  SumOpConfirmedWorkQuantity4 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 4 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 4 prevista'
  NoFurtherOpWorkQuantity4IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 5'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 5'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit5 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit5'
  @sap.label : 'SumOpConfirmedWorkQuantity5'
  SumOpConfirmedWorkQuantity5 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 5 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 5 prevista'
  NoFurtherOpWorkQuantity5IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 6'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 6'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit6 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit6'
  @sap.label : 'SumOpConfirmedWorkQuantity6'
  SumOpConfirmedWorkQuantity6 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Ness. qtà lavoro restante 6 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 6 prevista'
  NoFurtherOpWorkQuantity6IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 1'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 1'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit1 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit1'
  @sap.label : 'SumWorkCenterStandardWorkQty1'
  SumWorkCenterStandardWorkQty1 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 1'
  CostCtrActivityType1 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 2'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 2'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit2 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit2'
  @sap.label : 'SumWorkCenterStandardWorkQty2'
  SumWorkCenterStandardWorkQty2 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 2'
  CostCtrActivityType2 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 3'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 3'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit3 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit3'
  @sap.label : 'SumWorkCenterStandardWorkQty3'
  SumWorkCenterStandardWorkQty3 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 3'
  CostCtrActivityType3 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 4'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 4'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit4 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit4'
  @sap.label : 'SumWorkCenterStandardWorkQty4'
  SumWorkCenterStandardWorkQty4 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 4'
  CostCtrActivityType4 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 5'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 5'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit5 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit5'
  @sap.label : 'SumWorkCenterStandardWorkQty5'
  SumWorkCenterStandardWorkQty5 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 5'
  CostCtrActivityType5 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 6'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 6'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit6 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumWorkCenterStandardWorkQty6'
  SumWorkCenterStandardWorkQty6 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 6'
  CostCtrActivityType6 : String(6);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity1'
  SumForecastWorkQuantity1 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity2'
  SumForecastWorkQuantity2 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity3'
  SumForecastWorkQuantity3 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity4'
  SumForecastWorkQuantity4 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity5'
  SumForecastWorkQuantity5 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity6'
  SumForecastWorkQuantity6 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Business process'
  BusinessProcess : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di processo'
  @sap.quickinfo : 'Unità di misura della quantità per business process'
  @sap.semantics : 'unit-of-measure'
  BusinessProcessEntryUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BusinessProcessEntryUnit'
  @sap.label : 'SumBusinessProcessConfirmedQty'
  SumBusinessProcessConfirmedQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna att. res.'
  @sap.quickinfo : 'Nessuna qtà residua prevista per business process'
  NoFurtherBusinessProcQtyIsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità proc. residua'
  @sap.quickinfo : 'Unità per la quantità residua di business process'
  @sap.semantics : 'unit-of-measure'
  BusinessProcRemainingQtyUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BusinessProcRemainingQtyUnit'
  @sap.label : 'SumBusinessProcessRemainingQty'
  SumBusinessProcessRemainingQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'ID istanza attrezzaggio'
  @sap.quickinfo : 'Network att. operazione: ID istanza attrezzaggio'
  SetupOpActyNtwkInstance : Integer;
  @sap.required.in.filter : 'false'
  @sap.label : 'ID istanza produzione'
  @sap.quickinfo : 'Network att. operazione: ID istanza produzione'
  ProduceOpActyNtwkInstance : Integer;
  @sap.required.in.filter : 'false'
  @sap.label : 'ID istanza disattrezzaggio'
  @sap.quickinfo : 'Network att. operazione: ID istanza disattrezzaggio'
  TeardownOpActyNtwkInstance : Integer;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiave campo'
  @sap.quickinfo : 'ID parola chiave per campi utente'
  FreeDefinedTableFieldSemantic : String(7);
  @sap.required.in.filter : 'false'
  @sap.label : 'Cmp utn. 20 car.'
  @sap.quickinfo : 'Campo utente 20 caratteri'
  FreeDefinedAttribute01 : String(20);
  @sap.required.in.filter : 'false'
  @sap.label : 'Cmp utn. 20 car.'
  @sap.quickinfo : 'Campo utente 20 caratteri'
  FreeDefinedAttribute02 : String(20);
  @sap.required.in.filter : 'false'
  @sap.label : 'CampoDefinDaUtente'
  @sap.quickinfo : 'Campo utente con 10 caratteri'
  FreeDefinedAttribute03 : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'CampoDefinDaUtente'
  @sap.quickinfo : 'Campo utente con 10 caratteri'
  FreeDefinedAttribute04 : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità per campi quantità'
  @sap.semantics : 'unit-of-measure'
  FreeDefinedQuantity1Unit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedQuantity1Unit'
  @sap.label : 'SumFreeDefinedQuantity1'
  SumFreeDefinedQuantity1 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità per campi quantità'
  @sap.semantics : 'unit-of-measure'
  FreeDefinedQuantity2Unit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedQuantity2Unit'
  @sap.label : 'SumFreeDefinedQuantity2'
  SumFreeDefinedQuantity2 : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità campi valore'
  @sap.semantics : 'currency-code'
  FreeDefinedAmount1Currency : String(5);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedAmount1Currency'
  @sap.label : 'SumFreeDefinedAmount1'
  SumFreeDefinedAmount1 : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità campi valore'
  @sap.semantics : 'currency-code'
  FreeDefinedAmount2Currency : String(5);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedAmount2Currency'
  @sap.label : 'SumFreeDefinedAmount2'
  SumFreeDefinedAmount2 : Decimal(13, 3);
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente data'
  @sap.quickinfo : 'Campo utente per data'
  FreeDefinedDate1 : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente data'
  @sap.quickinfo : 'Campo utente per data'
  FreeDefinedDate2 : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Cmp utente cd.'
  @sap.quickinfo : 'Campo utente: codici di valutazione'
  FreeDefinedIndicator1 : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Cmp utente cd.'
  @sap.quickinfo : 'Campo utente: codici di valutazione'
  FreeDefinedIndicator2 : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'ZZ1_C_MFG_MASTEROPER'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_MASTEROPER {
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  key MasterProductionOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequenza'
  @sap.quickinfo : 'Sequenza ordine di produzione'
  ManufacturingOrderSequence : String(6);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Operazione ordine di produzione'
  ManufacturingOrderOperation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  ManufacturingOrderOperation_2 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sotto-operazione'
  @sap.quickinfo : 'Sotto-operazione dell''ordine di produzione'
  ManufacturingOrderSubOperation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  ManufacturingOrdSubOperation_2 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Numero operazione'
  MfgOrderOperationOrSubOp : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  MfgOrderOperationOrSubOp_2 : String(4);
  @sap.required.in.filter : 'false'
  @sap.label : 'Codice fase'
  MfgOrderOperationIsPhase : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore generale dell''ordine'
  OrderIntBillOfOpItemOfPhase : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione superiore'
  MfgOrderPhaseSuperiorOperation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione superiore'
  SuperiorOperation_2 : String(4);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria di ordine'
  @sap.quickinfo : 'Categoria ordine di produzione'
  ManufacturingOrderCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di ordine'
  @sap.quickinfo : 'Tipo di ordine di produzione'
  ManufacturingOrderType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile di produzione'
  ProductionSupervisor : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile MRP'
  MRPController : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gr. resp. pian.'
  @sap.quickinfo : 'Gruppo di responsabili della pianificazione o reparto'
  ResponsiblePlannerGroup : String(3);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Config. prodotto'
  @sap.quickinfo : 'Configurazione prodotto'
  ProductConfiguration : String(18);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lotto di controllo'
  @sap.quickinfo : 'Numero lotto di controllo'
  InspectionLot : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Importanza ordine'
  @sap.quickinfo : 'Codice importanza ordine'
  ManufacturingOrderImportance : String(1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo operazione'
  @sap.quickinfo : 'Testo operazione ordine di produzione'
  MfgOrderOperationText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID testo standard operazione'
  @sap.quickinfo : 'ID interno testo standard operazione'
  OperationStandardTextCode : String(7);
  @sap.required.in.filter : 'false'
  @sap.label : 'Esiste testo esteso'
  @sap.quickinfo : 'Codice di ''esistenza testo esteso'''
  OperationHasLongText : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiave lingua'
  Language : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Flag di canc.'
  @sap.quickinfo : 'Flag di cancellazione'
  OperationIsToBeDeleted : Boolean;
  @odata.Type : 'Edm.Byte'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di capacità'
  @sap.quickinfo : 'Numero delle capacità richieste'
  NumberOfCapacities : Integer;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'N. bolle conf.'
  @sap.quickinfo : 'Numero bolle di conferma'
  NumberOfConfirmationSlips : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Priorità'
  OperationImportance : String(1);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nodo oper. sovraord.'
  @sap.quickinfo : 'Numero nodo dell''operazione sovraordinata'
  SuperiorOperationInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisione'
  Plant : String(4);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Int. centro lav.'
  @sap.quickinfo : 'ID interno centro di lavoro'
  WorkCenterInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo centro lavoro'
  @sap.quickinfo : 'Tipo di centro di lavoro'
  WorkCenterTypeCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di centro di lavoro'
  WorkCenterTypeCode_2 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profilo di controllo'
  @sap.quickinfo : 'Profilo di controllo operazione'
  OperationControlProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Dest. ricetta contr.'
  @sap.quickinfo : 'Destinatario ricetta di controllo'
  ControlRecipeDestination : String(2);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Conferma'
  @sap.quickinfo : 'Numero di conferma dell''operazione'
  OperationConfirmation : String(10);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di conferme'
  NumberOfOperationConfirmations : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Calendario fabbrica'
  @sap.quickinfo : 'ID calendario di fabbrica'
  FactoryCalendar : String(2);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fabbisogno capacità'
  @sap.quickinfo : 'ID del record fabbisogno capacità'
  CapacityRequirement : String(12);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. fabb. capacità'
  @sap.quickinfo : 'Posizione fabbisogno di capacità'
  CapacityRequirementItem : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di modifica'
  ChangeNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero oggetto'
  @sap.quickinfo : 'ID interno oggetto'
  ObjectInternalID : String(22);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero fabbisogno'
  OperationTrackingNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo DO'
  @sap.quickinfo : 'Tipo distinta delle operazioni'
  BillOfOperationsType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo'
  @sap.quickinfo : 'Chiave per gruppo di cicli'
  BillOfOperationsGroup : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cont. gruppi cicli'
  @sap.quickinfo : 'Contatore gruppi cicli'
  BillOfOperationsVariant : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequenza distinta delle operazioni'
  BillOfOperationsSequence : String(6);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nodo ciclo'
  @sap.quickinfo : 'Numero del nodo ciclo'
  BOOOperationInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Vers. ciclo lavoro'
  @sap.quickinfo : 'Versione ciclo di lavoro'
  BillOfOperationsVersion : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria Db'
  @sap.quickinfo : 'Codice categoria distinta base'
  BillOfMaterialCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base'
  BillOfMaterialInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base'
  BillOfMaterialInternalID_2 : String(8);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione Db'
  @sap.quickinfo : 'Pos. distinta base'
  BillOfMaterialItemNodeNumber : String(8);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore interno'
  BOMItemNodeCount : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lav. esterna'
  @sap.quickinfo : 'Indicatore: operazione elab. esterna con lavorazione esterna'
  ExtProcgOperationHasSubcontrg : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Organizzazione acquisti'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo acquisti'
  @sap.quickinfo : 'Gruppo acquisti per attività di elaborazione esterna'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Richiesta d''acquisto'
  @sap.quickinfo : 'Numero della richiesta d''acquisto'
  PurchaseRequisition : String(10);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione della richiesta d''acquisto'
  @sap.quickinfo : 'ID posizione della richiesta d''acquisto'
  PurchaseRequisitionItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. acquisto'
  @sap.quickinfo : 'Numero dell''ordine d''acquisto'
  PurchaseOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. ord. acq.'
  @sap.quickinfo : 'Numero posizione dell''ordine acquisto'
  PurchaseOrderItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Record info'
  @sap.quickinfo : 'Record info acquisti'
  PurchasingInfoRecord : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Il prezzo è fisso'
  @sap.quickinfo : 'I dati del record info acquisti sono fissi'
  PurgInfoRecdDataIsFixed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria record info acquisti'
  PurchasingInfoRecordCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  Supplier : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Destin. merci'
  GoodsRecipientName : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Punto di scarico'
  UnloadingPointName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo merci'
  MaterialGroup : String(9);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Chiave divisa'
  @sap.semantics : 'currency-code'
  OpExternalProcessingCurrency : String(5);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di prezzo mat.'
  @sap.quickinfo : 'Quantità unità di prezzo materiale'
  NumberOfOperationPriceUnits : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Società'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Settore contabile'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling area'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profit center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'CdC richiedente'
  @sap.quickinfo : 'Centro di costo richiedente'
  RequestingCostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Voce di costo'
  CostElement : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Variante CCST'
  @sap.quickinfo : 'Variante di calcolo costi'
  CostingVariant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Schema CCST'
  CostingSheet : String(6);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'N. CCST'
  @sap.quickinfo : 'N. calcolo costi per CCST senza struttura quantitativa'
  CostEstimate : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisa oggetto'
  @sap.quickinfo : 'Divisa oggetto operazione network'
  @sap.semantics : 'currency-code'
  ControllingObjectCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Classe dell''oggetto CO'
  ControllingObjectClass : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Area funzionale'
  FunctionalArea : String(16);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sede fiscale'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Voce retr. dip.'
  @sap.quickinfo : 'Voce retributiva dipendente'
  EmployeeWageType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gr. retr. dipendente'
  @sap.quickinfo : 'Gruppo retributivo dipendente'
  EmployeeWageGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Idoneità dipendente'
  EmployeeSuitability : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'N. mod. ril.tempi'
  @sap.quickinfo : 'Numero moduli di rilevazione tempi'
  NumberOfTimeTickets : Decimal(3, 0);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ris. um.'
  @sap.quickinfo : 'Codice identificativo dipendente'
  Personnel : String(8);
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero dipendenti'
  NumberOfEmployees : Decimal(5, 2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cat. gr. attrezz.'
  @sap.quickinfo : 'Categoria gruppo attr. operazione'
  OperationSetupGroupCategory : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo attrezzaggio'
  @sap.quickinfo : 'Gruppo attr. operazione'
  OperationSetupGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo attrezzaggio'
  @sap.quickinfo : 'Tipo attr. operazione'
  OperationSetupType : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Sovrapposiz.obblig.'
  @sap.quickinfo : 'Sovrapposizione obbligatoria'
  OperationOverlappingIsRequired : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Sovrapp. facoltativa'
  @sap.quickinfo : 'Sovrapposizione facoltativa'
  OperationOverlappingIsPossible : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prod.a flusso cont.'
  OperationsIsAlwaysOverlapping : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Sudd. obbligatoria'
  @sap.quickinfo : 'Suddivisione obbligatoria'
  OperationSplitIsRequired : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'N. max suddivisioni'
  MaximumNumberOfSplits : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Strat.riduzione'
  @sap.quickinfo : 'Strategia riduzione lead time operazione'
  LeadTimeReductionStrategy : String(2);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Livello di riduzione'
  @sap.quickinfo : 'Livello di riduzione che riduce lead time dell''operazione'
  OpSchedldReductionLevel : String(1);
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldExecStrtDte'
  OpErlstSchedldExecStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldExecStrtTme'
  OpErlstSchedldExecStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldProcgStrtDte'
  OpErlstSchedldProcgStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldProcgStrtTme'
  OpErlstSchedldProcgStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldTrdwnStrtDte'
  OpErlstSchedldTrdwnStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldTrdwnStrtTme'
  OpErlstSchedldTrdwnStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldExecEndDte'
  OpErlstSchedldExecEndDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldExecEndTme'
  OpErlstSchedldExecEndTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldExecStrtDte'
  OpLtstSchedldExecStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldExecStrtTme'
  OpLtstSchedldExecStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldProcgStrtDte'
  OpLtstSchedldProcgStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldProcgStrtTme'
  OpLtstSchedldProcgStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldTrdwnStrtDte'
  OpLtstSchedldTrdwnStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldTrdwnStrtTme'
  OpLtstSchedldTrdwnStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldExecEndDte'
  OpLtstSchedldExecEndDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldExecEndTme'
  OpLtstSchedldExecEndTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdEarliestStartDate'
  SchedldFcstdEarliestStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdEarliestStartTime'
  SchedldFcstdEarliestStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdEarliestEndDate'
  SchedldFcstdEarliestEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdEarliestEndTime'
  SchedldFcstdEarliestEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestSchedldFcstdStartDate'
  LatestSchedldFcstdStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdLatestStartTime'
  SchedldFcstdLatestStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestSchedldFcstdEndDate'
  LatestSchedldFcstdEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdLatestEndTime'
  SchedldFcstdLatestEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OperationConfirmedStartDate'
  OperationConfirmedStartDate : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OperationConfirmedEndDate'
  OperationConfirmedEndDate : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualExecutionStartDate'
  OpActualExecutionStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualExecutionStartTime'
  OpActualExecutionStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualSetupEndDate'
  OpActualSetupEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualSetupEndTime'
  OpActualSetupEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualProcessingStartDate'
  OpActualProcessingStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualProcessingStartTime'
  OpActualProcessingStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualProcessingEndDate'
  OpActualProcessingEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualProcessingEndTime'
  OpActualProcessingEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualTeardownStartDate'
  OpActualTeardownStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualTeardownStartTme'
  OpActualTeardownStartTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualExecutionEndDate'
  OpActualExecutionEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualExecutionEndTime'
  OpActualExecutionEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'ActualForecastEndDate'
  ActualForecastEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'ActualForecastEndTime'
  ActualForecastEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'EarliestScheduledWaitStartDate'
  EarliestScheduledWaitStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'EarliestScheduledWaitStartTime'
  EarliestScheduledWaitStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'EarliestScheduledWaitEndDate'
  EarliestScheduledWaitEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'EarliestScheduledWaitEndTime'
  EarliestScheduledWaitEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestScheduledWaitStartDate'
  LatestScheduledWaitStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestScheduledWaitStartTime'
  LatestScheduledWaitStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestScheduledWaitEndDate'
  LatestScheduledWaitEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestScheduledWaitEndTime'
  LatestScheduledWaitEndTime : Time;
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpExternalProcessingCurrency'
  @sap.label : 'OpExternalProcessingPrice'
  OpExternalProcessingPrice : Decimal(12, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM durata pausa'
  @sap.quickinfo : 'Unità per durata pausa'
  @sap.semantics : 'unit-of-measure'
  BreakDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BreakDurationUnit'
  @sap.label : 'SumPlannedBreakDuration'
  SumPlannedBreakDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BreakDurationUnit'
  @sap.label : 'SumConfirmedBreakDuration'
  SumConfirmedBreakDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di tempo minimo di sovrapposizione'
  @sap.quickinfo : 'Unità del tempo minimo di sovrapposizione'
  @sap.semantics : 'unit-of-measure'
  OverlapMinimumDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OverlapMinimumDurationUnit'
  @sap.label : 'SumOverlapMinimumDuration'
  SumOverlapMinimumDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM tmp.max attesa'
  @sap.quickinfo : 'Unità del tempo di attesa massimo'
  @sap.semantics : 'unit-of-measure'
  MaximumWaitDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MaximumWaitDurationUnit'
  @sap.label : 'SumMaximumWaitDuration'
  SumMaximumWaitDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM tempo att. rich.'
  @sap.quickinfo : 'Unità di misura del tempo di attesa richiesto'
  @sap.semantics : 'unit-of-measure'
  MinimumWaitDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumWaitDurationUnit'
  @sap.label : 'SumMinimumWaitDuration'
  SumMinimumWaitDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM tempo trasf. std'
  @sap.quickinfo : 'Unità del tempo di trasferimento standard'
  @sap.semantics : 'unit-of-measure'
  StandardMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'StandardMoveDurationUnit'
  @sap.label : 'SumStandardMoveDuration'
  SumStandardMoveDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Utà durata coda std'
  @sap.quickinfo : 'Unità per la durata coda standard'
  @sap.semantics : 'unit-of-measure'
  StandardQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'StandardQueueDurationUnit'
  @sap.label : 'SumStandardQueueDuration'
  SumStandardQueueDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità dur. coda min.'
  @sap.quickinfo : 'Unità per durata coda minima'
  @sap.semantics : 'unit-of-measure'
  MinimumQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumQueueDurationUnit'
  @sap.label : 'SumMinimumQueueDuration'
  SumMinimumQueueDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM tempo trasf. min.'
  @sap.quickinfo : 'Unità del tempo minimo di trasferimento'
  @sap.semantics : 'unit-of-measure'
  MinimumMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumMoveDurationUnit'
  @sap.label : 'SumMinimumMoveDuration'
  SumMinimumMoveDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OperationStandardDurationUnit'
  @sap.label : 'SumOperationStandardDuration'
  SumOperationStandardDuration : Decimal(5, 1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Utà durata std'
  @sap.quickinfo : 'Unità durata standard'
  @sap.semantics : 'unit-of-measure'
  OperationStandardDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumDurationUnit'
  @sap.label : 'SumMinimumDuration'
  SumMinimumDuration : Decimal(5, 1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità per durata minima'
  @sap.quickinfo : 'Unità per la durata minima'
  @sap.semantics : 'unit-of-measure'
  MinimumDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumDurationUnit'
  @sap.label : 'SumScheduledMoveDuration'
  SumScheduledMoveDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo trasp.'
  @sap.quickinfo : 'Unità di misura per tempo di trasporto'
  @sap.semantics : 'unit-of-measure'
  ScheduledMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumScheduledQueueDuration'
  SumScheduledQueueDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo coda'
  @sap.quickinfo : 'Unità di misura per tempo di coda'
  @sap.semantics : 'unit-of-measure'
  ScheduledQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumScheduledWaitDuration'
  SumScheduledWaitDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo attesa'
  @sap.quickinfo : 'Unità di misura per tempo di attesa'
  @sap.semantics : 'unit-of-measure'
  ScheduledWaitDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumPlannedDeliveryDuration'
  SumPlannedDeliveryDuration : Decimal(3, 0);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumOpPlannedSetupDurn'
  SumOpPlannedSetupDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo attr.'
  @sap.quickinfo : 'Unità di misura tempo attrezzaggio'
  @sap.semantics : 'unit-of-measure'
  OpPlannedSetupDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumOpPlannedProcessingDurn'
  SumOpPlannedProcessingDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo lavor.'
  @sap.quickinfo : 'Unità di misura del tempo di lavorazione'
  @sap.semantics : 'unit-of-measure'
  OpPlannedProcessingDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumOpPlannedTeardownDurn'
  SumOpPlannedTeardownDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'UM disattrezzaggio'
  @sap.quickinfo : 'Unità di misura disattrezzaggio'
  @sap.semantics : 'unit-of-measure'
  OpPlannedTeardownDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ActualForecastDurationUnit'
  @sap.label : 'SumActualForecastDuration'
  SumActualForecastDuration : Decimal(5, 1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di durata di previsione effettiva'
  @sap.quickinfo : 'Unità di durata di previsione da conferma'
  @sap.semantics : 'unit-of-measure'
  ActualForecastDurationUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data in. riferimento'
  @sap.quickinfo : 'Data di riferimento per inizio della sotto-operazione'
  StartDateOffsetReferenceCode : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità offset inizio'
  @sap.quickinfo : 'Unità per inizio offset'
  @sap.semantics : 'unit-of-measure'
  StartDateOffsetDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'StartDateOffsetDurationUnit'
  @sap.label : 'SumStartDateOffsetDuration'
  SumStartDateOffsetDuration : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data fn. riferimento'
  @sap.quickinfo : 'Data di riferimento per fine della sotto-operazione'
  EndDateOffsetReferenceCode : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità fine offset'
  @sap.quickinfo : 'Unità per fine offset'
  @sap.semantics : 'unit-of-measure'
  EndDateOffsetDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'EndDateOffsetDurationUnit'
  @sap.label : 'SumEndDateOffsetDuration'
  SumEndDateOffsetDuration : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiave val. standard'
  @sap.quickinfo : 'Chiave valore standard'
  StandardWorkFormulaParamGroup : String(4);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità operazione'
  @sap.quickinfo : 'Unità di misura operazione'
  @sap.semantics : 'unit-of-measure'
  OperationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OperationUnit'
  @sap.label : 'SumOpQtyToBaseQtyDnmntr'
  SumOpQtyToBaseQtyDnmntr : Decimal(5, 0);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OperationUnit'
  @sap.label : 'SumOpQtyToBaseQtyNmrtr'
  SumOpQtyToBaseQtyNmrtr : Decimal(5, 0);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OperationUnit'
  @sap.label : 'SumOperationScrapPercent'
  SumOperationScrapPercent : Decimal(5, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOperationReferenceQuantity'
  SumOperationReferenceQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOpPlannedTotalQuantity'
  SumOpPlannedTotalQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOpPlannedScrapQuantity'
  SumOpPlannedScrapQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOpPlannedYieldQuantity'
  SumOpPlannedYieldQuantity : Decimal(14, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOpTotalConfirmedYieldQty'
  SumOpTotalConfirmedYieldQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOpTotalConfirmedScrapQty'
  SumOpTotalConfirmedScrapQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOperationConfirmedReworkQty'
  SumOperationConfirmedReworkQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di produzione'
  @sap.quickinfo : 'Unità di misura di produzione'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Qtà ott.in utà ord.'
  @sap.quickinfo : 'Quantità ottenuta confermata in unità di misura ordine'
  OpTotConfdYieldQtyInOrdQtyUnit : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 1'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 1'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit1 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit1'
  @sap.label : 'SumOpConfirmedWorkQuantity1'
  SumOpConfirmedWorkQuantity1 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 1 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà di lavoro restante 1 è prevista'
  NoFurtherOpWorkQuantity1IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 2'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 2'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit2 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit2'
  @sap.label : 'SumOpConfirmedWorkQuantity2'
  SumOpConfirmedWorkQuantity2 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 2 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 2 prevista'
  NoFurtherOpWorkQuantity2IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 3'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 3'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit3 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit3'
  @sap.label : 'SumOpConfirmedWorkQuantity3'
  SumOpConfirmedWorkQuantity3 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 3 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 3 prevista'
  NoFurtherOpWorkQuantity3IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 4'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 4'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit4 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit4'
  @sap.label : 'SumOpConfirmedWorkQuantity4'
  SumOpConfirmedWorkQuantity4 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 4 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 4 prevista'
  NoFurtherOpWorkQuantity4IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 5'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 5'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit5 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit5'
  @sap.label : 'SumOpConfirmedWorkQuantity5'
  SumOpConfirmedWorkQuantity5 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 5 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 5 prevista'
  NoFurtherOpWorkQuantity5IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 6'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 6'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit6 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit6'
  @sap.label : 'SumOpConfirmedWorkQuantity6'
  SumOpConfirmedWorkQuantity6 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Ness. qtà lavoro restante 6 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 6 prevista'
  NoFurtherOpWorkQuantity6IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 1'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 1'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit1 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit1'
  @sap.label : 'SumWorkCenterStandardWorkQty1'
  SumWorkCenterStandardWorkQty1 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 1'
  CostCtrActivityType1 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 2'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 2'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit2 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit2'
  @sap.label : 'SumWorkCenterStandardWorkQty2'
  SumWorkCenterStandardWorkQty2 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 2'
  CostCtrActivityType2 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 3'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 3'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit3 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit3'
  @sap.label : 'SumWorkCenterStandardWorkQty3'
  SumWorkCenterStandardWorkQty3 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 3'
  CostCtrActivityType3 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 4'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 4'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit4 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit4'
  @sap.label : 'SumWorkCenterStandardWorkQty4'
  SumWorkCenterStandardWorkQty4 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 4'
  CostCtrActivityType4 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 5'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 5'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit5 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit5'
  @sap.label : 'SumWorkCenterStandardWorkQty5'
  SumWorkCenterStandardWorkQty5 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 5'
  CostCtrActivityType5 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 6'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 6'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit6 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumWorkCenterStandardWorkQty6'
  SumWorkCenterStandardWorkQty6 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 6'
  CostCtrActivityType6 : String(6);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity1'
  SumForecastWorkQuantity1 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity2'
  SumForecastWorkQuantity2 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity3'
  SumForecastWorkQuantity3 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity4'
  SumForecastWorkQuantity4 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity5'
  SumForecastWorkQuantity5 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity6'
  SumForecastWorkQuantity6 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Business process'
  BusinessProcess : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di processo'
  @sap.quickinfo : 'Unità di misura della quantità per business process'
  @sap.semantics : 'unit-of-measure'
  BusinessProcessEntryUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BusinessProcessEntryUnit'
  @sap.label : 'SumBusinessProcessConfirmedQty'
  SumBusinessProcessConfirmedQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna att. res.'
  @sap.quickinfo : 'Nessuna qtà residua prevista per business process'
  NoFurtherBusinessProcQtyIsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità proc. residua'
  @sap.quickinfo : 'Unità per la quantità residua di business process'
  @sap.semantics : 'unit-of-measure'
  BusinessProcRemainingQtyUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BusinessProcRemainingQtyUnit'
  @sap.label : 'SumBusinessProcessRemainingQty'
  SumBusinessProcessRemainingQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'ID istanza attrezzaggio'
  @sap.quickinfo : 'Network att. operazione: ID istanza attrezzaggio'
  SetupOpActyNtwkInstance : Integer;
  @sap.required.in.filter : 'false'
  @sap.label : 'ID istanza produzione'
  @sap.quickinfo : 'Network att. operazione: ID istanza produzione'
  ProduceOpActyNtwkInstance : Integer;
  @sap.required.in.filter : 'false'
  @sap.label : 'ID istanza disattrezzaggio'
  @sap.quickinfo : 'Network att. operazione: ID istanza disattrezzaggio'
  TeardownOpActyNtwkInstance : Integer;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiave campo'
  @sap.quickinfo : 'ID parola chiave per campi utente'
  FreeDefinedTableFieldSemantic : String(7);
  @sap.required.in.filter : 'false'
  @sap.label : 'Cmp utn. 20 car.'
  @sap.quickinfo : 'Campo utente 20 caratteri'
  FreeDefinedAttribute01 : String(20);
  @sap.required.in.filter : 'false'
  @sap.label : 'Cmp utn. 20 car.'
  @sap.quickinfo : 'Campo utente 20 caratteri'
  FreeDefinedAttribute02 : String(20);
  @sap.required.in.filter : 'false'
  @sap.label : 'CampoDefinDaUtente'
  @sap.quickinfo : 'Campo utente con 10 caratteri'
  FreeDefinedAttribute03 : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'CampoDefinDaUtente'
  @sap.quickinfo : 'Campo utente con 10 caratteri'
  FreeDefinedAttribute04 : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità per campi quantità'
  @sap.semantics : 'unit-of-measure'
  FreeDefinedQuantity1Unit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedQuantity1Unit'
  @sap.label : 'SumFreeDefinedQuantity1'
  SumFreeDefinedQuantity1 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità per campi quantità'
  @sap.semantics : 'unit-of-measure'
  FreeDefinedQuantity2Unit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedQuantity2Unit'
  @sap.label : 'SumFreeDefinedQuantity2'
  SumFreeDefinedQuantity2 : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità campi valore'
  @sap.semantics : 'currency-code'
  FreeDefinedAmount1Currency : String(5);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedAmount1Currency'
  @sap.label : 'SumFreeDefinedAmount1'
  SumFreeDefinedAmount1 : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità campi valore'
  @sap.semantics : 'currency-code'
  FreeDefinedAmount2Currency : String(5);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedAmount2Currency'
  @sap.label : 'SumFreeDefinedAmount2'
  SumFreeDefinedAmount2 : Decimal(13, 3);
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente data'
  @sap.quickinfo : 'Campo utente per data'
  FreeDefinedDate1 : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente data'
  @sap.quickinfo : 'Campo utente per data'
  FreeDefinedDate2 : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Cmp utente cd.'
  @sap.quickinfo : 'Campo utente: codici di valutazione'
  FreeDefinedIndicator1 : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Cmp utente cd.'
  @sap.quickinfo : 'Campo utente: codici di valutazione'
  FreeDefinedIndicator2 : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'ZZ1_C_MFG_OrderComp'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_OrderComp {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Impegno'
  @sap.quickinfo : 'Numero dell''impegno / del fabbisogno dipendente'
  @sap.value.list : 'standard'
  Reservation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.text : 'MaterialComponentText'
  @sap.label : 'Posizione impegno'
  @sap.value.list : 'standard'
  ReservationItem : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di record impegno'
  @sap.value.list : 'standard'
  ReservationRecordType : String(1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo posizione'
  @sap.quickinfo : 'Testo posizione distinta base (riga 1)'
  MaterialComponentText : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo merci'
  MaterialGroup : String(9);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Codice materiale'
  @sap.value.list : 'standard'
  Material : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisione'
  @sap.value.list : 'standard'
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_MfgOrderCategory/ManufacturingOrderCategory_Text'
  @sap.label : 'Categoria ordine'
  @sap.quickinfo : 'Categoria dell''ordine'
  @sap.value.list : 'fixed-values'
  ManufacturingOrderCategory : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_MfgOrderType/ManufacturingOrderType_Text'
  @sap.label : 'Tipo di ordine'
  @sap.value.list : 'standard'
  ManufacturingOrderType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine di produzione'
  @sap.quickinfo : 'ID ordine di produzione'
  @sap.value.list : 'standard'
  ManufacturingOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequenza'
  ManufacturingOrderSequence : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_MfgOrderSequenceCategory/SequenceCategory_Text'
  @sap.label : 'Categoria sequenza'
  @sap.quickinfo : 'Tipo di sequenza'
  @sap.value.list : 'fixed-values'
  MfgOrderSequenceCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  ManufacturingOrderOperation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Div. di produzione'
  @sap.quickinfo : 'Divisione di produzione'
  @sap.value.list : 'standard'
  ProductionPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID interno ordine'
  @sap.quickinfo : 'ID interno dell''ordine'
  OrderInternalID : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID int. operazione'
  @sap.quickinfo : 'Identificatore interno di un''operazione o attività'
  @sap.value.list : 'standard'
  OrderOperationInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_AssemblyMRPController/MRPControllerName'
  @sap.label : 'Resp. MRP assemblaggio'
  @sap.quickinfo : 'Resp. pianificazione trasporti di materiale assemblaggio'
  AssemblyMRPController : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_ProductionSupervisor/ProductionSupervisorName'
  @sap.label : 'Responsabile di produzione'
  ProductionSupervisor : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stato della posizione impegno'
  ReservationItemCreationCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prel. fin.'
  @sap.quickinfo : 'Prelievo finale dell''impegno'
  ReservationIsFinallyIssued : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Codice canc.'
  @sap.quickinfo : 'Indicatore: marcato per l''eliminazione'
  MatlCompIsMarkedForDeletion : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Parte mancante'
  MaterialComponentIsMissing : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Merce sfusa'
  @sap.quickinfo : 'Indicatore: merce sfusa'
  IsBulkMaterialComponent : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prelievo retroattivo'
  @sap.quickinfo : 'Codice: prelievo retroattivo'
  MatlCompIsMarkedForBackflush : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione testo'
  @sap.quickinfo : 'Posizione è codice testo'
  MatlCompIsTextItem : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Rilevante per pianificazione materiali'
  @sap.quickinfo : 'Codice: rilevante per pianificazione materiali'
  MaterialPlanningRelevance : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. configurabile'
  @sap.quickinfo : 'Indicatore: Posizione configurabile'
  MatlCompIsConfigurable : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Classificazione'
  @sap.quickinfo : 'Indicatore: esiste una classificazione'
  MaterialComponentIsClassified : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Intra material'
  @sap.quickinfo : 'Codice: intra material'
  MaterialCompIsIntraMaterial : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Produzione diretta'
  @sap.quickinfo : 'Codice per produzione diretta (network ordini)'
  MaterialIsDirectlyProduced : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Approvv. diretto'
  @sap.quickinfo : 'Codice approvvigionamento diretto'
  MaterialIsDirectlyProcured : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'È creato'
  @sap.quickinfo : 'Indicatore: il componente del materiale è creato'
  MaterialComponentIsCreated : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'È rilasciato'
  @sap.quickinfo : 'Indicatore: il componente del materiale è rilasciato'
  MaterialComponentIsReleased : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'È stampato'
  @sap.quickinfo : 'Indicatore: il componente del materiale è stampato'
  MaterialComponentIsPrinted : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'È eliminato'
  @sap.quickinfo : 'Indicatore: il componente del materiale è eliminato'
  MaterialComponentIsDeleted : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Creato da suddivisione dell''ordine'
  @sap.quickinfo : 'Indicatore: il componente è creato dalla suddiv. dell''ordine'
  MatlCompIsCreatedByOrderSplit : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo posizione 2'
  @sap.quickinfo : 'Testo posizione distinta base (riga 2)'
  MaterialComponentSecondText : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Esiste testo esteso'
  @sap.quickinfo : 'Codice di ''esistenza testo esteso'''
  MaterialComponentHasLongText : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_LongTextLanguage/Language_Text'
  @sap.label : 'Lingua del testo esteso'
  @sap.value.list : 'standard'
  LongTextLanguage : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data fabbisogno'
  @sap.quickinfo : 'Data fabbisogno componente materiale'
  MatlCompRequirementDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora fabbisogno'
  @sap.quickinfo : 'Ora fabbisogno del componente del materiale'
  MatlCompRequirementTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data dell''ultimo fabbisogno'
  LatestRequirementDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di fabbisogno'
  RequirementType : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine di vendita'
  @sap.value.list : 'standard'
  SalesOrder : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. ordine vendita'
  @sap.quickinfo : 'Posizione ordine di vendita'
  @sap.value.list : 'standard'
  SalesOrderItem : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID interno WBS'
  @sap.quickinfo : 'Elemento WBS'
  @sap.value.list : 'standard'
  WBSElementInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_MRPController/MRPControllerName'
  @sap.label : 'Responsabile MRP'
  MRPController : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero oggetto int.'
  @sap.quickinfo : 'Configurazione (numero oggetto interno)'
  ProductConfiguration : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di modifica'
  @sap.value.list : 'standard'
  ChangeNumber : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stato di revisione'
  MaterialRevisionLevel : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Valutazione std'
  @sap.quickinfo : 'Valutazione validità/valutazione standard'
  EffectivityParameterVariant : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Crit. class.'
  @sap.quickinfo : 'Criterio di classificazione'
  MaterialComponentSortText : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero oggetto'
  ObjectInternalID : String(22);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria Db'
  @sap.quickinfo : 'Codice categoria distinta base'
  BillOfMaterialCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base'
  BillOfMaterialInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Util. distinta base'
  @sap.quickinfo : 'Utilizzo della distinta base'
  BillOfMaterialVariantUsage : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base alt.'
  @sap.quickinfo : 'Distinta base alternativa'
  BillOfMaterialVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione Db'
  @sap.quickinfo : 'Pos. distinta base'
  BillOfMaterialItemNodeNumber : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Versione Db'
  BillOfMaterialVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore interno'
  BOMItemInternalChangeCount : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nodo posizione'
  @sap.quickinfo : 'Numero nodo ereditato della posizione dist. base'
  InheritedBOMItemNode : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cat. pos .dist. base'
  @sap.quickinfo : 'Categoria di posizione distinta base'
  BillOfMaterialItemCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di posizione distinta base'
  BillOfMaterialItemNumber : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_BOMExplosion/BOMExplosionDateText'
  @sap.label : 'ID data esplosione'
  @sap.quickinfo : 'ID data esplosione per distinta base'
  @sap.value.list : 'standard'
  BOMExplosionDateID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Record info'
  @sap.quickinfo : 'Record info acquisti'
  PurchasingInfoRecord : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_PurchasingGroup/PurchasingGroupName'
  @sap.label : 'Gruppo acquisti'
  @sap.value.list : 'standard'
  PurchasingGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Richiesta d''acquisto'
  @sap.quickinfo : 'Numero della richiesta d''acquisto'
  PurchaseRequisition : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione richiesta'
  @sap.quickinfo : 'Numero posizione richiesta d''acquisto nell''ordine'
  PurchaseRequisitionItem : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. acquisto'
  @sap.quickinfo : 'Numero dell''ordine d''acquisto'
  PurchaseOrder : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. ord. acq.'
  @sap.quickinfo : 'Numero posizione dell''ordine acquisto'
  PurchaseOrderItem : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Schedulazione'
  PurchaseOrderScheduleLine : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  @sap.value.list : 'standard'
  Supplier : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Durata consegna'
  @sap.quickinfo : 'Durata consegna in giorni'
  DeliveryDurationInDays : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Durata dell''entrata merci di materiale'
  @sap.quickinfo : 'Durata in giorni dell''entrata merci di materiale'
  MaterialGoodsReceiptDuration : Decimal(3, 0);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'Currency'
  @sap.label : 'Prezzo'
  @sap.filterable : 'false'
  ExternalProcessingPrice : Decimal(16, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di prezzo mat.'
  @sap.quickinfo : 'Quantità unità di prezzo materiale'
  NumberOfOperationPriceUnits : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Movimento ammesso'
  @sap.quickinfo : 'Movimento merci ammesso per impegno'
  GoodsMovementIsAllowed : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_StorageLocation/StorageLocationName'
  @sap.label : 'Magazzino'
  @sap.value.list : 'standard'
  StorageLocation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_DebitCreditCode/DebitCreditCode_Text'
  @sap.label : 'Codice Dare/Avere'
  @sap.quickinfo : 'Codice dare/avere'
  @sap.value.list : 'fixed-values'
  DebitCreditCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_GoodsMovementType/GoodsMovementType_Text'
  @sap.label : 'Tipo movimento'
  @sap.quickinfo : 'Tipo movimento (gestione stock)'
  @sap.value.list : 'standard'
  GoodsMovementType : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_InventorySpecialStockType/InventorySpecialStockType_Text'
  @sap.label : 'Tp. stock speciale'
  @sap.quickinfo : 'Tipo di stock inventario speciale'
  @sap.value.list : 'standard'
  InventorySpecialStockType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_InventorySpecialStockValnType/InventorySpecialStockValnType_Text'
  @sap.label : 'Tipo di valutazione stock speciale'
  @sap.quickinfo : 'Tipo di valutazione stock inventario speciale'
  @sap.value.list : 'fixed-values'
  InventorySpecialStockValnType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Registr. consumo'
  @sap.quickinfo : 'Registrazione consumo'
  ConsumptionPosting : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_SupplyArea/ProductionSupplyArea_Text'
  @sap.label : 'Area di approvvigionamento produzione'
  @sap.value.list : 'standard'
  SupplyArea : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Destin. merci'
  GoodsRecipientName : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Punto di scarico'
  UnloadingPointName : String(25);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Rilev. CCST'
  @sap.quickinfo : 'Indice di rilevanza del CCST'
  MaterialCompCostingRelevancy : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Settore contabile'
  @sap.value.list : 'standard'
  BusinessArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Società'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Conto Co.Ge.'
  @sap.quickinfo : 'Numero del conto Co.Ge.'
  @sap.value.list : 'standard'
  GLAccount : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_FunctionalArea/FunctionalArea_Text'
  @sap.label : 'Area funzionale'
  @sap.value.list : 'standard'
  FunctionalArea : String(16);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_ControllingArea/ControllingAreaName'
  @sap.label : 'Controlling area'
  @sap.value.list : 'standard'
  ControllingArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_AccountAssignmentCategory/AccountAssignmentCategory_Text'
  @sap.label : 'Categoria di contabilizzazione'
  @sap.value.list : 'standard'
  AccountAssignmentCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fondi accantonati'
  @sap.quickinfo : 'Numero documento: fondi accantonati'
  EarmarkedFundsDocument : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione documento'
  @sap.quickinfo : 'Posizione documento: fondi accantonati'
  EarmarkedFundsDocumentItem : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Partita'
  @sap.quickinfo : 'Numero partita'
  @sap.value.list : 'standard'
  Batch : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Determinazione dell''inserimento partita'
  @sap.quickinfo : 'Determinazione ins. partita in un ordine di prod./processo'
  BatchEntryDeterminationCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_BatchSplitType/BatchSplitType_Text'
  @sap.label : 'Chiave partita'
  @sap.value.list : 'fixed-values'
  BatchSplitType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. impegno record anagr. partita'
  @sap.quickinfo : 'Posizione impegno del record anagrafico partita'
  BatchMasterReservationItem : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero oggetto int.'
  @sap.quickinfo : 'Numero oggetto interno di selezione partite'
  BatchClassification : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pezzo dim. variabile'
  @sap.quickinfo : 'Codice pezzo a dimensione variabile'
  MaterialCompIsVariableSized : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità pezzi a dimensione variabile'
  @sap.quickinfo : 'Unità di misura pezzi a dimensione variabile'
  @sap.semantics : 'unit-of-measure'
  VariableSizeItemUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'VariableSizeItemUnit'
  @sap.label : 'N. componenti a dimensione variabile'
  @sap.quickinfo : 'Numero di componenti a dimensione variabile'
  @sap.filterable : 'false'
  VariableSizeItemQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità componenti a dimensione variabile'
  @sap.quickinfo : 'Unità di misura per componenti a dimensione variabile'
  @sap.semantics : 'unit-of-measure'
  VariableSizeComponentUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'VariableSizeComponentUnit'
  @sap.label : 'Quantità pezzi a dimensione variabile'
  @sap.quickinfo : 'Quantità pezzi a dimensione variabile per PC'
  @sap.filterable : 'false'
  VariableSizeComponentQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'UM dim. mat.prima'
  @sap.quickinfo : 'Unità delle dimensioni materia prima da 1 a 3'
  @sap.semantics : 'unit-of-measure'
  VariableSizeDimensionUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'VariableSizeDimensionUnit'
  @sap.label : 'Dim. MP 1'
  @sap.filterable : 'false'
  VariableSizeDimension1 : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'VariableSizeDimensionUnit'
  @sap.label : 'Dim. MP 2'
  @sap.filterable : 'false'
  VariableSizeDimension2 : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'VariableSizeDimensionUnit'
  @sap.label : 'Dim. MP 3'
  @sap.filterable : 'false'
  VariableSizeDimension3 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Formula pz. dim.var.'
  @sap.quickinfo : 'Chiave formula per pezzi a dimensione variabile'
  VariableSizeCompFormulaKey : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. alternativa'
  @sap.quickinfo : 'Indicatore per posizione alternativa'
  MaterialCompIsAlternativeItem : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo di posizioni alternative'
  AlternativeItemGroup : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Strategia per posizione alternativa'
  AlternativeItemStrategy : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Priorità posizione alternativa'
  AlternativeItemPriority : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prob. impiego'
  @sap.quickinfo : 'Posizione alternativa: probabilità di impiego in %'
  UsageProbabilityPercent : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. impegno record anagr. alternativo'
  @sap.quickinfo : 'Posizione impegno del record anagrafico alternativo'
  AlternativeMstrReservationItem : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione dummy'
  @sap.quickinfo : 'Indicatore posizione dummy'
  MaterialComponentIsPhantomItem : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Percorso ordine'
  @sap.quickinfo : 'Percorso dell''ordine'
  OrderPathValue : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Livello ordine'
  OrderLevelValue : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_PhantomAssembly/Product_Text'
  @sap.label : 'Origine fabbisogno'
  @sap.quickinfo : 'Materiale dell''assemblaggio superiore'
  @sap.value.list : 'standard'
  Assembly : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Perc. ord. montaggio'
  @sap.quickinfo : 'Percorso ordine di montaggio'
  AssemblyOrderPathValue : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Liv. ord. montaggio'
  @sap.quickinfo : 'Livello ordine di montaggio'
  AssemblyOrderLevelValue : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo fine serie'
  DiscontinuationGroup : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_DiscontinuationType/MatlCompDiscontinuationType_Text'
  @sap.label : 'Tipo sostituzione'
  @sap.quickinfo : 'Codice di sostituzione'
  @sap.value.list : 'fixed-values'
  MatlCompDiscontinuationType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Il comp. è materiale sostitutivo'
  @sap.quickinfo : 'Indicatore: il componente è materiale sostitutivo'
  MatlCompIsFollowUpMaterial : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo successivo'
  FollowUpGroup : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_FollowUpMaterial/Product_Text'
  @sap.label : 'Documento sostitutivo/originale'
  @sap.value.list : 'standard'
  FollowUpMaterial : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Il mat. sost. è attivo'
  @sap.quickinfo : 'Indicatore: il materiale sostitutivo è attivo'
  FollowUpMaterialIsActive : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. impegno rec. anagr. sostituzione'
  @sap.quickinfo : 'Posizione impegno del record anagrafico di sostituzione'
  DiscontinuationMasterResvnItem : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di messa a disp. del materiale'
  @sap.quickinfo : 'Tipo di messa a disposizione del materiale'
  MaterialProvisionType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di pezzo di ricambio'
  MatlComponentSparePartType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Scostamento nel lead time'
  LeadTimeOffset : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità scost. lead time per operazioni'
  @sap.quickinfo : 'Unità di misura per scostamento nel lead time per operazioni'
  @sap.semantics : 'unit-of-measure'
  OperationLeadTimeOffsetUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Scostamento lead time per operazioni'
  @sap.quickinfo : 'Scostamento nel lead time per operazioni'
  OperationLeadTimeOffset : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'La quantità è fissa'
  QuantityIsFixed : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Codice: scarto netto'
  IsNetScrap : Boolean;
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
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore per la conversione in unità di mis. di base'
  MaterialQtyToBaseQtyNmrtr : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Denominatore'
  @sap.quickinfo : 'Denom. per la conversione in unità di misura di base'
  MaterialQtyToBaseQtyDnmntr : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità misura base'
  @sap.quickinfo : 'Unità di misura di base'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantità fabbisogno'
  @sap.filterable : 'false'
  RequiredQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantità prelevata'
  @sap.filterable : 'false'
  WithdrawnQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantità disponibile'
  @sap.filterable : 'false'
  ConfirmedAvailableQuantity : Decimal(15, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantità originale'
  @sap.quickinfo : 'Quantità originale di un componente del materiale'
  @sap.filterable : 'false'
  MaterialCompOriginalQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'UM acquisizione'
  @sap.quickinfo : 'Unità di misura di registrazione'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'Quantità'
  @sap.quickinfo : 'Quantità in unità di misura di acquisizione'
  @sap.filterable : 'false'
  GoodsMovementEntryQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Chiave divisa'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'Currency'
  @sap.label : 'Valore prelevato'
  @sap.filterable : 'false'
  WithdrawnQuantityAmount : Decimal(14, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Segmento di stock'
  StockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Segmento fabbisogno'
  RequirementSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Componente critico'
  @sap.quickinfo : 'Indicatore componente critico'
  CriticalComponentType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Liv. critico'
  @sap.quickinfo : 'Livello critico di un componente nella Db'
  CriticalComponentLevel : Decimal(2, 0);
  to_AccountAssignmentCategory : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_AccountAssignmentCategory {  };
  to_AssemblyMRPController : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_MRPController {  };
  to_BatchSplitType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_BatchSplitType {  };
  to_BOMExplosion : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_BOMExplosionDate {  };
  to_ControllingArea : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ControllingArea {  };
  to_DebitCreditCode : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_DebitCreditCode {  };
  to_DiscontinuationType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_MatlCompDiscontinuationType {  };
  to_FollowUpMaterial : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Product {  };
  to_FunctionalArea : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_FunctionalArea {  };
  to_GoodsMovementType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_GoodsMovementType {  };
  to_InventorySpecialStockType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_InventorySpecialStockType {  };
  to_InventorySpecialStockValnType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_InvtrySpecialStockValnType {  };
  to_LongTextLanguage : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Language {  };
  to_MfgOrderCategory : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_MfgOrderCategory {  };
  to_MfgOrderOperation : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ManufacturingOrderOperation {  };
  to_MfgOrderSequenceCategory : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_SequenceCategory {  };
  to_MfgOrderType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_MfgOrderType {  };
  to_MRPController : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_MRPController {  };
  to_PhantomAssembly : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Product {  };
  to_ProductionSupervisor : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ProductionSupervisor {  };
  to_PurchasingGroup : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_PurchasingGroup {  };
  to_Reservation : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ReservationDocumentHeader {  };
  to_ReservationItem : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ReservationDocumentItem {  };
  to_ReservationRecordType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ReservationDocRecordType {  };
  to_StorageLocation : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_StorageLocation {  };
  to_SupplyArea : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_ProductionSupplyArea {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'ZZ1_C_MFG_ORDEROPER'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_ORDEROPER {
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  key MasterProductionOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequenza'
  @sap.quickinfo : 'Sequenza ordine di produzione'
  ManufacturingOrderSequence : String(6);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Operazione ordine di produzione'
  ManufacturingOrderOperation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  ManufacturingOrderOperation_2 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sotto-operazione'
  @sap.quickinfo : 'Sotto-operazione dell''ordine di produzione'
  ManufacturingOrderSubOperation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  ManufacturingOrdSubOperation_2 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Numero operazione'
  MfgOrderOperationOrSubOp : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  MfgOrderOperationOrSubOp_2 : String(4);
  @sap.required.in.filter : 'false'
  @sap.label : 'Codice fase'
  MfgOrderOperationIsPhase : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore generale dell''ordine'
  OrderIntBillOfOpItemOfPhase : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione superiore'
  MfgOrderPhaseSuperiorOperation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione superiore'
  SuperiorOperation_2 : String(4);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria di ordine'
  @sap.quickinfo : 'Categoria ordine di produzione'
  ManufacturingOrderCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di ordine'
  @sap.quickinfo : 'Tipo di ordine di produzione'
  ManufacturingOrderType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile di produzione'
  ProductionSupervisor : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile MRP'
  MRPController : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gr. resp. pian.'
  @sap.quickinfo : 'Gruppo di responsabili della pianificazione o reparto'
  ResponsiblePlannerGroup : String(3);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Config. prodotto'
  @sap.quickinfo : 'Configurazione prodotto'
  ProductConfiguration : String(18);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lotto di controllo'
  @sap.quickinfo : 'Numero lotto di controllo'
  InspectionLot : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Importanza ordine'
  @sap.quickinfo : 'Codice importanza ordine'
  ManufacturingOrderImportance : String(1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo operazione'
  @sap.quickinfo : 'Testo operazione ordine di produzione'
  MfgOrderOperationText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID testo standard operazione'
  @sap.quickinfo : 'ID interno testo standard operazione'
  OperationStandardTextCode : String(7);
  @sap.required.in.filter : 'false'
  @sap.label : 'Esiste testo esteso'
  @sap.quickinfo : 'Codice di ''esistenza testo esteso'''
  OperationHasLongText : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiave lingua'
  Language : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Flag di canc.'
  @sap.quickinfo : 'Flag di cancellazione'
  OperationIsToBeDeleted : Boolean;
  @odata.Type : 'Edm.Byte'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di capacità'
  @sap.quickinfo : 'Numero delle capacità richieste'
  NumberOfCapacities : Integer;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'N. bolle conf.'
  @sap.quickinfo : 'Numero bolle di conferma'
  NumberOfConfirmationSlips : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Priorità'
  OperationImportance : String(1);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nodo oper. sovraord.'
  @sap.quickinfo : 'Numero nodo dell''operazione sovraordinata'
  SuperiorOperationInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisione'
  Plant : String(4);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Int. centro lav.'
  @sap.quickinfo : 'ID interno centro di lavoro'
  WorkCenterInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo centro lavoro'
  @sap.quickinfo : 'Tipo di centro di lavoro'
  WorkCenterTypeCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di centro di lavoro'
  WorkCenterTypeCode_2 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profilo di controllo'
  @sap.quickinfo : 'Profilo di controllo operazione'
  OperationControlProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Dest. ricetta contr.'
  @sap.quickinfo : 'Destinatario ricetta di controllo'
  ControlRecipeDestination : String(2);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Conferma'
  @sap.quickinfo : 'Numero di conferma dell''operazione'
  OperationConfirmation : String(10);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di conferme'
  NumberOfOperationConfirmations : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Calendario fabbrica'
  @sap.quickinfo : 'ID calendario di fabbrica'
  FactoryCalendar : String(2);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fabbisogno capacità'
  @sap.quickinfo : 'ID del record fabbisogno capacità'
  CapacityRequirement : String(12);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. fabb. capacità'
  @sap.quickinfo : 'Posizione fabbisogno di capacità'
  CapacityRequirementItem : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di modifica'
  ChangeNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero oggetto'
  @sap.quickinfo : 'ID interno oggetto'
  ObjectInternalID : String(22);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero fabbisogno'
  OperationTrackingNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo DO'
  @sap.quickinfo : 'Tipo distinta delle operazioni'
  BillOfOperationsType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo'
  @sap.quickinfo : 'Chiave per gruppo di cicli'
  BillOfOperationsGroup : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cont. gruppi cicli'
  @sap.quickinfo : 'Contatore gruppi cicli'
  BillOfOperationsVariant : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequenza distinta delle operazioni'
  BillOfOperationsSequence : String(6);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nodo ciclo'
  @sap.quickinfo : 'Numero del nodo ciclo'
  BOOOperationInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Vers. ciclo lavoro'
  @sap.quickinfo : 'Versione ciclo di lavoro'
  BillOfOperationsVersion : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria Db'
  @sap.quickinfo : 'Codice categoria distinta base'
  BillOfMaterialCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base'
  BillOfMaterialInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base'
  BillOfMaterialInternalID_2 : String(8);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione Db'
  @sap.quickinfo : 'Pos. distinta base'
  BillOfMaterialItemNodeNumber : String(8);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore interno'
  BOMItemNodeCount : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lav. esterna'
  @sap.quickinfo : 'Indicatore: operazione elab. esterna con lavorazione esterna'
  ExtProcgOperationHasSubcontrg : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Organizzazione acquisti'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo acquisti'
  @sap.quickinfo : 'Gruppo acquisti per attività di elaborazione esterna'
  PurchasingGroup : String(3);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione della richiesta d''acquisto'
  @sap.quickinfo : 'ID posizione della richiesta d''acquisto'
  PurchaseRequisitionItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. acquisto'
  @sap.quickinfo : 'Numero dell''ordine d''acquisto'
  PurchaseOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. ord. acq.'
  @sap.quickinfo : 'Numero posizione dell''ordine acquisto'
  PurchaseOrderItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Record info'
  @sap.quickinfo : 'Record info acquisti'
  PurchasingInfoRecord : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Il prezzo è fisso'
  @sap.quickinfo : 'I dati del record info acquisti sono fissi'
  PurgInfoRecdDataIsFixed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria record info acquisti'
  PurchasingInfoRecordCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  Supplier : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Destin. merci'
  GoodsRecipientName : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Punto di scarico'
  UnloadingPointName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo merci'
  MaterialGroup : String(9);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Chiave divisa'
  @sap.semantics : 'currency-code'
  OpExternalProcessingCurrency : String(5);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpExternalProcessingCurrency'
  @sap.label : 'OpExternalProcessingPrice'
  OpExternalProcessingPrice : Decimal(12, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di prezzo mat.'
  @sap.quickinfo : 'Quantità unità di prezzo materiale'
  NumberOfOperationPriceUnits : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Società'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Settore contabile'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling area'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profit center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'CdC richiedente'
  @sap.quickinfo : 'Centro di costo richiedente'
  RequestingCostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Voce di costo'
  CostElement : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Variante CCST'
  @sap.quickinfo : 'Variante di calcolo costi'
  CostingVariant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Schema CCST'
  CostingSheet : String(6);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'N. CCST'
  @sap.quickinfo : 'N. calcolo costi per CCST senza struttura quantitativa'
  CostEstimate : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisa oggetto'
  @sap.quickinfo : 'Divisa oggetto operazione network'
  @sap.semantics : 'currency-code'
  ControllingObjectCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Classe dell''oggetto CO'
  ControllingObjectClass : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Area funzionale'
  FunctionalArea : String(16);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sede fiscale'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Voce retr. dip.'
  @sap.quickinfo : 'Voce retributiva dipendente'
  EmployeeWageType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gr. retr. dipendente'
  @sap.quickinfo : 'Gruppo retributivo dipendente'
  EmployeeWageGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Idoneità dipendente'
  EmployeeSuitability : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'N. mod. ril.tempi'
  @sap.quickinfo : 'Numero moduli di rilevazione tempi'
  NumberOfTimeTickets : Decimal(3, 0);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ris. um.'
  @sap.quickinfo : 'Codice identificativo dipendente'
  Personnel : String(8);
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero dipendenti'
  NumberOfEmployees : Decimal(5, 2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cat. gr. attrezz.'
  @sap.quickinfo : 'Categoria gruppo attr. operazione'
  OperationSetupGroupCategory : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo attrezzaggio'
  @sap.quickinfo : 'Gruppo attr. operazione'
  OperationSetupGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo attrezzaggio'
  @sap.quickinfo : 'Tipo attr. operazione'
  OperationSetupType : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Sovrapposiz.obblig.'
  @sap.quickinfo : 'Sovrapposizione obbligatoria'
  OperationOverlappingIsRequired : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Sovrapp. facoltativa'
  @sap.quickinfo : 'Sovrapposizione facoltativa'
  OperationOverlappingIsPossible : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prod.a flusso cont.'
  OperationsIsAlwaysOverlapping : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Strat.riduzione'
  @sap.quickinfo : 'Strategia riduzione lead time operazione'
  LeadTimeReductionStrategy : String(2);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Livello di riduzione'
  @sap.quickinfo : 'Livello di riduzione che riduce lead time dell''operazione'
  OpSchedldReductionLevel : String(1);
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldExecStrtDte'
  OpErlstSchedldExecStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldExecStrtTme'
  OpErlstSchedldExecStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldProcgStrtDte'
  OpErlstSchedldProcgStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldProcgStrtTme'
  OpErlstSchedldProcgStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldTrdwnStrtDte'
  OpErlstSchedldTrdwnStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldTrdwnStrtTme'
  OpErlstSchedldTrdwnStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpErlstSchedldExecEndDte'
  OpErlstSchedldExecEndDte : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldExecStrtDte'
  OpLtstSchedldExecStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldExecStrtTme'
  OpLtstSchedldExecStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldProcgStrtDte'
  OpLtstSchedldProcgStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldProcgStrtTme'
  OpLtstSchedldProcgStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldTrdwnStrtDte'
  OpLtstSchedldTrdwnStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldTrdwnStrtTme'
  OpLtstSchedldTrdwnStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldExecEndDte'
  OpLtstSchedldExecEndDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpLtstSchedldExecEndTme'
  OpLtstSchedldExecEndTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdEarliestStartDate'
  SchedldFcstdEarliestStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdEarliestStartTime'
  SchedldFcstdEarliestStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdEarliestEndDate'
  SchedldFcstdEarliestEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdEarliestEndTime'
  SchedldFcstdEarliestEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestSchedldFcstdStartDate'
  LatestSchedldFcstdStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'SchedldFcstdLatestStartTime'
  SchedldFcstdLatestStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestSchedldFcstdEndDate'
  LatestSchedldFcstdEndDate : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualSetupEndDate'
  OpActualSetupEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualSetupEndTime'
  OpActualSetupEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualProcessingStartDate'
  OpActualProcessingStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualProcessingStartTime'
  OpActualProcessingStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualProcessingEndDate'
  OpActualProcessingEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualProcessingEndTime'
  OpActualProcessingEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualTeardownStartDate'
  OpActualTeardownStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualTeardownStartTme'
  OpActualTeardownStartTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'OpActualExecutionEndDate'
  OpActualExecutionEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'EarliestScheduledWaitStartTime'
  EarliestScheduledWaitStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'EarliestScheduledWaitEndDate'
  EarliestScheduledWaitEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'EarliestScheduledWaitEndTime'
  EarliestScheduledWaitEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestScheduledWaitStartDate'
  LatestScheduledWaitStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestScheduledWaitStartTime'
  LatestScheduledWaitStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestScheduledWaitEndDate'
  LatestScheduledWaitEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'LatestScheduledWaitEndTime'
  LatestScheduledWaitEndTime : Time;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM durata pausa'
  @sap.quickinfo : 'Unità per durata pausa'
  @sap.semantics : 'unit-of-measure'
  BreakDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BreakDurationUnit'
  @sap.label : 'SumPlannedBreakDuration'
  SumPlannedBreakDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM tempo trasf. std'
  @sap.quickinfo : 'Unità del tempo di trasferimento standard'
  @sap.semantics : 'unit-of-measure'
  StandardMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'StandardMoveDurationUnit'
  @sap.label : 'SumStandardMoveDuration'
  SumStandardMoveDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Utà durata coda std'
  @sap.quickinfo : 'Unità per la durata coda standard'
  @sap.semantics : 'unit-of-measure'
  StandardQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'StandardQueueDurationUnit'
  @sap.label : 'SumStandardQueueDuration'
  SumStandardQueueDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità dur. coda min.'
  @sap.quickinfo : 'Unità per durata coda minima'
  @sap.semantics : 'unit-of-measure'
  MinimumQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumQueueDurationUnit'
  @sap.label : 'SumMinimumQueueDuration'
  SumMinimumQueueDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM tempo trasf. min.'
  @sap.quickinfo : 'Unità del tempo minimo di trasferimento'
  @sap.semantics : 'unit-of-measure'
  MinimumMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumMoveDurationUnit'
  @sap.label : 'SumMinimumMoveDuration'
  SumMinimumMoveDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OperationStandardDurationUnit'
  @sap.label : 'SumOperationStandardDuration'
  SumOperationStandardDuration : Decimal(5, 1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Utà durata std'
  @sap.quickinfo : 'Unità durata standard'
  @sap.semantics : 'unit-of-measure'
  OperationStandardDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumDurationUnit'
  @sap.label : 'SumMinimumDuration'
  SumMinimumDuration : Decimal(5, 1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità per durata minima'
  @sap.quickinfo : 'Unità per la durata minima'
  @sap.semantics : 'unit-of-measure'
  MinimumDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumDurationUnit'
  @sap.label : 'SumScheduledMoveDuration'
  SumScheduledMoveDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo trasp.'
  @sap.quickinfo : 'Unità di misura per tempo di trasporto'
  @sap.semantics : 'unit-of-measure'
  ScheduledMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumScheduledQueueDuration'
  SumScheduledQueueDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo coda'
  @sap.quickinfo : 'Unità di misura per tempo di coda'
  @sap.semantics : 'unit-of-measure'
  ScheduledQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumOpPlannedSetupDurn'
  SumOpPlannedSetupDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo attr.'
  @sap.quickinfo : 'Unità di misura tempo attrezzaggio'
  @sap.semantics : 'unit-of-measure'
  OpPlannedSetupDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumOpPlannedProcessingDurn'
  SumOpPlannedProcessingDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo lavor.'
  @sap.quickinfo : 'Unità di misura del tempo di lavorazione'
  @sap.semantics : 'unit-of-measure'
  OpPlannedProcessingDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'SumOpPlannedTeardownDurn'
  SumOpPlannedTeardownDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'UM disattrezzaggio'
  @sap.quickinfo : 'Unità di misura disattrezzaggio'
  @sap.semantics : 'unit-of-measure'
  OpPlannedTeardownDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ActualForecastDurationUnit'
  @sap.label : 'SumActualForecastDuration'
  SumActualForecastDuration : Decimal(5, 1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di durata di previsione effettiva'
  @sap.quickinfo : 'Unità di durata di previsione da conferma'
  @sap.semantics : 'unit-of-measure'
  ActualForecastDurationUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data in. riferimento'
  @sap.quickinfo : 'Data di riferimento per inizio della sotto-operazione'
  StartDateOffsetReferenceCode : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità offset inizio'
  @sap.quickinfo : 'Unità per inizio offset'
  @sap.semantics : 'unit-of-measure'
  StartDateOffsetDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'StartDateOffsetDurationUnit'
  @sap.label : 'SumStartDateOffsetDuration'
  SumStartDateOffsetDuration : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data fn. riferimento'
  @sap.quickinfo : 'Data di riferimento per fine della sotto-operazione'
  EndDateOffsetReferenceCode : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità fine offset'
  @sap.quickinfo : 'Unità per fine offset'
  @sap.semantics : 'unit-of-measure'
  EndDateOffsetDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'EndDateOffsetDurationUnit'
  @sap.label : 'SumEndDateOffsetDuration'
  SumEndDateOffsetDuration : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiave val. standard'
  @sap.quickinfo : 'Chiave valore standard'
  StandardWorkFormulaParamGroup : String(4);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità operazione'
  @sap.quickinfo : 'Unità di misura operazione'
  @sap.semantics : 'unit-of-measure'
  OperationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OperationUnit'
  @sap.label : 'SumOpQtyToBaseQtyDnmntr'
  SumOpQtyToBaseQtyDnmntr : Decimal(5, 0);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OperationUnit'
  @sap.label : 'SumOpQtyToBaseQtyNmrtr'
  SumOpQtyToBaseQtyNmrtr : Decimal(5, 0);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Qtà ott.in utà ord.'
  @sap.quickinfo : 'Quantità ottenuta confermata in unità di misura ordine'
  OpTotConfdYieldQtyInOrdQtyUnit : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 1'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 1'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit1 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit1'
  @sap.label : 'SumOpConfirmedWorkQuantity1'
  SumOpConfirmedWorkQuantity1 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 1 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà di lavoro restante 1 è prevista'
  NoFurtherOpWorkQuantity1IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 2'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 2'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit2 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit2'
  @sap.label : 'SumOpConfirmedWorkQuantity2'
  SumOpConfirmedWorkQuantity2 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 2 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 2 prevista'
  NoFurtherOpWorkQuantity2IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 3'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 3'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit3 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit3'
  @sap.label : 'SumOpConfirmedWorkQuantity3'
  SumOpConfirmedWorkQuantity3 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 3 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 3 prevista'
  NoFurtherOpWorkQuantity3IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 4'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 4'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit4 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit4'
  @sap.label : 'SumOpConfirmedWorkQuantity4'
  SumOpConfirmedWorkQuantity4 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 4 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 4 prevista'
  NoFurtherOpWorkQuantity4IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM per quantità di lavoro confermata 5'
  @sap.quickinfo : 'Unità di misura per quantità di lavoro confermata 5'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit5 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit5'
  @sap.label : 'SumOpConfirmedWorkQuantity5'
  SumOpConfirmedWorkQuantity5 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna qtà lavoro restante 5 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 5 prevista'
  NoFurtherOpWorkQuantity5IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ness. qtà lavoro restante 6 prevista'
  @sap.quickinfo : 'Indicatore: nessuna qtà lavoro restante 6 prevista'
  NoFurtherOpWorkQuantity6IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 1'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 1'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit1 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit1'
  @sap.label : 'SumWorkCenterStandardWorkQty1'
  SumWorkCenterStandardWorkQty1 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 1'
  CostCtrActivityType1 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 2'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 2'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit2 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit2'
  @sap.label : 'SumWorkCenterStandardWorkQty2'
  SumWorkCenterStandardWorkQty2 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 2'
  CostCtrActivityType2 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 3'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 3'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit3 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit3'
  @sap.label : 'SumWorkCenterStandardWorkQty3'
  SumWorkCenterStandardWorkQty3 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumWorkCenterStandardWorkQty6'
  SumWorkCenterStandardWorkQty6 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 6'
  CostCtrActivityType6 : String(6);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity1'
  SumForecastWorkQuantity1 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity2'
  SumForecastWorkQuantity2 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity3'
  SumForecastWorkQuantity3 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity4'
  SumForecastWorkQuantity4 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity5'
  SumForecastWorkQuantity5 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'SumForecastWorkQuantity6'
  SumForecastWorkQuantity6 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Business process'
  BusinessProcess : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di processo'
  @sap.quickinfo : 'Unità di misura della quantità per business process'
  @sap.semantics : 'unit-of-measure'
  BusinessProcessEntryUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BusinessProcessEntryUnit'
  @sap.label : 'SumBusinessProcessConfirmedQty'
  SumBusinessProcessConfirmedQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Nessuna att. res.'
  @sap.quickinfo : 'Nessuna qtà residua prevista per business process'
  NoFurtherBusinessProcQtyIsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità proc. residua'
  @sap.quickinfo : 'Unità per la quantità residua di business process'
  @sap.semantics : 'unit-of-measure'
  BusinessProcRemainingQtyUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BusinessProcRemainingQtyUnit'
  @sap.label : 'SumBusinessProcessRemainingQty'
  SumBusinessProcessRemainingQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'ID istanza attrezzaggio'
  @sap.quickinfo : 'Network att. operazione: ID istanza attrezzaggio'
  SetupOpActyNtwkInstance : Integer;
  @sap.required.in.filter : 'false'
  @sap.label : 'ID istanza produzione'
  @sap.quickinfo : 'Network att. operazione: ID istanza produzione'
  ProduceOpActyNtwkInstance : Integer;
  @sap.required.in.filter : 'false'
  @sap.label : 'ID istanza disattrezzaggio'
  @sap.quickinfo : 'Network att. operazione: ID istanza disattrezzaggio'
  TeardownOpActyNtwkInstance : Integer;
  @sap.required.in.filter : 'false'
  @sap.label : 'CampoDefinDaUtente'
  @sap.quickinfo : 'Campo utente con 10 caratteri'
  FreeDefinedAttribute03 : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'CampoDefinDaUtente'
  @sap.quickinfo : 'Campo utente con 10 caratteri'
  FreeDefinedAttribute04 : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità per campi quantità'
  @sap.semantics : 'unit-of-measure'
  FreeDefinedQuantity1Unit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedQuantity1Unit'
  @sap.label : 'SumFreeDefinedQuantity1'
  SumFreeDefinedQuantity1 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità per campi quantità'
  @sap.semantics : 'unit-of-measure'
  FreeDefinedQuantity2Unit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedQuantity2Unit'
  @sap.label : 'SumFreeDefinedQuantity2'
  SumFreeDefinedQuantity2 : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità campi valore'
  @sap.semantics : 'currency-code'
  FreeDefinedAmount1Currency : String(5);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedAmount1Currency'
  @sap.label : 'SumFreeDefinedAmount1'
  SumFreeDefinedAmount1 : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità campi valore'
  @sap.semantics : 'currency-code'
  FreeDefinedAmount2Currency : String(5);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedAmount2Currency'
  @sap.label : 'SumFreeDefinedAmount2'
  SumFreeDefinedAmount2 : Decimal(13, 3);
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente data'
  @sap.quickinfo : 'Campo utente per data'
  FreeDefinedDate1 : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente data'
  @sap.quickinfo : 'Campo utente per data'
  FreeDefinedDate2 : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Cmp utente cd.'
  @sap.quickinfo : 'Campo utente: codici di valutazione'
  FreeDefinedIndicator1 : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Cmp utente cd.'
  @sap.quickinfo : 'Campo utente: codici di valutazione'
  FreeDefinedIndicator2 : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di produzione'
  @sap.quickinfo : 'Unità di misura di produzione'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un. quant. lavoro 6'
  @sap.quickinfo : 'Unità di quantità di lavoro standard 6'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit6 : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'ZZ1_I_COMBPRODORDAPI'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_I_COMBPRODORDAPI {
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
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria ordine'
  @sap.quickinfo : 'Categoria dell''ordine'
  ManufacturingOrderCategory : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di ordine'
  ManufacturingOrderType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Esiste testo esteso'
  @sap.quickinfo : 'Codice di ''esistenza testo esteso'''
  ManufacturingOrderHasLongText : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lingua del testo esteso'
  LongTextLanguageCode : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Importanza ordine'
  @sap.quickinfo : 'Codice importanza ordine'
  ManufacturingOrderImportance : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Flag di canc.'
  @sap.quickinfo : 'Flag di cancellazione'
  IsMarkedForDeletion : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Consegna completata'
  @sap.quickinfo : 'Codice di consegna finale'
  IsCompletelyDelivered : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizioni multiple'
  @sap.quickinfo : 'Ordine con più posizioni'
  MfgOrderHasMultipleItems : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Network ordini'
  @sap.quickinfo : 'L''ordine fa parte del network di ordini'
  MfgOrderIsPartOfCollvOrder : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Liv.'
  @sap.quickinfo : 'Livello (per esplosioni della distinta base multilivello)'
  MfgOrderHierarchyLevel : Decimal(2, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'CCST non automatico'
  @sap.quickinfo : 'Codice: calcolo costi non automatico'
  OrderIsNotCostedAutomatically : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Schedul. non autom.'
  @sap.quickinfo : 'Codice: non effettuare schedulazione automatica'
  OrdIsNotSchedldAutomatically : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Elabor. flessibile'
  @sap.quickinfo : 'Elaborazione flessibile'
  ProdnProcgIsFlexible : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data di cr. ordine'
  @sap.quickinfo : 'Data di creazione ordine'
  CreationDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora creazione ordine'
  @sap.quickinfo : 'Ora di creazione ordine'
  CreationTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Autore'
  @sap.quickinfo : 'Nome autore acquisizione'
  CreatedByUser : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data modifica'
  @sap.quickinfo : 'Data modifica dell''anagrafica ordine'
  LastChangeDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora di modifica'
  LastChangeTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Autore ult.mod.'
  @sap.quickinfo : 'Autore dell''ultima modifica'
  LastChangedByUser : String(12);
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
  @sap.label : 'Magazzino'
  StorageLocation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Partita'
  @sap.quickinfo : 'Numero partita'
  Batch : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Destin. merci'
  GoodsRecipientName : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Punto di scarico'
  UnloadingPointName : String(25);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Poss. util. stock'
  @sap.quickinfo : 'Codice possibilità di utilizzo stock'
  InventoryUsabilityCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tempo elab. EM'
  @sap.quickinfo : 'Durata elaborazione entrata merci in giorni'
  MaterialGoodsReceiptDuration : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiave distribuzione'
  @sap.quickinfo : 'Chiave distribuzione pianif. fabbisogni'
  QuantityDistributionKey : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Segmento di stock'
  StockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Totale n. di serie'
  NumberOfSerialNumbers : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. rilev. per CQA'
  @sap.quickinfo : 'Ordine area prod. rilev. per controlli qualità ampliati'
  ExtdQualityCheckIsRequired : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID interno ordine'
  @sap.quickinfo : 'ID interno dell''ordine'
  MfgOrderInternalID : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine riferimento'
  @sap.quickinfo : 'Numero dell''ordine di riferimento'
  ReferenceOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine principale'
  @sap.quickinfo : 'Ordine principale all''interno della lavorazione in corso'
  LeadingOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine superiore'
  @sap.quickinfo : 'Numero dell''ordine superiore'
  SuperiorOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Divisa dell''ordine'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Div. di produzione'
  @sap.quickinfo : 'Divisione di produzione'
  ProductionPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Div. pianificazione'
  @sap.quickinfo : 'Divisione di pianificazione per ordine'
  PlanningPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Area pian. MRP'
  MRPArea : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile MRP'
  MRPController : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile di produzione'
  ProductionSupervisor : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profilo di pianificazione produzione'
  @sap.quickinfo : 'Profilo di pianificazione della produzione'
  ProductionSchedulingProfile : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gr. resp. pian.'
  @sap.quickinfo : 'Gruppo di responsabili della pianificazione o reparto'
  ResponsiblePlannerGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Versione di prod.'
  @sap.quickinfo : 'Versione di produzione'
  ProductionVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine di vendita'
  SalesOrder : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. ordine vendita'
  @sap.quickinfo : 'Posizione ordine di vendita'
  SalesOrderItem : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID interno WBS'
  @sap.quickinfo : 'Elemento WBS'
  WBSElementInternalID_2 : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Impegno'
  @sap.quickinfo : 'Numero dell''impegno / del fabbisogno dipendente'
  Reservation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prenotazione di liquidazione'
  SettlementReservation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Conferma'
  @sap.quickinfo : 'Numero di conferma dell''operazione'
  MfgOrderConfirmation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di conferme'
  NumberOfMfgOrderConfirmations : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine pianificato'
  PlannedOrder : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fabbisogno capacità'
  @sap.quickinfo : 'ID del record fabbisogno capacità'
  CapacityRequirement : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lotto di controllo'
  @sap.quickinfo : 'Numero lotto di controllo'
  InspectionLot : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di modifica'
  ChangeNumber : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stato di revisione'
  MaterialRevisionLevel_2 : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di pianificazione base'
  BasicSchedulingType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di pianificazione prevista'
  ForecastSchedulingType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero oggetto'
  @sap.quickinfo : 'ID interno oggetto'
  ObjectInternalID : String(22);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Config. prodotto'
  @sap.quickinfo : 'Configurazione prodotto'
  ProductConfiguration : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Variante parametro di validità'
  EffectivityParameterVariant : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Applicazione'
  ConditionApplication : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Versione'
  @sap.quickinfo : 'Versione della disponibilità di capacità'
  CapacityActiveVersion : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Senza fabb. capacità'
  @sap.quickinfo : 'Indicatore: non creare fabbisogni di capacità'
  CapacityRqmtHasNotToBeCreated : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero progressivo'
  @sap.quickinfo : 'Numero progressivo dell''ordine'
  OrderSequenceNumber : String(14);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stato suddivisione'
  @sap.quickinfo : 'Stato ordine in una gerarchia di suddivisione'
  MfgOrderSplitStatus : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Materiale DO'
  @sap.quickinfo : 'Materiale distinta delle operazioni'
  BillOfOperationsMaterial : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo DO'
  @sap.quickinfo : 'Tipo distinta delle operazioni'
  BillOfOperationsType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo dist. oper.'
  @sap.quickinfo : 'Gruppo distinte delle operazioni'
  BillOfOperationsGroup : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Variante DO'
  @sap.quickinfo : 'Variante distinta delle operazioni'
  BillOfOperationsVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore interno'
  BOOInternalVersionCounter : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Applicazione DO'
  @sap.quickinfo : 'Applicazione distinta delle operazioni'
  BillOfOperationsApplication : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Util. DO'
  @sap.quickinfo : 'Utilizzo distinta delle operazioni'
  BillOfOperationsUsage : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Vers. ciclo lavoro'
  @sap.quickinfo : 'Versione ciclo di lavoro'
  BillOfOperationsVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data esplosione'
  @sap.quickinfo : 'Data dell''esplosione ciclo'
  BOOExplosionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio validità'
  BOOValidityStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria Db'
  @sap.quickinfo : 'Codice categoria distinta base'
  BillOfMaterialCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base'
  BillOfMaterialInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base alt.'
  @sap.quickinfo : 'Distinta base alternativa'
  BillOfMaterialVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Util. distinta base'
  @sap.quickinfo : 'Utilizzo della distinta base'
  BillOfMaterialVariantUsage : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Versione Db'
  BillOfMaterialVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data esplosione Db'
  @sap.quickinfo : 'Data esplosione per distinta base e ciclo di lavoro'
  BOMExplosionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Inizio validità'
  @sap.quickinfo : 'Data inizio validità'
  BOMValidityStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Settore contabile'
  BusinessArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Società'
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling area'
  ControllingArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profit center'
  ProfitCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Centro di costo'
  @sap.quickinfo : 'CdC per scarico dei costi semplice'
  CostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Centro costo resp.'
  @sap.quickinfo : 'Centro di costo responsabile'
  ResponsibleCostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Voce di costo'
  @sap.quickinfo : 'Voce di costo di scarico costi'
  CostElement : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Schema CCST'
  CostingSheet : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Conto Co.Ge.'
  @sap.quickinfo : 'Conto Co.Ge. per scarico dei costi semplice'
  GLAccount : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Collettore costi'
  @sap.quickinfo : 'Collettore costi per processo produzione'
  ProductCostCollector : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Var.calc. costi eff.'
  @sap.quickinfo : 'Variante di calcolo dei costi effettivi'
  ActualCostsCostingVariant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Var. costi pian.'
  @sap.quickinfo : 'Variante di calcolo dei costi pianificati'
  PlannedCostsCostingVariant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Classe dell''oggetto CO'
  ControllingObjectClass : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Area funzionale'
  FunctionalArea : String(16);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reg. bas. su eventi'
  @sap.quickinfo : 'Registrazione basata su eventi'
  EventBasedPostingMethod : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profilo buffer programmazione'
  @sap.quickinfo : 'Profilo di programmazione per buffer'
  SchedulingFloatProfile : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'M. in. sic.'
  @sap.quickinfo : 'Margine iniziale di sicurezza in giorni lavorativi'
  FloatBeforeProductionInWrkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Margine di sicurezza dopo la produzione'
  @sap.quickinfo : 'Margine di sicurezza dopo la produzione in giorni lavorativi'
  FloatAfterProductionInWorkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Orizzonte rilascio'
  @sap.quickinfo : 'Orizzonte di rilascio in giorni'
  ReleasePeriodInWorkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Date schedulate modificate'
  @sap.quickinfo : 'Indicatore: modifica alle date schedulate'
  ChangeToScheduledDatesIsMade : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data inizio pian.'
  @sap.quickinfo : 'Data inizio pianificata per ordine di produzione'
  MfgOrderPlannedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora inizio pian.'
  @sap.quickinfo : 'Ora inizio pianificata per ordine di produzione'
  MfgOrderPlannedStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Dt.fine pian.'
  @sap.quickinfo : 'Data di fine pianificata ordine di produzione'
  MfgOrderPlannedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora di fine pian.'
  @sap.quickinfo : 'Ora di fine pianificata per ordine di produzione'
  MfgOrderPlannedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data ril.pianificata'
  @sap.quickinfo : 'Data di rilascio pianificata ordine di produzione'
  MfgOrderPlannedReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data inizio sched.'
  @sap.quickinfo : 'Data inizio schedulata per ordine di produzione'
  MfgOrderScheduledStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora inizio sched.'
  @sap.quickinfo : 'Ora inizio schedulata per ordine di produzione'
  MfgOrderScheduledStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data fine schedulata'
  @sap.quickinfo : 'Data fine schedulata per ordine di produzione'
  MfgOrderScheduledEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora fine schedulata'
  @sap.quickinfo : 'Ora fine schedulata per ordine di produzione'
  MfgOrderScheduledEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data rilascio schedulata'
  @sap.quickinfo : 'Data di rilascio schedulata per ordine di produzione'
  MfgOrderScheduledReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data di inizio eff.'
  @sap.quickinfo : 'Data di inizio effettiva dell''ordine di produzione'
  MfgOrderActualStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora inizio effettiva'
  @sap.quickinfo : 'Ora di inizio effettiva dell''ordine di produzione'
  MfgOrderActualStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data fine effettiva'
  @sap.quickinfo : 'Data di fine effettiva ordine di produzione'
  MfgOrderActualEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data ril. effettiva'
  @sap.quickinfo : 'Data di rilascio effettivo dell''ordine di produzione'
  MfgOrderActualReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data fine confermata'
  @sap.quickinfo : 'Data di fine confermata ordine di produzione'
  MfgOrderConfirmedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora fine confermata'
  @sap.quickinfo : 'Ora di fine confermata per ordine di produzione'
  MfgOrderConfirmedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data conferma'
  @sap.quickinfo : 'Data conferma generale'
  MfgOrderTotalCommitmentDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiusura tecnica'
  @sap.quickinfo : 'Data di chiusura tenica'
  MfgOrderActualCompletionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data eff. consegna'
  @sap.quickinfo : 'Data effettiva di consegna'
  MfgOrderItemActualDeliveryDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di produzione'
  @sap.quickinfo : 'Unità di misura di produzione'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
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
  @sap.label : 'Qtà ott. conf.'
  @sap.quickinfo : 'Qtà ottenuta confermata dalla conferma d''ordine'
  @sap.filterable : 'false'
  MfgOrderConfirmedYieldQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Scarto conf.'
  @sap.quickinfo : 'Quantità di scarto confermata nella conferma ordine'
  @sap.filterable : 'false'
  MfgOrderConfirmedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Rifinitura conf.'
  @sap.quickinfo : 'Quantità rifinitura confermata totale'
  @sap.filterable : 'false'
  MfgOrderConfirmedReworkQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Scostamento previsto'
  @sap.quickinfo : 'Scostamento quantità ottenuta previsto'
  @sap.filterable : 'false'
  ExpectedDeviationQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Qtà entrata merci'
  @sap.quickinfo : 'Quantità di entrata merci per posizione ordine'
  @sap.filterable : 'false'
  ActualDeliveredQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  MasterProductionOrder : String(12);
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
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  FshMprodOrd : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. prod. combinato'
  @sap.quickinfo : 'Ordine prod. principale comb.'
  CprodOrd : String(12);
  to_ZZ1_C_COMBINEDPRODORDER : Association to ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_COMBINEDPRODORDER {  };
  to_ZZ1_C_COMBORDER_COMP : Association to many ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_COMBORDER_COMP {  };
  to_ZZ1_C_MASTERORDER_COMP : Association to many ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MASTERORDER_COMP {  };
  to_ZZ1_C_MASTERPRODORDER : Association to ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MASTERPRODORDER {  };
  to_ZZ1_C_MFG_COMBINEDOPER : Association to many ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_COMBINEDOPER {  };
  to_ZZ1_C_MFG_MASTEROPER : Association to many ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_MASTEROPER {  };
  to_ZZ1_C_MFG_OrderComp : Association to many ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_OrderComp {  };
  to_ZZ1_C_MFG_ORDEROPER : Association to many ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_ORDEROPER {  };
};

