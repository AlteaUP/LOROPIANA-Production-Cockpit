/* checksum : efad7bda4691cfb0d38116490fbfa018 */
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
@sap.label : 'Account Assignment Category'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_AccountAssignmentCategory {
  @sap.display.format : 'UpperCase'
  @sap.text : 'AccountAssignmentCategory_Text'
  @sap.label : 'Acct Assignment Cat.'
  @sap.quickinfo : 'Account Assignment Category'
  key AccountAssignmentCategory : String(1) not null;
  @sap.label : 'Acct Assgnt. Cat. Desc.'
  @sap.quickinfo : 'Account Assignment Category Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AccountAssignmentCategory_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consumption posting'
  @sap.quickinfo : 'Indicator: Consumption posting (Purchasing)'
  ConsumptionPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Stock'
  @sap.quickinfo : 'Special Stock Indicator'
  InventorySpecialStockType : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
@sap.label : 'Address'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Address {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @sap.label : 'Address UUID'
  @sap.quickinfo : 'UUID Used in the Address'
  AddressUUID : UUID;
  @sap.label : 'c/o'
  @sap.quickinfo : 'c/o name'
  CareOfName : String(40);
  @sap.label : 'Street 5'
  AdditionalStreetSuffixName : String(40);
  @sap.label : 'Language Key'
  CorrespondenceLanguage : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Method'
  @sap.quickinfo : 'Communication Method (Key) (Business Address Services)'
  PrfrdCommMediumType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box'
  POBox : String(10);
  @sap.label : 'PO Box w/o No.'
  @sap.quickinfo : 'Flag: PO Box Without Number'
  POBoxIsWithoutNumber : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Postal Code'
  POBoxPostalCode : String(10);
  @sap.label : 'PO Box Lobby'
  POBoxLobbyName : String(40);
  @sap.label : 'PO Box City'
  @sap.quickinfo : 'PO Box city'
  POBoxDeviatingCityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Region'
  @sap.quickinfo : 'Region for PO Box (Country/Region, State, Province, ...)'
  POBoxDeviatingRegion : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Ctry/Region'
  @sap.quickinfo : 'PO Box of Country/Region'
  POBoxDeviatingCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delvry Serv Type'
  @sap.quickinfo : 'Type of Delivery Service'
  DeliveryServiceTypeCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Service No.'
  @sap.quickinfo : 'Number of Delivery Service'
  DeliveryServiceNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Time Zone'
  @sap.quickinfo : 'Address Time Zone'
  AddressTimeZone : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Test stat./City file'
  @sap.quickinfo : 'City file test status'
  CityFileTestStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Undeliverable'
  @sap.quickinfo : 'Street Address Undeliverable Flag'
  AddressStreetUnusable : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Undeliverable'
  @sap.quickinfo : 'PO Box Address Undeliverable Flag'
  AddressPostBoxUnusable : String(4);
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full name of a party (Bus. Partner, Org. Unit, Doc. address)'
  FullName : String(80);
  @sap.label : 'City'
  CityName : String(40);
  @sap.label : 'District'
  District : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'City Code'
  @sap.quickinfo : 'City code for city/street file'
  CityCode : String(12);
  @sap.label : 'Different City'
  @sap.quickinfo : 'City (different from postal city)'
  HomeCityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City postal code'
  PostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Postal Code'
  @sap.quickinfo : 'Company Postal Code (for Large Customers)'
  CompanyPostalCode : String(10);
  @sap.label : 'Street'
  StreetName : String(60);
  @sap.label : 'Street 2'
  StreetPrefixName : String(40);
  @sap.label : 'Street 3'
  AdditionalStreetPrefixName : String(40);
  @sap.label : 'Street 4'
  StreetSuffixName : String(40);
  @sap.label : 'House Number'
  HouseNumber : String(10);
  @sap.label : 'Supplement'
  @sap.quickinfo : 'House number supplement'
  HouseNumberSupplementText : String(10);
  @sap.label : 'Building Code'
  @sap.quickinfo : 'Building (Number or Code)'
  Building : String(20);
  @sap.label : 'Floor'
  @sap.quickinfo : 'Floor in building'
  Floor : String(10);
  @sap.label : 'Room Number'
  @sap.quickinfo : 'Room or Apartment Number'
  RoomNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.label : 'County'
  County : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'County code'
  @sap.quickinfo : 'County code for county'
  CountyCode : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Township code'
  @sap.quickinfo : 'Township code for Township'
  TownshipCode : String(8);
  @sap.label : 'Township'
  TownshipName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title Key'
  @sap.quickinfo : 'Form-of-Address Key'
  FormOfAddress : String(4);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Name 2'
  BusinessPartnerName2 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Version'
  @sap.quickinfo : 'Version ID for International Addresses'
  Nation : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'First Telephone No.: Dialing Code + Number'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'First Fax No.: Area Code + Number'
  FaxNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search Term 1'
  SearchTerm1 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search Term 2'
  SearchTerm2 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Street'
  @sap.quickinfo : 'Street Name in Uppercase for Search Help'
  StreetSearch : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'City'
  @sap.quickinfo : 'City name in Uppercase for Search Help'
  CitySearch : String(25);
  @sap.label : 'Name 3'
  BusinessPartnerName3 : String(40);
  @sap.label : 'Name 4'
  BusinessPartnerName4 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportation Zone'
  @sap.quickinfo : 'Transportation zone to or from which the goods are delivered'
  TransportZone : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'City Code'
  @sap.quickinfo : 'City PO box code (City file)'
  AddressCityPostBoxCode : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person Number'
  Person : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Assortment List Type'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_AssortmentListType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'AssortmentListType_Text'
  @sap.label : 'Assortment List Type'
  key AssortmentListType : String(1) not null;
  @sap.label : 'Description'
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
  @sap.label : 'Basic Material'
  key BasicMaterial : String(48) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Batch Split Type'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BatchSplitType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BatchSplitType_Text'
  @sap.label : 'Batch Split Type'
  @sap.quickinfo : 'Batch Split Type Code'
  key BatchSplitType : String(1) not null;
  @sap.label : 'Short Description'
  @sap.quickinfo : 'Short Text for Fixed Values'
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
@sap.label : 'Batch information'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BatchStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Material : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Batch'
  @sap.quickinfo : 'Batch Number'
  key Batch : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Bill of Operations Group'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BillOfOperationsGroup {
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Type'
  @sap.quickinfo : 'Bill of Operations Type'
  key BillOfOperationsType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Group'
  @sap.quickinfo : 'Bill of Operations Group'
  key BillOfOperationsGroup : String(8) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Bill of Operations Type'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BillOfOperationsType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BillOfOperationsType_Text'
  @sap.label : 'BOO Type'
  @sap.quickinfo : 'Bill of Operations Type'
  key BillOfOperationsType : String(1) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of the Task List Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillOfOperationsType_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Application'
  @sap.quickinfo : 'Bill of Operations Application'
  BillOfOperationsApplication : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'BOM Explosion Date'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BOMExplosionDate {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BOMExplosionDateText'
  @sap.label : 'Explosion Date ID'
  @sap.quickinfo : 'Bill of Material Explosion Date ID'
  key BOMExplosionDateID : String(8) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Fixed Key Date'
  BOMExplosionFixedKeyDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  @sap.value.list : 'standard'
  Material : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  @sap.value.list : 'standard'
  Plant : String(4);
  @sap.label : 'Explosion Date Text'
  @sap.quickinfo : 'Text for BOM Explosion Date ID'
  BOMExplosionDateText : String(40);
  @sap.label : 'Item Deleted'
  @sap.quickinfo : 'Item is Deleted'
  IsDeleted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard Variant'
  @sap.quickinfo : 'Parameter Variant/Standard Variant'
  EffectivityParameterVariant : String(12);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Brand'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Brand {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Brand_Text'
  @sap.label : 'Brand'
  key Brand : String(4) not null;
  @sap.label : 'Brand Name'
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
@sap.label : 'Business Area'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BusinessArea {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BusinessArea_Text'
  @sap.label : 'Business Area'
  key BusinessArea : String(4) not null;
  @sap.label : 'Business Area Name'
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
@sap.label : 'Business Area'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BusinessAreaStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BusinessArea_Text'
  @sap.label : 'Business Area'
  key BusinessArea : String(4) not null;
  @sap.label : 'Business Area Name'
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
@sap.label : 'Business Process'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_BusinessProcessStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BusinessProcess_Text'
  @sap.label : 'Business Process'
  key BusinessProcess : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  key ControllingArea : String(4) not null;
  @sap.label : 'Name'
  @sap.quickinfo : 'General Name'
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
@sap.label : 'Capacity Requirement Header'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_CapacityRequirementStdVH {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Capacity Requirement'
  @sap.quickinfo : 'ID of the Capacity Requirements Record'
  key CapacityRequirement : String(12) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Capacity Requirement Item'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_CapRqmtItmStdVH {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Capacity Requirement'
  @sap.quickinfo : 'ID of the Capacity Requirements Record'
  key CapacityRequirement : String(12) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Internal counter'
  key CapacityRequirementItem : String(8) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Change Number'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ChangeMasterStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ChangeNumberDescription'
  @sap.label : 'Change Number'
  key ChangeNumber : String(12) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Change number description'
  ChangeNumberDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  @sap.quickinfo : 'Authorization group for change master record'
  AuthorizationGroup : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Release Key'
  @sap.quickinfo : 'Release Key for Change Master Record'
  ChangeNumberReleaseKey : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Status'
  @sap.quickinfo : 'Status of Change Number'
  ChangeNumberStatus : String(2);
  @sap.label : 'Deletion Flag'
  @sap.quickinfo : 'Deletion Flag for Change Number (Reorganization)'
  ChangeNumberIsMrkdForDeletion : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  ChangeNumberValidFromDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Chart Of Accounts'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ChartOfAccountsStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ChartOfAccounts_Text'
  @sap.label : 'Chart of Accounts'
  key ChartOfAccounts : String(4) not null;
  @sap.label : 'Chart of Accounts Description'
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
@sap.label : 'Chemical Compliance Relevant Indicator'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ChemicalComplianceRelevant {
  @sap.display.format : 'UpperCase'
  @sap.text : 'IsChemicalComplianceRelevant_Text'
  @sap.label : 'Chemical Compliance Relevance Indicator'
  key IsChemicalComplianceRelevant : String(1) not null;
  @sap.label : 'Short Description'
  @sap.quickinfo : 'Short Text for Fixed Values'
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
@sap.label : 'Company Code'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_CompanyCodeStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCodeName'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  CompanyCodeName : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Confirmation Group'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ConfirmationGroup {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Confirmation'
  @sap.quickinfo : 'Completion confirmation number for the operation'
  key ConfirmationGroup : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Controlling Area'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ControllingArea {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControllingAreaName'
  @sap.label : 'Controlling Area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal Year Variant'
  FiscalYearVariant : String(2);
  @sap.label : 'Controlling Area Name'
  ControllingAreaName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Currency/Currency_Text'
  @sap.label : 'Controlling Area Currency'
  @sap.value.list : 'standard'
  @sap.semantics : 'currency-code'
  ControllingAreaCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ChartOfAccounts_Text'
  @sap.label : 'Chart of Accounts'
  @sap.value.list : 'standard'
  ChartOfAccounts : String(4);
  @sap.label : 'Chart of Accounts Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ChartOfAccounts_Text : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center Standard Hierarchy'
  CostCenterStandardHierarchy : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operating concern'
  OperatingConcern : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center Standard Hierarchy'
  ProfitCenterStandardHierarchy : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Process Standard Hierarchy Area'
  BusinessProcessStandardHier : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account for Supplier Down Payments'
  @sap.quickinfo : 'Default General Ledger Account for Supplier Down Payments'
  CreditDownPaymentDefaultGLAcct : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account for Customer Down Payments'
  @sap.quickinfo : 'Default General Ledger Account for Customer Down Payments'
  DebitDownPaymentDefaultGLAcct : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency Type for Controlling Area'
  ControllingAreaCurrencyRole : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'FM Area'
  @sap.quickinfo : 'Financial Management Area'
  FinancialManagementArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Responsible User of Controlling Area'
  ControllingAreaResponsibleUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Default Profit Center'
  @sap.quickinfo : 'Default Profit Center for Nonassigned Processes'
  DefaultProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CtrlgStdFinStatementVersion_Text'
  @sap.label : 'Leading Ctrlg Financial Stmnt Version'
  @sap.quickinfo : 'Leading Controlling Financial Statement Version'
  @sap.value.list : 'standard'
  CtrlgStdFinStatementVersion : String(42);
  @sap.label : 'Financial Statement Description'
  @sap.quickinfo : 'Hierarchy description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CtrlgStdFinStatementVersion_Text : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center Local Currency'
  @sap.quickinfo : 'Local Currency for Profit Center Accounting'
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
@sap.label : 'Controlling Object Class'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ControllingObjectClass {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControllingObjectClass_Text'
  @sap.label : 'Controlling Object Class'
  key ControllingObjectClass : String(2) not null;
  @sap.label : 'Controlling Object Class Name'
  @sap.quickinfo : 'Short Text for Fixed Values'
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
@sap.label : 'Control Recipe Destination'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ControlRecipeDestination {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControlRecipeDestinationName'
  @sap.label : 'Control Recipe Destination'
  key ControlRecipeDestination : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Destination Type'
  @sap.quickinfo : 'Type of Control Recipe Destination'
  ControlRecipeDestinationType : String(1);
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of the Control Recipe Destination'
  ControlRecipeDestinationName : String(20);
  @sap.label : 'Digital Signature'
  @sap.quickinfo : 'Digital Signature in the PI Sheet'
  DigitalSignatureIsRequired : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'No. of Phases'
  @sap.quickinfo : 'Number of Phases Displayed in a PI Sheet'
  NumberOfPhasesDisplayed : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Cost Center'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_CostCenter {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CostCenter_Text'
  @sap.label : 'Cost Center'
  key CostCenter : String(10) not null;
  @sap.label : 'Cost Center Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CostCenter_Text : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Valid To Date'
  ValidityEndDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  ValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Actual primary costs'
  @sap.quickinfo : 'Lock Indicator for Actual Primary Postings'
  IsBlkdForPrimaryCostsPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plan primary costs'
  @sap.quickinfo : 'Lock Indicator for Plan Primary Costs'
  IsBlockedForPlanPrimaryCosts : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center Category'
  CostCenterCategory : String(1);
  @sap.label : 'Person Responsible'
  CostCtrResponsiblePersonName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User Responsible'
  CostCtrResponsibleUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  CostCenterCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costing Sheet'
  CostingSheet : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Logical System'
  LogicalSystem : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Entered On'
  CostCenterCreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Entered By'
  CostCenterCreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Actl Sec. Costs'
  @sap.quickinfo : 'Lock Indicator for Actual Secondary Costs'
  IsBlkdForSecondaryCostsPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Actual Revenues'
  @sap.quickinfo : 'Lock Indicator for Actual Revenue Postings'
  IsBlockedForRevenuePosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commitment Update'
  @sap.quickinfo : 'Lock Indicator for Commitment Update'
  IsBlockedForCommitmentPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lock Plan Sec Costs'
  @sap.quickinfo : 'Lock Indicator for Plan Secondary Costs'
  IsBlockedForPlanSecondaryCosts : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lock Planning Revn'
  @sap.quickinfo : 'Lock Indicator for Planning Revenues'
  IsBlockedForPlanRevenues : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Allocation Methods'
  @sap.quickinfo : 'Indicator for Allowed Allocation Methods'
  CostCenterAllocationMethod : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Record Quantity'
  @sap.quickinfo : 'Indicator for Recording Consumption Quantities'
  ConsumptionQtyIsRecorded : String(1);
  @sap.label : 'Department'
  Department : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subsequent Cost Ctr.'
  @sap.quickinfo : 'Subsequent Cost Center'
  SubsequentCostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Usage'
  @sap.quickinfo : 'Usage of the condition table'
  ConditionUsage : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Application'
  ConditionApplication : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overhead Key'
  @sap.quickinfo : 'CO-CCA Overhead Key'
  CostCenterAccountingOverhead : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3);
  @sap.label : 'Title'
  FormOfAddress : String(15);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  AddressName : String(35);
  @sap.label : 'Name 2'
  AddressAdditionalName : String(35);
  @sap.label : 'Name 3'
  CostCenterAddrName3 : String(35);
  @sap.label : 'Name 4'
  CostCenterAddrName4 : String(35);
  @sap.label : 'City'
  CityName : String(35);
  @sap.label : 'District'
  District : String(35);
  @sap.label : 'Street'
  @sap.quickinfo : 'Street and House Number'
  StreetAddressName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box'
  POBox : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  PostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'P.O. Box Postal Code'
  POBoxPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.label : 'Telebox Number'
  TeleboxNumber : String(15);
  @sap.label : 'Telephone 1'
  @sap.quickinfo : 'First telephone number'
  PhoneNumber1 : String(16);
  @sap.label : 'Telephone 2'
  @sap.quickinfo : 'Second telephone number'
  PhoneNumber2 : String(16);
  @sap.label : 'Fax Number'
  FaxNumber : String(31);
  @sap.label : 'Teletex Number'
  TeletexNumber : String(30);
  @sap.label : 'Telex Number'
  TelexNumber : String(30);
  @sap.label : 'Data line'
  @sap.quickinfo : 'Data communication line no.'
  DataCommunicationPhoneNumber : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Printer Destination'
  @sap.quickinfo : 'Printer Destination for CCtr Report'
  CostCenterPrinterDestination : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Hierarchy Area'
  @sap.quickinfo : 'Standard Hierarchy Area'
  CostCenterStandardHierArea : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Collector Key'
  CostCollector : String(23);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Complete'
  @sap.quickinfo : 'Completion Flag for the Cost Center Master Record'
  CostCenterIsComplete : String(1);
  @sap.label : 'Cost Center Is Stat.'
  @sap.quickinfo : 'Indicator: Cost Center is Statistical Account Assignment'
  IsStatisticalCostCenter : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object number'
  ObjectInternalID : String(22);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Function'
  @sap.quickinfo : 'Function of Cost Center'
  CostCenterFunction : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Altern. Function'
  @sap.quickinfo : 'Alternative Function of Cost Center'
  CostCenterAlternativeFunction : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Area'
  FunctionalArea : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Activity-Indep.Temp.'
  @sap.quickinfo : 'Template for Activity-Independent Formula Planning'
  ActyIndepFormulaPlanningTmpl : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Activity-Dep.Tmp'
  @sap.quickinfo : 'Template for Activity-Dependent Formula Planning'
  ActyDepdntFormulaPlanningTmpl : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acty-IndepTemplAlloc'
  @sap.quickinfo : 'Template: Activity-Independent Allocation to Cost Center'
  ActyIndependentAllocationTmpl : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acty-Dep Templ.Alloc'
  @sap.quickinfo : 'Template: Activity-Dependent Allocation to Cost Center'
  ActyDependentAllocationTmpl : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Templ.: Stat. KF'
  @sap.quickinfo : 'CCA_TEMPL_SKI'
  ActlIndepStatisticalKeyFigures : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Templ.: Stat. KF'
  @sap.quickinfo : 'Template: Act. Stat. Key Figure - Cost Center/Activity Type'
  ActlDepStatisticalKeyFigures : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Joint venture'
  JointVenture : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Recovery Indicator'
  JointVentureRecoveryCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equity Type'
  JointVentureEquityType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'JV Object Type'
  @sap.quickinfo : 'Joint Venture Object Type'
  JointVentureObjectType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'JIB/JIBE Class'
  JointVentureClass : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'JIB/JIBE Subclass A'
  JointVentureSubClass : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Budget Cost Center'
  @sap.quickinfo : 'Budget-Carrying Cost Center'
  BudgetCarryingCostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Availy Ctrl Prfl'
  @sap.quickinfo : 'Budget Availability Control: Profile'
  AvailabilityControlProfile : String(6);
  @sap.label : 'AVC is Active'
  @sap.quickinfo : 'Budget Availability Control for Cost Centers is Active'
  AvailabilityControlIsActive : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fund'
  Fund : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grant'
  GrantID : String(20);
  @sap.label : 'Fund Fixed Assignment'
  @sap.quickinfo : 'Indicator for Fund with Fixed Assignment'
  FundIsFixAssigned : Boolean;
  @sap.label : 'Grant Fixed Assignment'
  @sap.quickinfo : 'Indicator for Grant with Fixed Assignment'
  GrantIDIsFixAssigned : Boolean;
  @sap.label : 'Functional Area Fixed Assignment'
  @sap.quickinfo : 'Indicator for Functional Area with Fixed Assignment'
  FunctionalAreaIsFixAssigned : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Cost Center'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_CostCenterStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CostCenter_Text'
  @sap.label : 'Cost Center'
  key CostCenter : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Valid To Date'
  key ValidityEndDate : Date not null;
  @sap.label : 'Cost Center Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CostCenter_Text : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  ValidityStartDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Cost Element'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_CostElement {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Element'
  key CostElement : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  ValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Valid To Date'
  ValidityEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'CElem category'
  @sap.quickinfo : 'Cost element category'
  CostElementCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Record Quantity'
  @sap.quickinfo : 'Indicator for Recording Consumption Quantities'
  ConsumptionQtyIsRecorded : String(1);
  @sap.label : 'Internal UoM'
  @sap.quickinfo : 'Unit of Measurement'
  @sap.semantics : 'unit-of-measure'
  UnitOfMeasure : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chart of Accounts'
  ChartOfAccounts : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account'
  @sap.quickinfo : 'G/L Account Number'
  GLAccount : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Entered On'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Entered By'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Area'
  FunctionalArea : String(16);
  @sap.label : 'Apply Statistically'
  @sap.quickinfo : 'Account assignment objects will be assigned (statistical)'
  AcctAssignmentIsStatistical : Boolean;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  LastChangeDateTime : DateTime;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Costing Variant'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_CostingVariant {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CostingVariant_Text'
  @sap.label : 'Costing Variant'
  key CostingVariant : String(4) not null;
  @sap.label : 'Name'
  @sap.quickinfo : 'Name of Costing Variant'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CostingVariant_Text : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Variant'
  @sap.quickinfo : 'Valuation Variant in Costing'
  ValuationVariant : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reference Variant'
  CostEstimateReferenceVariant : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costing Type'
  CostingType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transfer Control'
  CostEstimateTransferControl : String(4);
  @sap.label : 'Defaults Changeable'
  @sap.quickinfo : 'Defaults Can Be Changed'
  CostEstTransfCtrlIsChangeable : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Object'
  CostingReferenceObject : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Currency'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Currency {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Currency_Text'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  key Currency : String(5) not null;
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Currency_Text : String(40);
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Decimal Places'
  @sap.quickinfo : 'Number of decimal places'
  Decimals : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Code'
  @sap.quickinfo : 'ISO Currency Code'
  CurrencyISOCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative Key'
  AlternativeCurrencyKey : String(3);
  @sap.label : 'Primary'
  @sap.quickinfo : 'Primary SAP Currency Code for ISO Code'
  IsPrimaryCurrencyForISOCrcy : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Customer'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Customer {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CustomerName'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.label : 'Name of Customer'
  CustomerName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Name'
  @sap.quickinfo : 'Customer Full Name'
  CustomerFullName : String(220);
  @sap.label : 'Name of Customer'
  @sap.quickinfo : 'Customer Name'
  BPCustomerName : String(81);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Name'
  @sap.quickinfo : 'Customer Full Name'
  BPCustomerFullName : String(220);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Created On'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address'
  AddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CustomerClassification_Text'
  @sap.label : 'Customer Classific.'
  @sap.quickinfo : 'Customer Classification'
  CustomerClassification : String(2);
  @sap.label : 'Customer Classification Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CustomerClassification_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Customer Account Group'
  CustomerAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery block'
  @sap.quickinfo : 'Central delivery block for the customer'
  DeliveryIsBlocked : String(2);
  @sap.label : 'Posting Block'
  @sap.quickinfo : 'Central posting block'
  PostingIsBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing block'
  @sap.quickinfo : 'Central billing block for customer'
  BillingIsBlockedForCustomer : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order block'
  @sap.quickinfo : 'Central order block for customer'
  OrderIsBlockedForCustomer : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 1'
  @sap.quickinfo : 'International Location Number (Part 1)'
  InternationalLocationNumber1 : String(7);
  @sap.label : 'One-time account'
  @sap.quickinfo : 'Indicator: Is the account a one-time account?'
  IsOneTimeAccount : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry'
  @sap.quickinfo : 'Industry Key'
  Industry : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax number type'
  @sap.quickinfo : 'Tax Number Type'
  TaxNumberType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 1'
  TaxNumber1 : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 2'
  TaxNumber2 : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 3'
  TaxNumber3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 4'
  TaxNumber4 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 5'
  TaxNumber5 : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 6'
  TaxNumber6 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Key'
  CustomerCorporateGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nielsen indicator'
  @sap.quickinfo : 'Nielsen ID'
  NielsenRegion : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 1'
  IndustryCode1 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 2'
  IndustryCode2 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 3'
  IndustryCode3 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 4'
  IndustryCode4 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code 5'
  IndustryCode5 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  OrganizationBPName1 : String(35);
  @sap.label : 'Name 2'
  OrganizationBPName2 : String(35);
  @sap.label : 'City'
  CityName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  PostalCode : String(10);
  @sap.label : 'Street'
  @sap.quickinfo : 'Street and House Number'
  StreetName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search term'
  @sap.quickinfo : 'Sort field'
  SortField : String(10);
  @sap.label : 'Fax Number'
  FaxNumber : String(31);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Suframa Code'
  BR_SUFRAMACode : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.label : 'Telephone 1'
  @sap.quickinfo : 'First telephone number'
  TelephoneNumber1 : String(16);
  @sap.label : 'Telephone 2'
  @sap.quickinfo : 'Second telephone number'
  TelephoneNumber2 : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative Payer'
  @sap.quickinfo : 'Account Number of an Alternative Payer'
  AlternativePayerAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'DME Recipient Code'
  @sap.quickinfo : 'Recipient Code for Data Medium Exchange'
  DataMediumExchangeIndicator : String(1);
  @sap.label : 'Liable for VAT'
  VATLiability : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purpose Completed'
  @sap.quickinfo : 'Business Purpose Completed Flag'
  IsBusinessPurposeCompleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Type'
  ResponsibleType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal address'
  @sap.quickinfo : 'Account number of the master record with the fiscal address'
  FiscalAddress : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Natural Person'
  NFPartnerIsNaturalPerson : String(1);
  @sap.label : 'Deletion Flag'
  @sap.quickinfo : 'Central Deletion Flag for Master Record'
  DeletionIndicator : Boolean;
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trading Partner No.'
  @sap.quickinfo : 'Company ID of Trading Partner'
  TradingPartner : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deliv Date Rule'
  @sap.quickinfo : 'Delivery Date Rule'
  DeliveryDateTypeRule : String(1);
  @sap.label : 'Express station'
  @sap.quickinfo : 'Express train station'
  ExpressTrainStationName : String(25);
  @sap.label : 'Train station'
  TrainStationName : String(25);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 2'
  @sap.quickinfo : 'International Location Number (Part 2)'
  InternationalLocationNumber2 : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Check digit'
  @sap.quickinfo : 'Check digit for the international location number'
  InternationalLocationNumber3 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'City Code'
  CityCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'County Code'
  County : String(3);
  @sap.label : 'Unloading points'
  @sap.quickinfo : 'Indicator: Unloading points exist'
  CustomerHasUnloadingPoint : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Working times'
  @sap.quickinfo : 'Working Time Calendar'
  CustomerWorkingTimeCalendar : String(2);
  @sap.label : 'Competitors'
  @sap.quickinfo : 'Indicator: Competitor'
  IsCompetitor : Boolean;
  @sap.label : 'Rep''s Name'
  @sap.quickinfo : 'Name of Representative'
  TaxInvoiceRepresentativeName : String(10);
  @sap.label : 'Type of Business'
  BusinessType : String(30);
  @sap.label : 'Type of Industry'
  IndustryType : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consolidated Invoic.'
  @sap.quickinfo : 'Consolidated Invoicing for Taiwan'
  TW_CollvBillingIsSupported : String(1);
  @sap.label : 'Alt.payer in doc?'
  @sap.quickinfo : 'Indicator: Is an alternative payer allowed in document?'
  AlternativePayeeIsAllowed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Attribute 1'
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
  @sap.label : 'Attribute 5'
  FreeDefinedAttribute05 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Attribute 6'
  FreeDefinedAttribute06 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Attribute 7'
  FreeDefinedAttribute07 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commercial Area'
  FreeDefinedAttribute08 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Like For Like Flag'
  @sap.quickinfo : 'L4L Flag'
  FreeDefinedAttribute09 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sell-Out Currency'
  FreeDefinedAttribute10 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Reason'
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
  @sap.label : 'Condition group 3'
  @sap.quickinfo : 'Customer condition group 3'
  CustomerConditionGroup3 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition group 4'
  @sap.quickinfo : 'Customer condition group 4'
  CustomerConditionGroup4 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition group 5'
  @sap.quickinfo : 'Customer condition group 5'
  CustomerConditionGroup5 : String(2);
  @sap.label : 'Prospect'
  @sap.quickinfo : 'Indicator: Sales prospect'
  IsSalesProspect : Boolean;
  @sap.label : 'Payment block'
  @sap.quickinfo : 'Payment Block'
  PaymentIsBlockedForCustomer : Boolean;
  @sap.label : 'Consumer'
  @sap.quickinfo : 'Indicator: Consumer'
  IsConsumer : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Ctrlr. Set'
  @sap.quickinfo : 'BP: Data Controller Set Flag'
  DataControllerSet : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController1 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController2 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController3 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController4 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController5 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController6 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController7 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController8 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController9 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController10 : String(30);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Name 2'
  BusinessPartnerName2 : String(40);
  @sap.label : 'Name 3'
  BusinessPartnerName3 : String(40);
  @sap.label : 'Name 4'
  BusinessPartnerName4 : String(40);
  @sap.label : 'City'
  BPAddrCityName : String(40);
  @sap.label : 'Street'
  BPAddrStreetName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search Term 1'
  AddressSearchTerm1 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search Term 2'
  AddressSearchTerm2 : String(20);
  @sap.label : 'District'
  DistrictName : String(40);
  @sap.label : 'PO Box City'
  @sap.quickinfo : 'PO Box city'
  POBoxDeviatingCityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title Key'
  @sap.quickinfo : 'Form-of-Address Key'
  BusinessPartnerFormOfAddress : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Customer'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Customer_VH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BPCustomerName'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.label : 'Customer Name 1'
  @sap.quickinfo : 'Name 1'
  OrganizationBPName1 : String(35);
  @sap.label : 'Business Partner Name 1'
  @sap.quickinfo : 'Name 1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Customer Name 2'
  @sap.quickinfo : 'Name 2'
  OrganizationBPName2 : String(35);
  @sap.label : 'Business Partner Name 2'
  @sap.quickinfo : 'Name 2'
  BusinessPartnerName2 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region Key'
  Country : String(3);
  @sap.label : 'City'
  CityName : String(35);
  @sap.label : 'Business Partner Address City'
  @sap.quickinfo : 'City'
  BPAddrCityName : String(40);
  @sap.label : 'Street'
  @sap.quickinfo : 'Street and House Number'
  StreetName : String(35);
  @sap.label : 'Business Partner Address Street'
  @sap.quickinfo : 'Street'
  BPAddrStreetName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  PostalCode : String(10);
  @sap.label : 'Customer Name'
  @sap.quickinfo : 'Name of Customer'
  CustomerName : String(80);
  @sap.label : 'Business Partner Customer Name'
  @sap.quickinfo : 'Customer Name'
  BPCustomerName : String(81);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Customer Account Group'
  CustomerAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purpose Complete Flag'
  @sap.quickinfo : 'Business Purpose Completed Flag'
  IsBusinessPurposeCompleted : String(1);
  @sap.label : 'Competitors'
  @sap.quickinfo : 'Indicator: Competitor'
  IsCompetitor : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  BusinessPartner : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner Type'
  BusinessPartnerType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Ctrlr. Set'
  @sap.quickinfo : 'BP: Data Controller Set Flag'
  DataControllerSet : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController1 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController2 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController3 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController4 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController5 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController6 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController7 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController8 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController9 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController10 : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Debit Credit Code'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_DebitCreditCode {
  @sap.display.format : 'UpperCase'
  @sap.text : 'DebitCreditCode_Text'
  @sap.label : 'Debit/Credit Code'
  key DebitCreditCode : String(1) not null;
  @sap.label : 'D/C Code Name'
  @sap.quickinfo : 'Debit/Credit Code Name'
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
@sap.label : 'Division'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Division {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Division_Text'
  @sap.label : 'Division'
  key Division : String(2) not null;
  @sap.label : 'Division Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Division_Text : String(20);
  @sap.label : 'Division OID'
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
@sap.label : 'Employee Suitability'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EmployeeSuitability {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'EmployeeSuitability_Text'
  @sap.label : 'Suitability'
  key EmployeeSuitability : String(2) not null;
  @sap.label : 'Suitability'
  @sap.quickinfo : 'Text for suitability'
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
@sap.label : 'Employee Wage Group'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EmployeeWageGroup {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'EmployeeWageGroup_Text'
  @sap.label : 'Wage Group'
  key EmployeeWageGroup : String(3) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of the wage group'
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
@sap.label : 'Handling Unit Type'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_HandlingUnitType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'HandlingUnitType_Text'
  @sap.label : 'Handling Unit Type'
  key HandlingUnitType : String(4) not null;
  @sap.label : 'Description'
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
@sap.label : 'Material Handling'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_MaterialHandling {
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaterialHandling_Text'
  @sap.label : 'Handling Indicator'
  key MaterialHandling : String(4) not null;
  @sap.label : 'Description'
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
@sap.label : 'Quality Inspection Group'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_QualityInspectionGroup {
  @sap.display.format : 'UpperCase'
  @sap.text : 'QualityInspectionGroup_Text'
  @sap.label : 'Quality Inspec. Grp'
  @sap.quickinfo : 'Quality Inspection Group'
  key QualityInspectionGroup : String(4) not null;
  @sap.label : 'Description'
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
@sap.label : 'Serial Number Profile'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_SerialNumberProfile {
  @sap.display.format : 'UpperCase'
  @sap.text : 'SerialNumberProfile_Text'
  @sap.label : 'Serial No. Profile'
  @sap.quickinfo : 'Serial Number Profile'
  key SerialNumberProfile : String(4) not null;
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SerialNumberProfile_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ser. No. Requirement'
  @sap.quickinfo : 'Serial Number Requirement'
  SerialNumberRequiredLevel : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Warehouse Product Group'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_WarehouseMaterialGroup {
  @sap.display.format : 'UpperCase'
  @sap.text : 'WarehouseProductGroup_Text'
  @sap.label : 'Whse Product Group'
  @sap.quickinfo : 'Warehouse Product Group'
  key WarehouseProductGroup : String(4) not null;
  @sap.label : 'Description'
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
@sap.label : 'Warehouse Storage Condition'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_EWM_WhseStorageCondition {
  @sap.display.format : 'UpperCase'
  @sap.text : 'WarehouseStorageCondition_Text'
  @sap.label : 'Whse Stor. Condition'
  @sap.quickinfo : 'Warehouse Storage Condition'
  key WarehouseStorageCondition : String(2) not null;
  @sap.label : 'Description'
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
@sap.label : 'External Product Group'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ExtProdGrp {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ExternalProductGroup_Text'
  @sap.label : 'Ext. Product Group'
  @sap.quickinfo : 'External Product Group'
  key ExternalProductGroup : String(18) not null;
  @sap.label : 'Ext. Prod Grp Descr'
  @sap.quickinfo : 'Description for external product group'
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
@sap.label : 'Factory Calendar'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_FactoryCalendar {
  @sap.display.format : 'UpperCase'
  @sap.text : 'FactoryCalendar_Text'
  @sap.label : 'Factory Calendar'
  @sap.quickinfo : 'Factory Calendar ID'
  key FactoryCalendar : String(2) not null;
  @sap.label : 'Calendar Name'
  @sap.quickinfo : 'Factory Calendar Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FactoryCalendar_Text : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Holiday Calendar ID'
  @sap.quickinfo : 'Public Holiday Calendar'
  PublicHolidayCalendar : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Validity Start Year'
  ValidityStartYear : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Validity End Year'
  ValidityEndYear : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Creation Date'
  CreationDate : Date;
  @sap.label : 'Time'
  @sap.quickinfo : 'Entry time'
  CreationTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Monday Is Working Day'
  @sap.quickinfo : 'Indicator: Monday is Working Day'
  MondayIsWorkingDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tuesday Is Working Day'
  @sap.quickinfo : 'Indicator: Tuesday is Working Day'
  TuesdayIsWorkingDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Wednesday Is Working Day'
  @sap.quickinfo : 'Indicator: Wednesday is Working Day'
  WednesdayIsWorkingDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Thursday Is Working Day'
  @sap.quickinfo : 'Indicator: Thursday is Working Day'
  ThursdayIsWorkingDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Friday Is Working Day'
  @sap.quickinfo : 'Indicator: Friday is Working Day'
  FridayIsWorkingDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Saturday Is Working Day'
  @sap.quickinfo : 'Indicator: Saturday is Working Day'
  SaturdayIsWorkingDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sunday Is Working Day'
  @sap.quickinfo : 'Indicator: Sunday is Working Day'
  SundayIsWorkingDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Holiday Is Working Day'
  @sap.quickinfo : 'Indicator: Holiday is Working Day'
  HolidayIsWorkingDay : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'First workday'
  @sap.quickinfo : 'Start of factory calendar day numbering'
  FactoryCalendarStartDayValue : String(5);
  @sap.display.format : 'Date'
  @sap.label : 'Last Change'
  @sap.quickinfo : 'Date of Last Change'
  LastChangeDate : Date;
  @sap.label : 'Changed At'
  @sap.quickinfo : 'Calendar: Creation or change time'
  LastChangeTime : Time;
  @sap.label : 'Factory Calendar Special Rules Existing'
  @sap.quickinfo : 'Factory Calendar Special Rules Are Existing'
  FactoryCalSpclRulesAreExisting : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Financial Statement Hierarchy'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_FinancialStatementHier {
  @sap.display.format : 'UpperCase'
  @sap.text : 'FinancialStatementHierarchy_Text'
  @sap.label : 'Hierarchy ID'
  key FinancialStatementHierarchy : String(42) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Validity End Date'
  key ValidityEndDate : Date not null;
  @sap.label : 'Financial Statement Description'
  @sap.quickinfo : 'Hierarchy description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FinancialStatementHierarchy_Text : String(50);
  @sap.display.format : 'Date'
  @sap.label : 'Validity Start Date'
  ValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Hierarchy Type'
  HierarchyType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Last Changed By'
  LastChangedByUser : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Updated At'
  @sap.quickinfo : 'Last Updated At (Timestamp)'
  LastChangeTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Updated At'
  @sap.quickinfo : 'Last Updated At (Timestamp)'
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
@sap.label : 'Functional Area'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_FunctionalArea {
  @sap.display.format : 'UpperCase'
  @sap.text : 'FunctionalArea_Text'
  @sap.label : 'Functional Area'
  key FunctionalArea : String(16) not null;
  @sap.label : 'Functional Area Name'
  @sap.quickinfo : 'Name of the Functional Area'
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
@sap.label : 'General Ledger Account'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_GLAccountStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'GLAccount_Text'
  @sap.label : 'G/L Account'
  @sap.quickinfo : 'G/L Account Number'
  key GLAccount : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.label : 'G/L Account Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  GLAccount_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Acct External ID'
  @sap.quickinfo : 'G/L Account Number'
  GLAccountExternal : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative G/L Account'
  @sap.quickinfo : 'Alternative G/L Account Number In Company Code'
  AlternativeGLAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chart of Accounts'
  ChartOfAccounts : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Group'
  @sap.quickinfo : 'G/L Account Group'
  GLAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account Type'
  @sap.quickinfo : 'Type of a General Ledger Account'
  GLAccountType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reconcil. ID'
  @sap.quickinfo : 'Account Is Reconciliation Account'
  ReconciliationAccountType : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Goods Movement Type'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_GoodsMovementType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'GoodsMovementType_Text'
  @sap.label : 'Movement Type'
  @sap.quickinfo : 'Movement Type (Inventory Management)'
  key GoodsMovementType : String(3) not null;
  @sap.label : 'Movement Type Text'
  @sap.quickinfo : 'Movement Type Text (Inventory Management)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  GoodsMovementType_Text : String(20);
  @sap.label : 'Rev. mvmnt type ind.'
  @sap.quickinfo : 'Reversal movement type'
  IsReversalMovementType : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_DebitCreditCode/DebitCreditCode_Text'
  @sap.label : 'Debit/Credit Ind.'
  @sap.quickinfo : 'Debit/Credit Indicator'
  @sap.value.list : 'fixed-values'
  DebitCreditCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ResvnAcctAssgmtCategory/ResvnAcctAssgmtCategory_Text'
  @sap.label : 'Reserv. cat.'
  @sap.quickinfo : 'Account assignment of reservation'
  @sap.value.list : 'fixed-values'
  ResvnAcctAssgmtCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posting string ref.'
  @sap.quickinfo : 'Posting string reference (Inventory Management)'
  BasicMovementTypeReference : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Goods Movement Type'
  @sap.quickinfo : 'Goods Movement Type (Inventory Management) copied'
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
@sap.label : 'Inspection Lot'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_InspectionLotStdVH {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Inspection Lot'
  @sap.quickinfo : 'Inspection Lot Number'
  key InspectionLot : String(12) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'International Article Number Category'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Intntnlartnmbcat {
  @sap.display.format : 'UpperCase'
  @sap.text : 'InternationalArticleNumberCat_Text'
  @sap.label : 'GTIN Category'
  @sap.quickinfo : 'Category of Global Trade Item Number (GTIN)'
  key InternationalArticleNumberCat : String(2) not null;
  @sap.label : 'Number category text'
  @sap.quickinfo : 'Description of number category'
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
@sap.label : 'Inventory Special Stock Type'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_InventorySpecialStockType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'InventorySpecialStockType_Text'
  @sap.label : 'Special Stock'
  @sap.quickinfo : 'Special Stock Indicator'
  key InventorySpecialStockType : String(1) not null;
  @sap.label : 'Special stock descr.'
  @sap.quickinfo : 'Description of special stock'
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
@sap.label : 'Valuation Type of Special Stock'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_InvtrySpecialStockValnType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'InventorySpecialStockValnType_Text'
  @sap.label : 'Inventory Special Stock Valuation Type'
  key InventorySpecialStockValnType : String(1) not null;
  @sap.label : 'Special Stock Valuation Type Name'
  @sap.quickinfo : 'Name for Valuation Type of Inventory Special Stock'
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
@sap.label : 'Item Category Group'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ItemCategoryGroup {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ItemCategoryGroup_Text'
  @sap.label : 'Item Category Group'
  @sap.quickinfo : 'Item Category Group from Material Master'
  key ItemCategoryGroup : String(4) not null;
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ItemCategoryGroup_Text : String(20);
  @sap.label : 'Item Cat. Group OID'
  @sap.quickinfo : 'Item Category Group OID'
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
@sap.label : 'Language'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Language {
  @sap.text : 'Language_Text'
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.label : 'Name'
  @sap.quickinfo : 'Name of Language'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Language_Text : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Language Code'
  @sap.quickinfo : '2-Character SAP Language Code'
  LanguageISOCode : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Lead Time Reduction Strategy'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_LeadTimeReductionStrategy {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'LeadTimeReductionStrategy_Text'
  @sap.label : 'Reduction Strategy'
  @sap.quickinfo : 'Reduction Strategy per Operation'
  key LeadTimeReductionStrategy : String(2) not null;
  @sap.label : 'Strategy Name'
  @sap.quickinfo : 'Description of reduction strategy'
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
@sap.label : 'Logistics Order'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_LogisticsOrder {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  OrderID : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Order Category'
  OrderCategory : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order Type'
  OrderType : String(4);
  @sap.label : 'Order Description'
  OrderDescription : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Order Has Long Text'
  OrderHasLongText : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Long Text Language'
  LongTextLanguage : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Deletion Flag'
  IsMarkedForDeletion : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Multiple Items'
  @sap.quickinfo : 'Order Has Multiple Items'
  MfgOrderHasMultipleItems : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Collective Order'
  @sap.quickinfo : 'Order is Part of Collective Order'
  MfgOrderIsPartOfCollvOrder : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Superior Order'
  @sap.quickinfo : 'Number of Superior Order'
  MfgOrderSuperiorMfgOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Refurbishment order'
  @sap.quickinfo : 'Refurbishment order indicator (PM)'
  OrderIsRefurbishmentOrder : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Statistical'
  @sap.quickinfo : 'Identifier for Statistical Order'
  IsStatisticalOrder : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priority'
  @sap.quickinfo : 'Order priority'
  PriorityCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Level'
  @sap.quickinfo : 'Level (in multi-level BOM explosions)'
  MfgOrderHierarchyLevel : Decimal(2, 0);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Flexible Processing'
  ProdnProcgIsFlexible : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Event-Based Posting'
  OrderIsEventBasedPosting : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Event-Based Posting'
  EventBasedPostingMethod : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  CreationDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Time created'
  CreationTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Entered By'
  CreatedByUser : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Change Date for Order Master'
  LastChangeDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Changed At'
  LastChangeTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Last Changed By'
  LastChangedByUser : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Opertn Task List No.'
  @sap.quickinfo : 'Routing Number of Operations in the Order'
  OrderInternalBillOfOperations : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Order'
  @sap.quickinfo : 'Reference Order Number'
  ReferenceOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Leading Order'
  @sap.quickinfo : 'Leading Order in Current Processing'
  LeadingOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  @sap.value.list : 'standard'
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Main Work Center'
  @sap.quickinfo : 'Main work center for maintenance tasks'
  @sap.value.list : 'standard'
  MainWorkCenter : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant for WorkCenter'
  @sap.quickinfo : 'Plant associated with main work center'
  @sap.value.list : 'standard'
  MainWorkCenterPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Location/Plant'
  @sap.quickinfo : 'Location'
  MaintenanceObjectLocation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Location Plant'
  LocationPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP controller'
  @sap.quickinfo : 'MRP controller for the order'
  MRPController : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Prodn Supervisor'
  @sap.quickinfo : 'Production Supervisor'
  ProductionSupervisor : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Prod. Sched. Profile'
  @sap.quickinfo : 'Production Scheduling Profile'
  ProductionSchedulingProfile : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planner Group'
  @sap.quickinfo : 'Responsible Planner Group or Department'
  ResponsiblePlannerGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.quickinfo : 'Sales Order Number'
  @sap.value.list : 'standard'
  SalesOrder : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales Order Item'
  @sap.quickinfo : 'Item Number in Sales Order'
  @sap.value.list : 'standard'
  SalesOrderItem : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElementInternalID : String(24);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Internal ID'
  @sap.quickinfo : 'WBS Element'
  @sap.value.list : 'standard'
  WBSElementInternalID_2 : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Project def.'
  @sap.quickinfo : 'Project definition'
  ProjectInternalID : String(24);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Project Def.'
  @sap.quickinfo : 'Project (internal)'
  ProjectInternalID_2 : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subnetwork of'
  @sap.quickinfo : 'Number of superior network'
  SuperiorProjectNetwork : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation'
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  Reservation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation'
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  SettlementReservation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Confirmation'
  @sap.quickinfo : 'Completion confirmation number for the operation'
  MfgOrderConfirmation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Internal counter'
  MfgOrderConfirmationCount : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Capacity Requirement'
  @sap.quickinfo : 'ID of the Capacity Requirements Record'
  @sap.value.list : 'standard'
  CapacityRequirement : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Inspection Lot'
  @sap.quickinfo : 'Inspection Lot Number'
  @sap.value.list : 'standard'
  InspectionLot : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Change Number'
  @sap.value.list : 'standard'
  ChangeNumber : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Change Number'
  EngineeringChangeOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scheduling type'
  BasicSchedulingType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sched. type forecast'
  @sap.quickinfo : 'Scheduling type (forecast)'
  ForecastSchedulingType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scheduling basis'
  @sap.quickinfo : 'Basis for scheduling'
  ProdAvailyCheckPlanningType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Interest Profile'
  @sap.quickinfo : 'Interest Profile for Project/Order Interest Calculation'
  ProjInterestCalcProfile : String(7);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account assignment'
  @sap.quickinfo : 'Indicator for the account assignment of a network(hdr/act.)'
  NtwkAccountAssignmentCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Network Profile'
  NetworkProfile : String(7);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object number'
  ObjectInternalID : String(22);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Internal object no.'
  @sap.quickinfo : 'Configuration (internal object number)'
  ProductConfiguration : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Application'
  ConditionApplication : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'External order no.'
  @sap.quickinfo : 'External order number'
  ExternalOrder : String(20);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overhead key'
  OverheadCode : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'No automatic costing'
  @sap.quickinfo : 'Indicator: Do not cost automatically'
  OrderIsNotCostedAutomatically : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'No auto. scheduling'
  @sap.quickinfo : 'Indicator: Do not schedule automatically'
  OrdIsNotSchedldAutomatically : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Version'
  @sap.quickinfo : 'Version of Available Capacity'
  CapacityActiveVersion : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'No Cap. Requirements'
  @sap.quickinfo : 'Indicator: Do not Create Capacity Requirements'
  CapacityRqmtHasNotToBeCreated : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequence Number'
  @sap.quickinfo : 'Sequence Number Order'
  OrderSequenceNumber : String(14);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Revision Level'
  MaterialRevisionLevel : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Revision Level'
  MaterialRevisionLevel_2 : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Split Status'
  @sap.quickinfo : 'Status of an Order in a Split Hierarchy'
  MfgOrderSplitStatus : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'EQC Relevant Order'
  @sap.quickinfo : 'Shop Floor Order is Relevant for Extended Quality Checks'
  ExtdQualityCheckIsRequired : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Master Prod. Ord.'
  @sap.quickinfo : 'Master Production Order Number'
  MasterProductionOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  @sap.value.list : 'standard'
  BusinessArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Requesting co. code'
  @sap.quickinfo : 'Requesting company code'
  RequestingCompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  ControllingArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  @sap.value.list : 'standard'
  ProfitCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center'
  @sap.quickinfo : 'Cost Center for Basic Settlement'
  @sap.value.list : 'standard'
  CostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Request. cost center'
  @sap.quickinfo : 'Requesting cost center'
  RequestingCostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Respons. Cost Center'
  @sap.quickinfo : 'Responsible Cost Center'
  @sap.value.list : 'standard'
  ResponsibleCostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Element'
  @sap.quickinfo : 'Settlement Cost Element'
  CostElement : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account'
  @sap.quickinfo : 'G/L Account for Basic Settlement'
  GLAccount : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Collector'
  @sap.quickinfo : 'Cost Collector for Production Process'
  ProductCostCollector : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costing Sheet'
  CostingSheet : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Object Class'
  ControllingObjectClass : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Area'
  FunctionalArea : String(16);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Joint venture'
  JointVenture : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'JIB/JIBE Class'
  JointVentureClass : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'JIB/JIBE Subclass A'
  JointVentureSubClass : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Orig. Cost Object'
  @sap.quickinfo : 'JV original cost object'
  JointVentureOriginalCostObject : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'JV Object Type'
  @sap.quickinfo : 'Joint Venture Object Type'
  JointVentureObjectType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Investment Reason'
  @sap.quickinfo : 'Reason for Investment'
  InvestmentReason : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Envir. Investment'
  @sap.quickinfo : 'Reason for Environmental Investment'
  EnvironmentalInvestmentReason : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Act. Costing Variant'
  @sap.quickinfo : 'Costing Variant For Actual Costs'
  ActualCostsCostingVariant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plnd Costing Variant'
  @sap.quickinfo : 'Costing Variant for Planned Costs'
  PlannedCostsCostingVariant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Processing group'
  OrderProcessingGroup : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Material'
  @sap.quickinfo : 'Bill of Operations Material'
  @sap.value.list : 'standard'
  Material : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Type'
  @sap.quickinfo : 'Bill of Operations Type'
  BillOfOperationsType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill of Operations'
  @sap.quickinfo : 'Bill of Operations ID'
  BillOfOperations : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Group'
  @sap.quickinfo : 'Bill of Operations Group'
  BillOfOperationsGroup : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Variant'
  @sap.quickinfo : 'Bill of Operations Variant'
  BillOfOperationsVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Internal counter'
  BOOInternalVersionCounter : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Application'
  @sap.quickinfo : 'Bill of Operations Application'
  BillOfOperationsApplication : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOO Usage'
  @sap.quickinfo : 'Bill of Operations Usage'
  BillOfOperationsUsage : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Routing Version'
  BillOfOperationsVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Explosion Date'
  @sap.quickinfo : 'Date for Routing Explosion'
  BOOExplosionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  BOOValidityStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOM Category'
  @sap.quickinfo : 'Bill of Material Category Code'
  BillOfMaterialCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill of Material'
  BillOfMaterial : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill Of Material'
  BillOfMaterialInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative BOM'
  BillOfMaterialVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOM Usage'
  BillOfMaterialVariantUsage : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOM Version'
  BillOfMaterialVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'BOM Explosion Date'
  @sap.quickinfo : 'Date of BOM Explosion/Routing Transfer'
  BOMExplosionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  BOMValidityStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scheduling Float Profile'
  @sap.quickinfo : 'Scheduling Profile for Floats'
  SchedulingFloatProfile : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Float Before Production'
  @sap.quickinfo : 'Float Before Production in Workdays'
  FloatBeforeProductionInWrkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Float After Production'
  @sap.quickinfo : 'Float After Production in Workdays'
  FloatAfterProductionInWorkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Release period'
  @sap.quickinfo : 'Release period (in days)'
  ReleasePeriodInWorkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Scheduled Dates Changed'
  @sap.quickinfo : 'Indicator: Change to Scheduled Dates'
  ChangeToScheduledDatesIsMade : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Basic Start Date'
  PlannedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Basic start time'
  @sap.quickinfo : 'Basic Start (Time)'
  PlannedStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Basic finish date'
  PlannedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Basic Finish Time'
  @sap.quickinfo : 'Basic Finish (Time)'
  PlannedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Scheduled start'
  ScheduledBasicStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Scheduled start time'
  @sap.quickinfo : 'Scheduled Start (Time)'
  ScheduledBasicStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Scheduled finish'
  ScheduledBasicEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Scheduled fin. time'
  @sap.quickinfo : 'Scheduled finish time'
  ScheduledBasicEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Sched. release date'
  @sap.quickinfo : 'Scheduled release date'
  ScheduledReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Actual start date'
  ActualStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'ActualStartTime'
  @sap.quickinfo : 'Actual start time'
  ActualStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Actual finish date'
  ActualEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Actual release date'
  ActualReleasedDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Actual Finish Date'
  @sap.quickinfo : 'Confirmed Order Finish Date'
  ConfirmedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Actual Finish Time'
  @sap.quickinfo : 'Confirmed Order Finish (Time)'
  ConfirmedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Scheduled start'
  @sap.quickinfo : 'Scheduled forecast start'
  ScheduledForecastedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Sched. start time'
  @sap.quickinfo : 'Scheduled start time (Forecast)'
  ScheduledForecastedStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Scheduled finish'
  @sap.quickinfo : 'Scheduled forecast finish'
  ScheduledForecastedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Sched. finish time'
  @sap.quickinfo : 'Scheduled forecast finish time'
  ScheduledForecastedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Sched. release date'
  @sap.quickinfo : 'Scheduled release date (forecast)'
  ScheduledFcstdReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Start date'
  @sap.quickinfo : 'Forecast start date'
  ForecastedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Start time'
  @sap.quickinfo : 'Forecast start (time)'
  ForecastedStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Finish date'
  @sap.quickinfo : 'Finish date (forecast)'
  ForecastedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Finish time'
  @sap.quickinfo : 'Forecast finish (time)'
  ForecastedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Commitment Date'
  @sap.quickinfo : 'Total Commitment Date'
  TotalCommitmentDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Scheduled on'
  @sap.quickinfo : 'Date of the Last Scheduling'
  LastScheduledDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Planned release'
  @sap.quickinfo : 'Planned release date'
  PlannedReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Planned completion'
  @sap.quickinfo : 'Planned completion date'
  PlannedCompletionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Technical Completion'
  @sap.quickinfo : 'Technical Completion Date'
  TechnicalCompletionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Total Order Quantity'
  @sap.filterable : 'false'
  OrderPlannedTotalQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Total Scrap Quantity'
  @sap.quickinfo : 'Total Scrap Quantity in the Order'
  @sap.filterable : 'false'
  OrderPlannedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Confirmed Yield'
  @sap.quickinfo : 'Confirmed Yield Quantity From Order Confirmation'
  @sap.filterable : 'false'
  OrderConfirmedYieldQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Confirmed Scrap'
  @sap.quickinfo : 'Confirmed Scrap Quantity From Order Confirmation'
  @sap.filterable : 'false'
  OrderConfirmedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Confirmed Rework'
  @sap.quickinfo : 'Total Confirmed Rework Quantity'
  @sap.filterable : 'false'
  MfgOrderConfirmedReworkQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'From Lot Size'
  @sap.filterable : 'false'
  MaterialFromLotSizeQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BaseUnit'
  @sap.label : 'To Lot Size'
  @sap.filterable : 'false'
  MaterialToLotSizeQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  MaterialBaseUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'MaterialBaseUnit'
  @sap.label : 'Base quantity'
  @sap.filterable : 'false'
  PlannedTotalQtyInBaseUnit : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Order Currency'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'Currency'
  @sap.label : 'Estimated costs'
  @sap.quickinfo : 'Estimated total costs of order'
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
@sap.label : 'Manufacturing Order Operation'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ManufacturingOrderOperation {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Order Internal ID'
  MfgOrderInternalID : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Operation Internal ID'
  @sap.quickinfo : 'Internal Identifier of an Operation or Activity'
  OrderOperationInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Manufacturing Order'
  @sap.quickinfo : 'Manufacturing Order ID'
  @sap.value.list : 'standard'
  ManufacturingOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sequence'
  @sap.quickinfo : 'Manufacturing Order Sequence'
  @sap.value.list : 'standard'
  ManufacturingOrderSequence : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'MfgOrderOperationText'
  @sap.label : 'Operation'
  @sap.quickinfo : 'Manufacturing Order Operation'
  ManufacturingOrderOperation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'MfgOrderOperationText'
  @sap.label : 'Operation or Phase'
  @sap.quickinfo : 'Operation or Phase Number'
  ManufacturingOrderOperation_2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'MfgOrderOperationText'
  @sap.label : 'Suboperation'
  @sap.quickinfo : 'Manufacturing Order Suboperation'
  ManufacturingOrderSubOperation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'MfgOrderOperationText'
  @sap.label : 'Operation or Phase'
  @sap.quickinfo : 'Operation or Phase Number'
  ManufacturingOrdSubOperation_2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Activity'
  @sap.quickinfo : 'Activity Number'
  MfgOrderOperationOrSubOp : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operation or Phase'
  @sap.quickinfo : 'Operation or Phase Number'
  MfgOrderOperationOrSubOp_2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Indicator: Phase'
  MfgOrderOperationIsPhase : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'General counter for order'
  OrderIntBillOfOpItemOfPhase : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Superior Operation'
  MfgOrderPhaseSuperiorOperation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Superior Operation'
  SuperiorOperation_2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.text : 'to_MfgOrderCategory/ManufacturingOrderCategory_Text'
  @sap.label : 'Order Category'
  @sap.quickinfo : 'Manufacturing Order Category'
  @sap.value.list : 'fixed-values'
  ManufacturingOrderCategory : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_MfgOrderType/ManufacturingOrderType_Text'
  @sap.label : 'Order Type'
  @sap.quickinfo : 'Manufacturing Order Type'
  @sap.value.list : 'standard'
  ManufacturingOrderType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ProductionSupervisor/ProductionSupervisorName'
  @sap.label : 'Production Supervisor'
  ProductionSupervisor : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_MRPController/MRPControllerName'
  @sap.label : 'MRP Controller'
  MRPController : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ResponsiblePlannerGroup/ResponsiblePlannerGroupName'
  @sap.label : 'Planner Group'
  @sap.quickinfo : 'Responsible Planner Group or Department'
  @sap.value.list : 'standard'
  ResponsiblePlannerGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Prod. Configuration'
  @sap.quickinfo : 'Product Configuration'
  ProductConfiguration : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Inspection Lot'
  @sap.quickinfo : 'Inspection Lot Number'
  @sap.value.list : 'standard'
  InspectionLot : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order Importance'
  @sap.quickinfo : 'Order Importance Code'
  ManufacturingOrderImportance : String(1);
  @sap.label : 'Operation Text'
  @sap.quickinfo : 'Manufacturing Order Operation Text'
  MfgOrderOperationText : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_OperationStandardTextCode/OperationStandardTextCode_Text'
  @sap.label : 'Operation Standard Text ID'
  @sap.quickinfo : 'Operation Standard Text Internal ID'
  @sap.value.list : 'standard'
  OperationStandardTextCode : String(7);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Long Text Exists'
  OperationHasLongText : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.text : 'to_Language/Language_Text'
  @sap.label : 'Language Key'
  @sap.value.list : 'standard'
  Language : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Deletion Flag'
  OperationIsToBeDeleted : Boolean;
  @odata.Type : 'Edm.Byte'
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Number of Capacities'
  @sap.quickinfo : 'Number of Capacities Required'
  NumberOfCapacities : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'No. of Conf. Slips'
  @sap.quickinfo : 'Number of Confirmation Slips'
  NumberOfConfirmationSlips : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priority'
  OperationImportance : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Superior Op. Node'
  @sap.quickinfo : 'Node Number of the Superior Operation'
  @sap.value.list : 'standard'
  SuperiorOperationInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  @sap.value.list : 'standard'
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Work Center Internal'
  @sap.quickinfo : 'Work Center Internal ID'
  @sap.value.list : 'standard'
  WorkCenterInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Center Type'
  WorkCenterTypeCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Center Type'
  WorkCenterTypeCode_2 : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_OperationControlProfile/OperationControlProfile_Text'
  @sap.label : 'Control Profile'
  @sap.quickinfo : 'Operation Control Profile'
  @sap.value.list : 'standard'
  OperationControlProfile : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ControlRecipeDestination/ControlRecipeDestinationName'
  @sap.label : 'Ctrl Rec.Destination'
  @sap.quickinfo : 'Control Recipe Destination'
  @sap.value.list : 'standard'
  ControlRecipeDestination : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Confirmation'
  @sap.quickinfo : 'Completion confirmation number for the operation'
  @sap.value.list : 'standard'
  OperationConfirmation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Number Of Confirmations'
  NumberOfOperationConfirmations : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_FactoryCalendar/FactoryCalendar_Text'
  @sap.label : 'Factory Calendar'
  @sap.quickinfo : 'Factory Calendar ID'
  @sap.value.list : 'standard'
  FactoryCalendar : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Capacity Requirement'
  @sap.quickinfo : 'ID of the Capacity Requirements Record'
  @sap.value.list : 'standard'
  CapacityRequirement : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Capacity Requirement Item'
  @sap.value.list : 'standard'
  CapacityRequirementItem : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Change Number'
  @sap.value.list : 'standard'
  ChangeNumber : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Number'
  @sap.quickinfo : 'Object Internal ID'
  ObjectInternalID : String(22);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Req. Tracking Number'
  @sap.quickinfo : 'Requirement Tracking Number'
  OperationTrackingNumber : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_BillOfOperationsType/BillOfOperationsType_Text'
  @sap.label : 'BOO Type'
  @sap.quickinfo : 'Bill of Operations Type'
  @sap.value.list : 'fixed-values'
  BillOfOperationsType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group'
  @sap.quickinfo : 'Key for Task List Group'
  @sap.value.list : 'standard'
  BillOfOperationsGroup : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Counter'
  @sap.value.list : 'standard'
  BillOfOperationsVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill of Operation Sequence'
  @sap.value.list : 'standard'
  BillOfOperationsSequence : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Task List Node'
  @sap.quickinfo : 'Number of the Task List Node'
  BOOOperationInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Routing Version'
  BillOfOperationsVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'BOM Category'
  @sap.quickinfo : 'Bill of Material Category Code'
  BillOfMaterialCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill of Material'
  BillOfMaterialInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill Of Material'
  BillOfMaterialInternalID_2 : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'BOM Item'
  @sap.quickinfo : 'Bill of Material Item'
  BillOfMaterialItemNodeNumber : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Internal counter'
  BOMItemNodeCount : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subcontracting'
  @sap.quickinfo : 'Indicator: External Processing Operation with Subcontracting'
  ExtProcgOperationHasSubcontrg : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_PurchasingOrganization/PurchasingOrganizationName'
  @sap.label : 'Purchasing Organization'
  @sap.value.list : 'standard'
  PurchasingOrganization : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_PurchasingGroup/PurchasingGroupName'
  @sap.label : 'Purchasing Group'
  @sap.quickinfo : 'Purchasing Group for External Processing Activity'
  @sap.value.list : 'standard'
  PurchasingGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Requisition'
  @sap.quickinfo : 'Purchase Requisition Number'
  PurchaseRequisition : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Purchase Requisition Item'
  @sap.quickinfo : 'Purchase Requisition Item ID'
  PurchaseRequisitionItem : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Order'
  @sap.quickinfo : 'Purchase Order Number'
  PurchaseOrder : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Purchase Order Item'
  @sap.quickinfo : 'Item Number of Purchase Order'
  PurchaseOrderItem : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Info Record'
  PurchasingInfoRecord : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Price is Fixed'
  @sap.quickinfo : 'Data of Purchasing Info Record is Fixed'
  PurgInfoRecdDataIsFixed : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Info Record Category'
  PurchasingInfoRecordCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  @sap.value.list : 'standard'
  Supplier : String(10);
  @sap.label : 'Goods Recipient'
  GoodsRecipientName : String(12);
  @sap.label : 'Unloading Point'
  UnloadingPointName : String(25);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group'
  MaterialGroup : String(9);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  OpExternalProcessingCurrency : String(5);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OpExternalProcessingCurrency'
  @sap.label : 'Price'
  @sap.filterable : 'false'
  OpExternalProcessingPrice : Decimal(12, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Material Price Unit'
  @sap.quickinfo : 'Material Price Unit Quantity'
  NumberOfOperationPriceUnits : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  @sap.value.list : 'standard'
  BusinessArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ControllingArea/ControllingAreaName'
  @sap.label : 'Controlling Area'
  @sap.value.list : 'standard'
  ControllingArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  @sap.value.list : 'standard'
  ProfitCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reqst. Cost Center'
  @sap.quickinfo : 'Requesting Cost Center'
  @sap.value.list : 'standard'
  RequestingCostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Element'
  @sap.value.list : 'standard'
  CostElement : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_CostingVariant/CostingVariant_Text'
  @sap.label : 'Costing Variant'
  @sap.value.list : 'standard'
  CostingVariant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costing Sheet'
  CostingSheet : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Cost EstimateNo'
  @sap.quickinfo : 'Cost Estimate Number for Cost Est. w/o Qty Structure'
  CostEstimate : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object currency'
  @sap.quickinfo : 'Object currency for network activity'
  @sap.semantics : 'currency-code'
  ControllingObjectCurrency : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ControllingObjectClass/ControllingObjectClass_Text'
  @sap.label : 'Controlling Object Class'
  @sap.value.list : 'standard'
  ControllingObjectClass : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_FunctionalArea/FunctionalArea_Text'
  @sap.label : 'Functional Area'
  @sap.value.list : 'standard'
  FunctionalArea : String(16);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Employee Wage Type'
  EmployeeWageType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_EmployeeWageGroup/EmployeeWageGroup_Text'
  @sap.label : 'Employee Wage Group'
  @sap.value.list : 'standard'
  EmployeeWageGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_EmployeeSuitability/EmployeeSuitability_Text'
  @sap.label : 'Employee Suitability'
  @sap.value.list : 'standard'
  EmployeeSuitability : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'No. of Time Tickets'
  @sap.quickinfo : 'Number of Time Tickets'
  NumberOfTimeTickets : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Personnel'
  @sap.quickinfo : 'Personnel Number'
  @sap.value.list : 'standard'
  Personnel : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Number of Employees'
  NumberOfEmployees : Decimal(5, 2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_OperationSetupGroupCategory/OperationSetupGroupCategory_Text'
  @sap.label : 'Setup Group Category'
  @sap.quickinfo : 'Operation Setup Group Category'
  @sap.value.list : 'standard'
  OperationSetupGroupCategory : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_OperationSetupGroup/OperationSetupGroup_Text'
  @sap.label : 'Setup Group'
  @sap.quickinfo : 'Operation Setup Group'
  @sap.value.list : 'standard'
  OperationSetupGroup : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_OperationSetupType/OperationSetupType_Text'
  @sap.label : 'Setup Type'
  @sap.quickinfo : 'Operation Setup Type'
  @sap.value.list : 'standard'
  OperationSetupType : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Required Overlapping'
  OperationOverlappingIsRequired : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Optional Overlapping'
  OperationOverlappingIsPossible : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Flow Manufacturing'
  OperationsIsAlwaysOverlapping : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Splitting Required'
  OperationSplitIsRequired : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Max Number of Splits'
  @sap.quickinfo : 'Maximum Number of Splits'
  MaximumNumberOfSplits : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_LeadTimeReductionStrategy/LeadTimeReductionStrategy_Text'
  @sap.label : 'Reduction Strategy'
  @sap.quickinfo : 'Operation Lead Time Reduction Strategy'
  @sap.value.list : 'standard'
  LeadTimeReductionStrategy : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reduction Level'
  @sap.quickinfo : 'Reduction Level Which Reduces Operation Lead Time'
  OpSchedldReductionLevel : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Earliest Scheduled Execution Start Date'
  OpErlstSchedldExecStrtDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Earliest Scheduled Execution Start Time'
  OpErlstSchedldExecStrtTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Earliest Scheduled Processing Start Date'
  OpErlstSchedldProcgStrtDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Earliest Scheduled Processing Start Time'
  OpErlstSchedldProcgStrtTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Earliest Scheduled Teardown Start Date'
  OpErlstSchedldTrdwnStrtDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Earliest Scheduled Teardown Start Time'
  OpErlstSchedldTrdwnStrtTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Earliest Scheduled Execution End Date'
  OpErlstSchedldExecEndDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Earliest Scheduled Execution End Time'
  OpErlstSchedldExecEndTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Latest Scheduled Execution Start Date'
  OpLtstSchedldExecStrtDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Latest Scheduled Execution Start Time'
  OpLtstSchedldExecStrtTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Latest Scheduled Processing Start Date'
  OpLtstSchedldProcgStrtDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Latest Scheduled Processing Start Time'
  OpLtstSchedldProcgStrtTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Latest Scheduled Teardown Start Date'
  OpLtstSchedldTrdwnStrtDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Latest Scheduled Teardown Start Time'
  OpLtstSchedldTrdwnStrtTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Latest Scheduled Execution End Date'
  OpLtstSchedldExecEndDte : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Latest Scheduled Execution End Time'
  OpLtstSchedldExecEndTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Earliest Forecast Start Date'
  @sap.quickinfo : 'Earliest Scheduled Forecast Start Date'
  SchedldFcstdEarliestStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Earliest Forecast Start Time'
  @sap.quickinfo : 'Earliest Scheduled Forecast Start Time'
  SchedldFcstdEarliestStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Earliest Forecast End Date'
  @sap.quickinfo : 'Earliest Scheduled Forecast End Date'
  SchedldFcstdEarliestEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Earliest Forecast End Time'
  @sap.quickinfo : 'Earliest Scheduled Forecast End Time'
  SchedldFcstdEarliestEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Latest Forecast Start Date'
  @sap.quickinfo : 'Latest Scheduled Forecast Start Date'
  LatestSchedldFcstdStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Latest Forecast Start Time'
  @sap.quickinfo : 'Latest Scheduled Forecast Start Time'
  SchedldFcstdLatestStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Latest Forecast End Date'
  @sap.quickinfo : 'Latest Scheduled Forecast End Date'
  LatestSchedldFcstdEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Latest Forecast End Time'
  @sap.quickinfo : 'Latest Scheduled Forecast End Time'
  SchedldFcstdLatestEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Confirmed Start Date'
  @sap.quickinfo : 'Operation Confirmed Start Date'
  OperationConfirmedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Confirmed End Date'
  @sap.quickinfo : 'Operation Confirmed End Date'
  OperationConfirmedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Confirmed Execution Start Date'
  @sap.quickinfo : 'Confirmed Start Date of Execution'
  OpActualExecutionStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Confirmed Execution Start Time'
  @sap.quickinfo : 'Confirmed Start Time of Execution'
  OpActualExecutionStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Confirmed Setup End Date'
  @sap.quickinfo : 'Confirmed End Date of Setup'
  OpActualSetupEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Confirmed Setup End Time'
  @sap.quickinfo : 'Confirmed End Time of Setup'
  OpActualSetupEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Confirmed Processing Start Date'
  @sap.quickinfo : 'Confirmed Start Date of Processing'
  OpActualProcessingStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Confirmed Processing Start Time'
  @sap.quickinfo : 'Confirmed Start Time of Processing'
  OpActualProcessingStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Confirmed Processing End Date'
  @sap.quickinfo : 'Confirmed End Date of Processing'
  OpActualProcessingEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Confirmed Processing End Time'
  @sap.quickinfo : 'Confirmed End Time of Processing'
  OpActualProcessingEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Confirmed Teardown Start Date'
  @sap.quickinfo : 'Confirmed Start Date of Teardown'
  OpActualTeardownStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Confirmed Teardown Start Time'
  @sap.quickinfo : 'Confirmed Start Time of Teardown'
  OpActualTeardownStartTme : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Confirmed Execution End Date'
  @sap.quickinfo : 'Confirmed End Date of Execution'
  OpActualExecutionEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Confirmed Execution End Time'
  @sap.quickinfo : 'Confirmed End Time of Execution'
  OpActualExecutionEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Forecast End Date'
  @sap.quickinfo : 'Actual Forecast End Date'
  ActualForecastEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Forecast End Time'
  @sap.quickinfo : 'Actual Forecast End Time'
  ActualForecastEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Erl. Wait Start Date'
  @sap.quickinfo : 'Earliest Scheduled Wait Start Date'
  EarliestScheduledWaitStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Erl. Wait Start Time'
  @sap.quickinfo : 'Earliest Scheduled Wait Start Time'
  EarliestScheduledWaitStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Erlst Wait End Date'
  @sap.quickinfo : 'Earliest Scheduled Wait End Date'
  EarliestScheduledWaitEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Erlst Wait End Time'
  @sap.quickinfo : 'Earliest Scheduled Wait End Time'
  EarliestScheduledWaitEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Ltst Wait Start Date'
  @sap.quickinfo : 'Latest Scheduled Wait Start Date'
  LatestScheduledWaitStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Ltst Wait Start Time'
  @sap.quickinfo : 'Latest Scheduled Wait Start Time'
  LatestScheduledWaitStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Latest Wait End Date'
  @sap.quickinfo : 'Latest Scheduled Wait End Date'
  LatestScheduledWaitEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Latest Wait End Time'
  @sap.quickinfo : 'Latest Scheduled Wait End Time'
  LatestScheduledWaitEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Break Time Unit'
  @sap.quickinfo : 'Unit for a Break Time'
  @sap.semantics : 'unit-of-measure'
  BreakDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Break Time'
  PlannedBreakDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Confirmed Break Time'
  ConfirmedBreakDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Minimum Overlap Time Unit'
  @sap.quickinfo : 'Unit for the Minimum Overlap Time'
  @sap.semantics : 'unit-of-measure'
  OverlapMinimumDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Minimum Overlap Time'
  OverlapMinimumDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Max. Wait Time Unit'
  @sap.quickinfo : 'Unit for the Maximum Wait Time'
  @sap.semantics : 'unit-of-measure'
  MaximumWaitDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Maximum Wait Time'
  MaximumWaitDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Req. Wait Time Unit'
  @sap.quickinfo : 'Unit for the Required Wait Time'
  @sap.semantics : 'unit-of-measure'
  MinimumWaitDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Minimum Wait Time'
  MinimumWaitDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Un.for StdMoveTime'
  @sap.quickinfo : 'Unit for the standard move time'
  @sap.semantics : 'unit-of-measure'
  StandardMoveDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Standard Move Time'
  StandardMoveDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Std Queue Time Unit'
  @sap.quickinfo : 'Unit for the Standard Queue Time'
  @sap.semantics : 'unit-of-measure'
  StandardQueueDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Standard Queue Time'
  StandardQueueDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Min. Queue Time Unit'
  @sap.quickinfo : 'Unit for the Minimum Queue Time'
  @sap.semantics : 'unit-of-measure'
  MinimumQueueDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Minimum Queue Time'
  MinimumQueueDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Un.for MinMoveTime'
  @sap.quickinfo : 'Unit for the minimum move time'
  @sap.semantics : 'unit-of-measure'
  MinimumMoveDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Minimum Move Time'
  MinimumMoveDuration : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Normal duration'
  @sap.quickinfo : 'Normal duration of the activity'
  OperationStandardDuration : Decimal(5, 1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Normal duration unit'
  @sap.quickinfo : 'Normal duration/unit'
  @sap.semantics : 'unit-of-measure'
  OperationStandardDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Minimum Duration'
  @sap.quickinfo : 'Minimum Activity Duration'
  MinimumDuration : Decimal(5, 1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Minimum Duration Unit'
  @sap.quickinfo : 'Unit for the Minimum Duration'
  @sap.semantics : 'unit-of-measure'
  MinimumDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Move Time'
  @sap.quickinfo : 'Move Time used for Scheduling'
  ScheduledMoveDuration : Double;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Move Time Unit'
  @sap.quickinfo : 'Unit of Measure for Move Time'
  @sap.semantics : 'unit-of-measure'
  ScheduledMoveDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Queue Time'
  @sap.quickinfo : 'Queue Time Used for Scheduling'
  ScheduledQueueDuration : Double;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Queue Time Unit'
  @sap.quickinfo : 'Unit of Measure for Queue Time'
  @sap.semantics : 'unit-of-measure'
  ScheduledQueueDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Wait Time'
  @sap.quickinfo : 'Wait Time Used for Scheduling'
  ScheduledWaitDuration : Double;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Wait Time Unit'
  @sap.quickinfo : 'Unit of Measure for Wait Time'
  @sap.semantics : 'unit-of-measure'
  ScheduledWaitDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Delivery Duration'
  @sap.quickinfo : 'Material Planned Delivery Duration in Days'
  PlannedDeliveryDuration : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Setup Time'
  OpPlannedSetupDurn : Double;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setup Time Unit'
  @sap.quickinfo : 'Unit of Measure for Setup Time'
  @sap.semantics : 'unit-of-measure'
  OpPlannedSetupDurnUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Processing Time'
  OpPlannedProcessingDurn : Double;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Processing Time Unit'
  @sap.quickinfo : 'Unit of Measure for Processing Time'
  @sap.semantics : 'unit-of-measure'
  OpPlannedProcessingDurnUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Teardown'
  OpPlannedTeardownDurn : Double;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Teardown Unit'
  @sap.quickinfo : 'Unit of Measure for Teardown'
  @sap.semantics : 'unit-of-measure'
  OpPlannedTeardownDurnUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Actual Forecast Duration'
  @sap.quickinfo : 'Forecast Duration of Activity from Confirmation'
  ActualForecastDuration : Decimal(5, 1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Actual Forecast Duration Unit'
  @sap.quickinfo : 'Unit of Forecast Duration from Confirmation'
  @sap.semantics : 'unit-of-measure'
  ActualForecastDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_StartDateOffsetReferenceCode/OperationDateOffsetRefCode_Text'
  @sap.label : 'Reference Start Date'
  @sap.quickinfo : 'Reference Date for Start of Sub-Operation'
  @sap.value.list : 'standard'
  StartDateOffsetReferenceCode : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Start Offset Unit'
  @sap.quickinfo : 'Unit for Offset to Start'
  @sap.semantics : 'unit-of-measure'
  StartDateOffsetDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Offset to Start'
  @sap.quickinfo : 'Offset to sub-operation start'
  StartDateOffsetDuration : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_EndDateOffsetReferenceCode/OperationDateOffsetRefCode_Text'
  @sap.label : 'Reference Date End'
  @sap.quickinfo : 'Reference Date for Finish of Sub-Operation'
  @sap.value.list : 'standard'
  EndDateOffsetReferenceCode : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'End Offset Unit'
  @sap.quickinfo : 'Unit for Offset to Finish'
  @sap.semantics : 'unit-of-measure'
  EndDateOffsetDurationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Offset to Finish'
  @sap.quickinfo : 'Offset to sub-operation finish'
  EndDateOffsetDuration : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_StandardWorkFmlaParamGroup/StandardWorkFormulaParamGroup_Text'
  @sap.label : 'Standard Value Key'
  @sap.value.list : 'standard'
  StandardWorkFormulaParamGroup : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Operation Unit'
  @sap.quickinfo : 'Operation Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  OperationUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Denominator'
  @sap.quickinfo : 'Denominator for Converting Routing and Operation UoM'
  OpQtyToBaseQtyDnmntr : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Numerator'
  @sap.quickinfo : 'Numerator for Converting Routing and Operation UoM'
  OpQtyToBaseQtyNmrtr : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Scrap'
  @sap.quickinfo : 'Scrap factor'
  OperationScrapPercent : Decimal(5, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OperationUnit'
  @sap.label : 'Base Quantity'
  @sap.filterable : 'false'
  OperationReferenceQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OperationUnit'
  @sap.label : 'Operation Quantity'
  @sap.quickinfo : 'Operation Total Quantity'
  @sap.filterable : 'false'
  OpPlannedTotalQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OperationUnit'
  @sap.label : 'Planned Scrap'
  @sap.quickinfo : 'Operation Planned Scrap Quantity'
  @sap.filterable : 'false'
  OpPlannedScrapQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OperationUnit'
  @sap.label : 'Planned Yield Quantity'
  @sap.filterable : 'false'
  OpPlannedYieldQuantity : Decimal(14, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OperationUnit'
  @sap.label : 'Confirmed Yield'
  @sap.quickinfo : 'Total Confirmed Yield'
  @sap.filterable : 'false'
  OpTotalConfirmedYieldQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OperationUnit'
  @sap.label : 'Confirmed Scrap'
  @sap.quickinfo : 'Total Scrap Quantity Confirmed'
  @sap.filterable : 'false'
  OpTotalConfirmedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OperationUnit'
  @sap.label : 'Confirmed Rework'
  @sap.quickinfo : 'Total Confirmed Rework Quantity'
  @sap.filterable : 'false'
  OperationConfirmedReworkQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Production Unit'
  @sap.quickinfo : 'Production Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Yield in Order Unit'
  @sap.quickinfo : 'Confirmed yield in order unit of measure'
  @sap.filterable : 'false'
  OpTotConfdYieldQtyInOrdQtyUnit : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Confirmed Work Quantity Unit 1'
  @sap.quickinfo : 'Unit of Measure for Confirmed Work Quantity 1'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit1 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OpWorkQuantityUnit1'
  @sap.label : 'Confirmed Work Quantity 1'
  @sap.quickinfo : 'Already Confirmed Work Quantity (Activity) 1'
  @sap.filterable : 'false'
  OpConfirmedWorkQuantity1 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'No Remaining Work Quantity 1 Expected'
  @sap.quickinfo : 'Indicator: No Remaining Work Quantity 1 is Expected'
  NoFurtherOpWorkQuantity1IsExpd : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Confirmed Work Quantity Unit 2'
  @sap.quickinfo : 'Unit of Measure for Confirmed Work Quantity 2'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit2 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OpWorkQuantityUnit2'
  @sap.label : 'Confirmed Work Quantity 2'
  @sap.quickinfo : 'Already Confirmed Work Quantity (Activity) 2'
  @sap.filterable : 'false'
  OpConfirmedWorkQuantity2 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'No Remaining Work Quantity 2 Expected'
  @sap.quickinfo : 'Indicator: No Remaining Work Quantity 2 is Expected'
  NoFurtherOpWorkQuantity2IsExpd : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Confirmed Work Quantity Unit 3'
  @sap.quickinfo : 'Unit of Measure for Confirmed Work Quantity 3'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit3 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OpWorkQuantityUnit3'
  @sap.label : 'Confirmed Work Quantity 3'
  @sap.quickinfo : 'Already Confirmed Work Quantity (Activity) 3'
  @sap.filterable : 'false'
  OpConfirmedWorkQuantity3 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'No Remaining Work Quantity 3 Expected'
  @sap.quickinfo : 'Indicator: No Remaining Work Quantity 3 is Expected'
  NoFurtherOpWorkQuantity3IsExpd : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Confirmed Work Quantity Unit 4'
  @sap.quickinfo : 'Unit of Measure for Confirmed Work Quantity 4'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit4 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OpWorkQuantityUnit4'
  @sap.label : 'Confirmed Work Quantity 4'
  @sap.quickinfo : 'Already Confirmed Work Quantity (Activity) 4'
  @sap.filterable : 'false'
  OpConfirmedWorkQuantity4 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'No Remaining Work Quantity 4 Expected'
  @sap.quickinfo : 'Indicator: No Remaining Work Quantity 4 is Expected'
  NoFurtherOpWorkQuantity4IsExpd : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Confirmed Work Quantity Unit 5'
  @sap.quickinfo : 'Unit of Measure for Confirmed Work Quantity 5'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit5 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OpWorkQuantityUnit5'
  @sap.label : 'Confirmed Work Quantity 5'
  @sap.quickinfo : 'Already Confirmed Work Quantity (Activity) 5'
  @sap.filterable : 'false'
  OpConfirmedWorkQuantity5 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'No Remaining Work Quantity 5 Expected'
  @sap.quickinfo : 'Indicator: No Remaining Work Quantity 5 is Expected'
  NoFurtherOpWorkQuantity5IsExpd : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Confirmed Work Quantity Unit 6'
  @sap.quickinfo : 'Unit of Measure for Confirmed Work Quantity 6'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit6 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'OpWorkQuantityUnit6'
  @sap.label : 'Confirmed Work Quantity 6'
  @sap.quickinfo : 'Already Confirmed Work Quantity (Activity) 6'
  @sap.filterable : 'false'
  OpConfirmedWorkQuantity6 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'No Remaining Work Quantity 6 Expected'
  @sap.quickinfo : 'Indicator: No Remaining Work Quantity 6 is Expected'
  NoFurtherOpWorkQuantity6IsExpd : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Work Quantity Unit 1'
  @sap.quickinfo : 'Standard Work Quantity Unit 1'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit1 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit1'
  @sap.label : 'Standard Work Quantity 1'
  @sap.filterable : 'false'
  WorkCenterStandardWorkQty1 : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center Activity Type 1'
  CostCtrActivityType1 : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Work Quantity Unit 2'
  @sap.quickinfo : 'Standard Work Quantity Unit 2'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit2 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit2'
  @sap.label : 'Standard Work Quantity 2'
  @sap.filterable : 'false'
  WorkCenterStandardWorkQty2 : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center Activity Type 2'
  CostCtrActivityType2 : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Work Quantity Unit 3'
  @sap.quickinfo : 'Standard Work Quantity Unit 3'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit3 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit3'
  @sap.label : 'Standard Work Quantity 3'
  @sap.filterable : 'false'
  WorkCenterStandardWorkQty3 : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center Activity Type 3'
  CostCtrActivityType3 : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Work Quantity Unit 4'
  @sap.quickinfo : 'Standard Work Quantity Unit 4'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit4 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit4'
  @sap.label : 'Standard Work Quantity 4'
  @sap.filterable : 'false'
  WorkCenterStandardWorkQty4 : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center Activity Type 4'
  CostCtrActivityType4 : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Work Quantity Unit 5'
  @sap.quickinfo : 'Standard Work Quantity Unit 5'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit5 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit5'
  @sap.label : 'Standard Work Quantity 5'
  @sap.filterable : 'false'
  WorkCenterStandardWorkQty5 : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center Activity Type 5'
  CostCtrActivityType5 : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Work Quantity Unit 6'
  @sap.quickinfo : 'Standard Work Quantity Unit 6'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit6 : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Standard Work Quantity 6'
  @sap.filterable : 'false'
  WorkCenterStandardWorkQty6 : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center Activity Type 6'
  CostCtrActivityType6 : String(6);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit1'
  @sap.label : 'Forecast Work Quantity 1'
  @sap.filterable : 'false'
  ForecastWorkQuantity1 : Decimal(9, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit2'
  @sap.label : 'Forecast Work Quantity 2'
  @sap.filterable : 'false'
  ForecastWorkQuantity2 : Decimal(9, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit3'
  @sap.label : 'Forecast Work Quantity 3'
  @sap.filterable : 'false'
  ForecastWorkQuantity3 : Decimal(9, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit4'
  @sap.label : 'Forecast Work Quantity 4'
  @sap.filterable : 'false'
  ForecastWorkQuantity4 : Decimal(9, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit5'
  @sap.label : 'Forecast Work Quantity 5'
  @sap.filterable : 'false'
  ForecastWorkQuantity5 : Decimal(9, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Forecast Work Quantity 6'
  @sap.filterable : 'false'
  ForecastWorkQuantity6 : Decimal(9, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Process'
  @sap.value.list : 'standard'
  BusinessProcess : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Process Unit'
  @sap.quickinfo : 'Unit of Measure for Business Process Quantity'
  @sap.semantics : 'unit-of-measure'
  BusinessProcessEntryUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BusinessProcessEntryUnit'
  @sap.label : 'Process Quantity'
  @sap.quickinfo : 'Confirmed Quantity/Activity for Business Process'
  @sap.filterable : 'false'
  BusinessProcessConfirmedQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'No Remaining Act.'
  @sap.quickinfo : 'No Remaining Quantity Expected for Business Process'
  NoFurtherBusinessProcQtyIsExpd : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Remain. Process Unit'
  @sap.quickinfo : 'Unit for Remaining Quantity of Business Process'
  @sap.semantics : 'unit-of-measure'
  BusinessProcRemainingQtyUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'BusinessProcRemainingQtyUnit'
  @sap.label : 'Remaining Business Process Quantity'
  @sap.quickinfo : 'Remaining Quantity for Business Process'
  @sap.filterable : 'false'
  BusinessProcessRemainingQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Setup Instance ID'
  @sap.quickinfo : 'Operation Activity Network: Setup Instance ID'
  SetupOpActyNtwkInstance : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Produce Instance ID'
  @sap.quickinfo : 'Operation Activity Network: Produce Instance ID'
  ProduceOpActyNtwkInstance : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Teardown Instance ID'
  @sap.quickinfo : 'Operation Activity Network: Teardown Instance ID'
  TeardownOpActyNtwkInstance : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Field key'
  @sap.quickinfo : 'Key word ID for user-defined fields'
  FreeDefinedTableFieldSemantic : String(7);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'User field 20 chars'
  @sap.quickinfo : 'User field with 20 characters'
  FreeDefinedAttribute01 : String(20);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'User field 20 chars'
  @sap.quickinfo : 'User field with 20 characters'
  FreeDefinedAttribute02 : String(20);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'User-Defined Field'
  @sap.quickinfo : 'User Field with 10 Characters'
  FreeDefinedAttribute03 : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'User-Defined Field'
  @sap.quickinfo : 'User Field with 10 Characters'
  FreeDefinedAttribute04 : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'User field unit'
  @sap.quickinfo : 'User field: Unit for quantity fields'
  @sap.semantics : 'unit-of-measure'
  FreeDefinedQuantity1Unit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'FreeDefinedQuantity1Unit'
  @sap.label : 'User field quantity'
  @sap.quickinfo : 'User field for quantity (length 10.3)'
  @sap.filterable : 'false'
  FreeDefinedQuantity1 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'User field unit'
  @sap.quickinfo : 'User field: Unit for quantity fields'
  @sap.semantics : 'unit-of-measure'
  FreeDefinedQuantity2Unit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'FreeDefinedQuantity2Unit'
  @sap.label : 'User field quantity'
  @sap.quickinfo : 'User field for quantity (length 10.3)'
  @sap.filterable : 'false'
  FreeDefinedQuantity2 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'User field unit'
  @sap.quickinfo : 'User field: Unit for value fields'
  @sap.semantics : 'currency-code'
  FreeDefinedAmount1Currency : String(5);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'FreeDefinedAmount1Currency'
  @sap.label : 'User field value'
  @sap.quickinfo : 'User-defined field for values (length 10,3)'
  @sap.filterable : 'false'
  FreeDefinedAmount1 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'User field unit'
  @sap.quickinfo : 'User field: Unit for value fields'
  @sap.semantics : 'currency-code'
  FreeDefinedAmount2Currency : String(5);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'FreeDefinedAmount2Currency'
  @sap.label : 'User field value'
  @sap.quickinfo : 'User-defined field for values (length 10,3)'
  @sap.filterable : 'false'
  FreeDefinedAmount2 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'User field date'
  @sap.quickinfo : 'User field for date'
  FreeDefinedDate1 : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'User field date'
  @sap.quickinfo : 'User field for date'
  FreeDefinedDate2 : Date;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'User field indicator'
  @sap.quickinfo : 'User-defined field: Indicator for reports'
  FreeDefinedIndicator1 : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'User field indicator'
  @sap.quickinfo : 'User-defined field: Indicator for reports'
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
@sap.label : 'Material'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MaterialStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Material_Text'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Material : String(40) not null;
  @sap.label : 'Material Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Material_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Material Discontinuation Type'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MatlCompDiscontinuationType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'MatlCompDiscontinuationType_Text'
  @sap.label : 'Discontinuation Type'
  key MatlCompDiscontinuationType : String(1) not null;
  @sap.label : 'Discontinuation Type Name'
  @sap.quickinfo : 'Name of a Discontinuation Type for a Material Component'
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
@sap.label : 'Manufacturing Bill of Operations'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MfgBillOfOperations {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Task List Type'
  key BillOfOperationsType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group'
  @sap.quickinfo : 'Key for Task List Group'
  key BillOfOperationsGroup : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Counter'
  key BillOfOperationsVariant : String(2) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Last Call'
  @sap.quickinfo : 'Date of the Last Call'
  LastUsageDate : Date;
  @sap.label : 'Number of Calls'
  NumberOfUsages : Decimal(4, 0);
  @sap.label : 'Change no. indicator'
  @sap.quickinfo : 'Task list with change number'
  HasChangeNumber : Boolean;
  @sap.label : 'Param. effect. ind.'
  @sap.quickinfo : 'Task list with parameter effectivity'
  HasParameterEffectivity : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Changed on'
  @sap.quickinfo : 'Date of the last change made to the task list'
  LastChangeDate : Date;
  @sap.label : 'Changed at'
  @sap.quickinfo : 'Time of last change made to the task list'
  LastChangeTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed By'
  @sap.quickinfo : 'Last Changed By User'
  LastChangedByUser : String(12);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Manufacturing Bill of Operations Sequence'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MfgBillOfOperationsSequence {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Task List Type'
  key BillOfOperationsType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group'
  @sap.quickinfo : 'Key for Task List Group'
  key BillOfOperationsGroup : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Counter'
  key BillOfOperationsVariant : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sequence'
  key BillOfOperationsSequence : String(6) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Manufacturing Order Category'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MfgOrderCategory {
  @sap.display.format : 'NonNegative'
  @sap.text : 'ManufacturingOrderCategory_Text'
  @sap.label : 'Order Category'
  @sap.quickinfo : 'Manufacturing Order Category'
  key ManufacturingOrderCategory : String(2) not null;
  @sap.label : 'Order Category Name'
  @sap.quickinfo : 'Manufacturing Order Category Name'
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
@sap.label : 'Manufacturing Order Sequence'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MfgOrderSequenceStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Manufacturing Order'
  @sap.quickinfo : 'Manufacturing Order ID'
  key ManufacturingOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'MfgOrderSequenceText'
  @sap.label : 'Sequence'
  @sap.quickinfo : 'Manufacturing Order Sequence'
  key ManufacturingOrderSequence : String(6) not null;
  @sap.label : 'Sequence Text'
  @sap.quickinfo : 'Manufacturing Order Sequence Text'
  MfgOrderSequenceText : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Manufacturing Order'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MfgOrderStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ManufacturingOrderText'
  @sap.label : 'Manufacturing Order'
  @sap.quickinfo : 'Manufacturing Order ID'
  key ManufacturingOrder : String(12) not null;
  @sap.label : 'Order Text'
  @sap.quickinfo : 'Manufacturing Order Text'
  ManufacturingOrderText : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Manufacturing Order Type'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MfgOrderType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ManufacturingOrderType_Text'
  @sap.label : 'Order Type'
  @sap.quickinfo : 'Manufacturing Order Type'
  key ManufacturingOrderType : String(4) not null;
  @sap.label : 'Order Type Name'
  @sap.quickinfo : 'Manufacturing Order Type Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ManufacturingOrderType_Text : String(40);
  @sap.display.format : 'NonNegative'
  @sap.text : 'to_MfgOrderCategory/ManufacturingOrderCategory_Text'
  @sap.label : 'Order Category'
  @sap.quickinfo : 'Manufacturing Order Category'
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
@sap.label : 'MRP Controller'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_MRPController {
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Plant'
  @sap.value.list : 'standard'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'MRPControllerName'
  @sap.label : 'MRP Controller'
  key MRPController : String(3) not null;
  @sap.label : 'MRP Controller Name'
  MRPControllerName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Controller Phone'
  @sap.quickinfo : 'MRP Controller''s Phone Number'
  MRPControllerPhoneNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_PurchasingGroup/PurchasingGroupName'
  @sap.label : 'Purchasing Group'
  @sap.value.list : 'standard'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_BusinessArea/BusinessArea_Text'
  @sap.label : 'Business Area'
  @sap.value.list : 'standard'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Recipient'
  @sap.quickinfo : 'Object ID for recipient'
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
@sap.label : 'Operation Control Profile'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_OperationControlProfile {
  @sap.display.format : 'UpperCase'
  @sap.text : 'OperationControlProfile_Text'
  @sap.label : 'Control Profile'
  @sap.quickinfo : 'Operation Control Profile'
  key OperationControlProfile : String(4) not null;
  @sap.label : 'Control Profile Name'
  @sap.quickinfo : 'Operation Control Profile Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OperationControlProfile_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'External Processing Type'
  @sap.quickinfo : 'Operation External Processing Type'
  OperationExternalProcessing : String(1);
  @sap.label : 'External Processing'
  @sap.quickinfo : 'Indicator: Operation is Processed Externally'
  OperationIsProcessedExternally : Boolean;
  @sap.label : 'Internal Processing'
  @sap.quickinfo : 'Activity is an Internally Processed (Work) Activity'
  OperationIsProcessedInternally : Boolean;
  @sap.label : 'Milestone Indicator'
  @sap.quickinfo : 'Indicator: Operation is a Milestone'
  OperationIsMilestone : Boolean;
  @sap.label : 'Confirmation Required'
  @sap.quickinfo : 'Indicator: Confirmation is Required'
  ConfirmationIsRequired : Boolean;
  @sap.label : 'Confirmation Not Possible'
  @sap.quickinfo : 'Indicator: Confirmation is not Possible'
  ConfirmationIsNotPossible : Boolean;
  @sap.label : 'Confirmation Is Optional'
  @sap.quickinfo : 'Indicator: Confirmation is Optional'
  ConfirmationIsOptional : Boolean;
  @sap.label : 'Scheduling'
  @sap.quickinfo : 'Indicator: Scheduling'
  OperationIsScheduled : Boolean;
  @sap.label : 'Print'
  @sap.quickinfo : 'Indicator: Print'
  OperationIsPrinted : Boolean;
  @sap.label : 'Cost'
  OperationIsIncludedInCosting : Boolean;
  @sap.label : 'Rework'
  @sap.quickinfo : 'Indicator: Rework operation'
  OperationIsReworkOperation : Boolean;
  @sap.label : 'Automatic GR'
  @sap.quickinfo : 'Indicator: Post Goods Receipt Automatically'
  GRIsPostedAutomatically : Boolean;
  @sap.label : 'Det. Cap. Reqmnts'
  @sap.quickinfo : 'Indicator: Determine capacity requirements'
  CapacityRequirementsAreDtmnd : Boolean;
  @sap.label : 'Insp. Char. Required'
  @sap.quickinfo : 'Inspection Characteristics for Operation Required'
  InspCharacteristicIsRequired : Boolean;
  @sap.label : 'Not Relevant for MES'
  @sap.quickinfo : 'Not Relevant for External Manufacturing Execution System'
  OperationIsNotMESRelevant : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Operation Date Offset Reference Code'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_OperationDateOffsetRefCode {
  @sap.display.format : 'UpperCase'
  @sap.text : 'OperationDateOffsetRefCode_Text'
  @sap.label : 'Reference Date'
  @sap.quickinfo : 'Key for Reference Dates Used in Offset Scheduling'
  key OperationDateOffsetRefCode : String(2) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of reference date key used in offset scheduling'
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
@sap.label : 'Operation Setup Group'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_OperationSetupGroup {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setup Group Category'
  @sap.quickinfo : 'Operation Setup Group Category'
  key OperationSetupGroupCategory : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'OperationSetupGroup_Text'
  @sap.label : 'Setup Group'
  @sap.quickinfo : 'Operation Setup Group'
  key OperationSetupGroup : String(10) not null;
  @sap.label : 'Setup grp. descriptn'
  @sap.quickinfo : 'Description of the setup group'
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
@sap.label : 'Operation Setup Group Category'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_OperationSetupGroupCategory {
  @sap.display.format : 'UpperCase'
  @sap.text : 'OperationSetupGroupCategory_Text'
  @sap.label : 'Operation Setup Group Category'
  @sap.quickinfo : 'Setup Group Category for Operations'
  key OperationSetupGroupCategory : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of the setup group category'
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
@sap.label : 'Operation Setup Type'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_OperationSetupType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'OperationSetupType_Text'
  @sap.label : 'Setup Type'
  @sap.quickinfo : 'Operation Setup Type'
  key OperationSetupType : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of the setup type'
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
@sap.label : 'Standard Text for Operation'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_OperationStandardText {
  @sap.display.format : 'UpperCase'
  @sap.text : 'OperationStandardTextCode_Text'
  @sap.label : 'Operation Standard Text ID'
  @sap.quickinfo : 'Operation Standard Text Internal ID'
  key OperationStandardTextCode : String(7) not null;
  @sap.label : 'Standard Text Desc.'
  @sap.quickinfo : 'Description of the Standard Text Key'
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
@sap.label : 'Order Operation Basic'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_OrderOperationBasic {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Opertn Task List No.'
  @sap.quickinfo : 'Routing Number of Operations in the Order'
  OrderInternalID : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'General counter for order'
  OrderOperationInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sequence'
  Sequence : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Activity'
  @sap.quickinfo : 'Activity Number'
  Operation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Operation or Phase'
  @sap.quickinfo : 'Operation or Phase Number'
  Operation_2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard text key'
  StandardTextInternalID : String(7);
  @sap.label : 'Operation Short Text'
  OperationText : String(40);
  @sap.label : 'Description'
  @sap.quickinfo : 'Second line of the description'
  OperationSecondText : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Long Text Exists'
  OperationHasLongText : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sequence'
  BillOfOperationsSequence : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Task List Type'
  BillOfOperationsType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group'
  @sap.quickinfo : 'Key for Task List Group'
  BillOfOperationsGroup : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Counter'
  BillOfOperationsVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Task List Node'
  @sap.quickinfo : 'Number of the Task List Node'
  BOOOperationInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Routing Version'
  BillOfOperationsVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Superior Op. Node'
  @sap.quickinfo : 'Node Number of the Superior Operation'
  SuperiorOperationInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Control Key'
  OperationControlProfile : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Object ID'
  @sap.quickinfo : 'Object ID of the resource'
  WorkCenterInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  WorkCenterTypeCode : String(1);
  @sap.aggregation.role : 'dimension'
  WorkCenterTypeCode_2 : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Factory Calendar ID'
  @sap.quickinfo : 'Factory Calendar'
  FactoryCalendar : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object number'
  ObjectInternalID : String(22);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Capacity Requirement'
  @sap.quickinfo : 'ID of the Capacity Requirements Record'
  CapacityRequirement : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Internal counter'
  CapacityRequirementItem : String(8);
  @odata.Type : 'Edm.Byte'
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Number'
  @sap.quickinfo : 'Number of capacities required'
  NumberOfCapacities : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Usage'
  UsageCode : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Assembly'
  Assembly : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Project Def.'
  @sap.quickinfo : 'Project (internal)'
  ProjectInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Confirmation'
  @sap.quickinfo : 'Completion confirmation number for the operation'
  OperationConfirmation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Confirmation counter'
  NumberOfOperationConfirmations : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Change Number'
  ChangeNumber : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Personnel number'
  OperationPersonResponsible : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipment'
  @sap.quickinfo : 'Equipment Number'
  Equipment : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Location'
  FunctionalLocation : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Functional Location'
  FunctionalLocation_2 : String(30);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sort Term'
  @sap.quickinfo : 'Sort Term for Non-Stock Info Records'
  OperationPurgInfoRecdSearchTxt : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Subcontracting'
  @sap.quickinfo : 'Indicator: External Processing Operation with Subcontracting'
  ExtProcgOperationHasSubcontrg : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Price_is_fixed'
  @sap.quickinfo : 'Data of Purchasing Info Record Is Fixed'
  PurgInfoRecdDataIsFixed : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Info Rec.'
  @sap.quickinfo : 'Purchasing Info Record Number'
  PurchasingInfoRecord : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Info Record Category'
  @sap.quickinfo : 'Purchasing info record category'
  PurchasingInfoRecordCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Organization'
  @sap.quickinfo : 'Purchasing Organization'
  PurchasingOrganization : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  @sap.quickinfo : 'Purchasing Group for External Processing Activity'
  PurchasingGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Requisition'
  @sap.quickinfo : 'Purchase Requisition Number'
  PurchaseRequisition : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Requisition Item'
  @sap.quickinfo : 'Item Number of Purchase Requisition in Order'
  PurchaseRequisitionItem : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  PurchasingDocument : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  PurchasingDocumentItem : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group'
  MaterialGroup : String(9);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Goods Recipient'
  GoodsRecipientName : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unloading Point'
  UnloadingPointName : String(25);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  BusinessArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Element'
  CostElement : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costing Variant'
  CostingVariant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Cost EstimateNo'
  @sap.quickinfo : 'Cost Estimate Number for Cost Est. w/o Qty Structure'
  CostEstimate : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Costing Sheet'
  CostingSheet : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reqst. Cost Center'
  @sap.quickinfo : 'Requesting Cost Center'
  RequestingCostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calculation Key'
  @sap.quickinfo : 'Key for calculation'
  OperationCalculationControl : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost'
  @sap.quickinfo : 'Selection indicator for costing line items'
  OperationCostingRelevancyType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account assignment'
  @sap.quickinfo : 'Indicator for the account assignment of a network(hdr/act.)'
  NtwkAccountAssignmentCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Summarization'
  @sap.quickinfo : 'Ind.: Respect Activity for Project Summarization'
  ActyIsTakenAcctForProjSmmry : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object currency'
  @sap.quickinfo : 'Object currency for network activity'
  @sap.semantics : 'currency-code'
  ControllingObjectCurrency : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Object Class'
  ControllingObjectClass : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Area'
  FunctionalArea : String(16);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Activity Type'
  CostCtrActivityType : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'Currency'
  @sap.label : 'Amount'
  @sap.quickinfo : 'Costs in the activity'
  @sap.filterable : 'false'
  PlannedActivityCost : Decimal(12, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setup group category'
  OperationSetupGroupCategory : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setup group key'
  OperationSetupGroup : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setup Type Key'
  OperationSetupType : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Required Overlapping'
  OperationOverlappingIsRequired : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Optional Overlapping'
  OperationOverlappingIsPossible : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Flow Manufacturing'
  OperationsIsAlwaysOverlapping : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Splitting Required'
  OperationSplitIsRequired : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Max Number of Splits'
  @sap.quickinfo : 'Maximum Number of Splits'
  MaximumNumberOfSplits : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reduction Strategy'
  @sap.quickinfo : 'Reduction Strategy per Operation'
  LeadTimeReductionStrategy : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overhead key'
  OverheadCode : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Indicator: Phase'
  MfgOrderOperationIsPhase : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'General counter for order'
  OrderIntBillOfOpItemOfPhase : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priority'
  OperationImportance : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Number of splits'
  @sap.quickinfo : 'Actual number of splits'
  ActualNumberOfSplits : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Deletion Flag'
  OperationIsToBeDeleted : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Priority'
  NetworkActivityPriority : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Scrap'
  @sap.quickinfo : 'Scrap factor'
  OperationScrapPercent : Decimal(5, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'System Condition'
  OperationSystemCondition : String(1);
  @odata.Type : 'Edm.Byte'
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Percent'
  @sap.quickinfo : 'Work percentage'
  OperationWorkPercent : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Execution Stage'
  @sap.quickinfo : 'PRE MAIN POST'
  MaintOperationExecStageCode : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Process Phase'
  MaintOrdOpProcessPhaseCode : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Process Subphase'
  MaintOrdOpProcessSubPhaseCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Instance ID'
  @sap.quickinfo : 'Operation Activity Network: Instance ID'
  SetupOpActyNtwkInstance : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Instance ID'
  @sap.quickinfo : 'Operation Activity Network: Instance ID'
  ProduceOpActyNtwkInstance : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Instance ID'
  @sap.quickinfo : 'Operation Activity Network: Instance ID'
  TeardownOpActyNtwkInstance : Integer;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Search Help for WorkAgreements'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_PersWrkAgrmtSrchHelp {
  @sap.display.format : 'NonNegative'
  @sap.text : 'PersonFullName'
  @sap.label : 'Personnel number'
  key PersonWorkAgreement : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID rel.object'
  @sap.quickinfo : 'ID of Related Object'
  Person : String(45);
  @sap.label : 'Last Name'
  @sap.quickinfo : 'Last Name of Business Partner (Person)'
  LastName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Family Name'
  FamilyName : String(35);
  @sap.label : 'First Name'
  @sap.quickinfo : 'First Name of Business Partner (Person)'
  FirstName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Given Name'
  GivenName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID Number'
  @sap.quickinfo : 'Identification Number'
  PersonExternalID : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User ID'
  UserID : String(12);
  @sap.label : 'Full Name'
  PersonFullName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  CompanyCodeName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center'
  CostCenter : String(10);
  @sap.label : 'Cost Center Name'
  CostCenterName : String(20);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Job key'
  @sap.quickinfo : 'Job'
  Job : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Job Name'
  @sap.quickinfo : 'Job Title'
  JobName : String(255);
  @sap.label : 'Organizational Unit Name'
  OrganizationalUnitName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organizational key'
  @sap.quickinfo : 'Organizational Key'
  PersonWorkAgrmtAuthznGrpg : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purpose Completed'
  @sap.quickinfo : 'Business Purpose Completed Flag'
  IsBusinessPurposeCompleted : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Plant'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Plant {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantName'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.label : 'Plant Name'
  PlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Area'
  ValuationArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer No Plant'
  @sap.quickinfo : 'Customer Number of Plant'
  @sap.value.list : 'standard'
  PlantCustomer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sppl. No. Plnt'
  @sap.quickinfo : 'Supplier Number of Plant'
  @sap.value.list : 'standard'
  PlantSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Factory Calendar'
  @sap.quickinfo : 'Factory calendar key'
  FactoryCalendar : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Organization'
  @sap.quickinfo : 'Purchasing Organization'
  DefaultPurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sls Organization ICB'
  @sap.quickinfo : 'Sales Organization for Intercompany Billing'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address'
  AddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant Cat.'
  @sap.quickinfo : 'Plant category'
  PlantCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distrib.Channel'
  @sap.quickinfo : 'Distribution Channel for Intercompany billing'
  DistributionChannel : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Interco. Billing Div'
  @sap.quickinfo : 'Division for Intercompany Billing'
  Division : String(2);
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.label : 'Archiving Flag'
  @sap.quickinfo : 'Central archiving marker for master record'
  IsMarkedForArchiving : Boolean;
  to_Address : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Address {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Plant'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_PlantStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantName'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.label : 'Plant Name'
  PlantName : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Basic View - Adjustment Profile'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProdEWMAdjmtProfile {
  @sap.display.format : 'UpperCase'
  @sap.text : 'AdjustmentProfile_Text'
  @sap.label : 'Adjustment Profile'
  @sap.quickinfo : 'Merchandise Distribution - Adjustment Profile'
  key AdjustmentProfile : String(3) not null;
  @sap.label : 'Desc. Adjust.Profile'
  @sap.quickinfo : 'Description - Merchandise Distribution - Adjustment Profile'
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
@sap.label : 'Product'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Product {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Product_Text'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.label : 'Product Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Product_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'External Representation of Material Number'
  ProductExternalID : String(40);
  @sap.label : 'Product OID'
  @sap.quickinfo : 'Data element for OID of product'
  ProductOID : String(128);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductType_Text'
  @sap.label : 'Product Type'
  @sap.value.list : 'standard'
  ProductType : String(4);
  @sap.label : 'Product Type Description'
  @sap.quickinfo : 'Description of product type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductType_Text : String(25);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  CreationDate : Date;
  @sap.label : 'Created At Time'
  @sap.quickinfo : 'Time of Creation'
  CreationTime : Time;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Created On'
  @sap.quickinfo : 'Product Created On'
  CreationDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_CreatedByUserContactCard/UserDescription'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Name of Person Responsible for Creating the Object'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Last Change'
  @sap.quickinfo : 'Date of Last Change'
  LastChangeDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_LastChangedByUserContactCard/UserDescription'
  @sap.label : 'Changed By'
  @sap.quickinfo : 'Name of Person Who Changed Object'
  LastChangedByUser : String(12);
  @sap.label : 'Marked for Deletion'
  @sap.quickinfo : 'Deletion Indicator'
  IsMarkedForDeletion : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CrossPlantStatus_Text'
  @sap.label : 'CrossPlantProdStatus'
  @sap.quickinfo : 'Cross-Plant Product Status'
  @sap.value.list : 'standard'
  CrossPlantStatus : String(2);
  @sap.label : 'Cross Plant Status Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CrossPlantStatus_Text : String(25);
  @sap.display.format : 'Date'
  @sap.label : 'Valid from'
  @sap.quickinfo : 'Date from which the cross-plant material status is valid'
  CrossPlantStatusValidityDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Old Product Number'
  ProductOldID : String(40);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Gross Weight'
  GrossWeight : Decimal(13, 3);
  @sap.label : 'Order Unit'
  @sap.quickinfo : 'Purchase Order Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  PurchaseOrderQuantityUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Source of supply'
  @sap.quickinfo : 'Source of Supply'
  SourceOfSupply : String(1);
  @sap.text : 'WeightUnit_Text'
  @sap.label : 'Unit of Weight'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  WeightUnit : String(3);
  @sap.label : 'Meas. Unit Text'
  @sap.quickinfo : 'Unit of Measurement Text (Maximum 30 Characters)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WeightUnit_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cntry/Reg of Origin'
  @sap.quickinfo : 'Country/Region of Origin of Material (Non-Preferential Ori.)'
  CountryOfOrigin : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Competitor'
  CompetitorID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductGroup_Text'
  @sap.label : 'Product Group'
  @sap.value.list : 'standard'
  ProductGroup : String(9);
  @sap.label : 'Product Group Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductGroup_Text : String(20);
  @sap.text : 'BaseUnit_Text'
  @sap.label : 'Base Unit of Measure'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.label : 'Meas. Unit Text'
  @sap.quickinfo : 'Unit of Measurement Text (Maximum 30 Characters)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BaseUnit_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ItemCategoryGroup_Text'
  @sap.label : 'Gen. item cat. grp'
  @sap.quickinfo : 'General item category group'
  @sap.value.list : 'standard'
  ItemCategoryGroup : String(4);
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ItemCategoryGroup_Text : String(20);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Net Weight'
  NetWeight : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductHierarchy_Text'
  @sap.label : 'Product Hierarchy'
  @sap.value.list : 'standard'
  ProductHierarchy : String(18);
  @sap.label : 'Product Hierarchy Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductHierarchy_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'Division_Text'
  @sap.label : 'Division'
  @sap.value.list : 'standard'
  Division : String(2);
  @sap.label : 'Division Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Division_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Var. Order Unit'
  @sap.quickinfo : 'Variable Purchase Order Unit Active'
  VarblPurOrdUnitIsActive : String(1);
  @sap.text : 'VolumeUnit_Text'
  @sap.label : 'Volume Unit'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  VolumeUnit : String(3);
  @sap.label : 'Meas. Unit Text'
  @sap.quickinfo : 'Unit of Measurement Text (Maximum 30 Characters)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  VolumeUnit_Text : String(30);
  @sap.unit : 'VolumeUnit'
  @sap.label : 'Volume'
  MaterialVolume : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'X-distr.chain status'
  @sap.quickinfo : 'Cross-Distribution-Chain Material Status'
  SalesStatus : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportation Group'
  TransportationGroup : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Valid from'
  @sap.quickinfo : 'Date from which the X-distr.-chain material status is valid'
  SalesStatusValidityDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
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
  @sap.label : 'Product Category'
  @sap.value.list : 'standard'
  ProductCategory : String(2);
  @sap.label : 'Product Category Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductCategory_Text : String(60);
  @sap.display.format : 'UpperCase'
  @sap.text : 'Brand_Text'
  @sap.label : 'Brand'
  @sap.value.list : 'standard'
  Brand : String(4);
  @sap.label : 'Brand Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Brand_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Procurement rule'
  ProcurementRule : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  ValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Low-Level Code'
  LowLevelCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Generic Material'
  @sap.quickinfo : 'Material Number of the Generic Material in Prepack Materials'
  ProdNoInGenProdInPrepackProd : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serial No. Profile'
  @sap.quickinfo : 'Serial Number Profile'
  SerialIdentifierAssgmtProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Size/dimensions'
  SizeOrDimensionText : String(32);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry Std Desc.'
  @sap.quickinfo : 'Industry Standard Description (such as ANSI or ISO)'
  IndustryStandardName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'GTIN'
  @sap.quickinfo : 'Global Trade Item Number (EAN/UPC/GTIN)'
  ProductStandardID : String(18);
  @sap.display.format : 'UpperCase'
  @sap.text : 'InternationalArticleNumberCat_Text'
  @sap.label : 'EAN Category'
  @sap.quickinfo : 'Category of International Article Number (EAN)'
  @sap.value.list : 'standard'
  InternationalArticleNumberCat : String(2);
  @sap.label : 'Number category text'
  @sap.quickinfo : 'Description of number category'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InternationalArticleNumberCat_Text : String(40);
  @sap.label : 'Configurable'
  @sap.quickinfo : 'Product is Configurable'
  ProductIsConfigurable : Boolean;
  @sap.label : 'Batch Management'
  @sap.quickinfo : 'Batch Management Requirement Indicator'
  IsBatchManagementRequired : Boolean;
  @sap.label : 'With Empties BOM'
  @sap.quickinfo : 'Empties Bill of Material'
  HasEmptiesBOM : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ExternalProductGroup_Text'
  @sap.label : 'Ext. Product Group'
  @sap.quickinfo : 'External Product Group'
  @sap.value.list : 'standard'
  ExternalProductGroup : String(18);
  @sap.label : 'Ext. Prod Grp Descr'
  @sap.quickinfo : 'Description for external product group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ExternalProductGroup_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CrossPlantConfigurableProduct_Text'
  @sap.label : 'Cross-plant CP'
  @sap.quickinfo : 'Cross-Plant Configurable Product'
  @sap.value.list : 'standard'
  CrossPlantConfigurableProduct : String(40);
  @sap.label : 'Product Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CrossPlantConfigurableProduct_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serialization level'
  @sap.quickinfo : 'Level of Explicitness for Serial Number'
  SerialNoExplicitnessLevel : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mfr Part Number'
  @sap.quickinfo : 'Manufacturer Part Number'
  ProductManufacturerNumber : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Manufacturer'
  @sap.quickinfo : 'Number of a Manufacturer'
  ManufacturerNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mfr Part Profile'
  ManufacturerPartProfile : String(4);
  @sap.label : 'QM in Procur. Active'
  @sap.quickinfo : 'QM in Procurement Is Active'
  QltyMgmtInProcmtIsActive : Boolean;
  @sap.label : 'Appr.Batch Recd Req.'
  @sap.quickinfo : 'Approved Batch Record Required'
  IsApprovedBatchRecordReqd : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'HandlingIndicator_Text'
  @sap.label : 'Handling Indicator'
  @sap.value.list : 'standard'
  HandlingIndicator : String(4);
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  HandlingIndicator_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'WarehouseProductGroup_Text'
  @sap.label : 'WH Material Group'
  @sap.quickinfo : 'Warehouse Material Group'
  @sap.value.list : 'standard'
  WarehouseProductGroup : String(4);
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WarehouseProductGroup_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'WarehouseStorageCondition_Text'
  @sap.label : 'Whse Stor. Condition'
  @sap.quickinfo : 'Warehouse Storage Condition'
  @sap.value.list : 'standard'
  WarehouseStorageCondition : String(2);
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WarehouseStorageCondition_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'StandardHandlingUnitType_Text'
  @sap.label : 'Standard HU Type'
  @sap.value.list : 'standard'
  StandardHandlingUnitType : String(4);
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StandardHandlingUnitType_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'SerialNumberProfile_Text'
  @sap.label : 'Serial No. Profile'
  @sap.quickinfo : 'Serial Number Profile'
  @sap.value.list : 'standard'
  SerialNumberProfile : String(4);
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SerialNumberProfile_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'AdjustmentProfile_Text'
  @sap.label : 'Adjust. Profile'
  @sap.quickinfo : 'Adjustment Profile'
  @sap.value.list : 'standard'
  AdjustmentProfile : String(3);
  @sap.label : 'Desc. Adjust.Profile'
  @sap.quickinfo : 'Description - Merchandise Distribution - Adjustment Profile'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AdjustmentProfile_Text : String(40);
  @sap.label : 'Preferred UoM'
  @sap.quickinfo : 'Preferred Alternative UoM for Warehouse Operations'
  @sap.semantics : 'unit-of-measure'
  PreferredUnitOfMeasure : String(3);
  @sap.label : 'Pilferable'
  IsPilferable : Boolean;
  @sap.label : 'Relevant for HS'
  @sap.quickinfo : 'Relevant for Hazardous Substances'
  IsRelevantForHzdsSubstances : Boolean;
  @sap.unit : 'TimeUnitForQuarantinePeriod'
  @sap.label : 'Quarant. Per.'
  @sap.quickinfo : 'Quarantine Period'
  QuarantinePeriod : Decimal(3, 0);
  @sap.text : 'TimeUnitForQuarantinePeriod_Text'
  @sap.label : 'Time Unit'
  @sap.quickinfo : 'Time Unit for Quarantine Period'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  TimeUnitForQuarantinePeriod : String(3);
  @sap.label : 'Meas. Unit Text'
  @sap.quickinfo : 'Unit of Measurement Text (Maximum 30 Characters)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TimeUnitForQuarantinePeriod_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'QualityInspectionGroup_Text'
  @sap.label : 'Quality Inspec. Grp'
  @sap.quickinfo : 'Quality Inspection Group'
  @sap.value.list : 'standard'
  QualityInspectionGroup : String(4);
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  QualityInspectionGroup_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'HandlingUnitType_Text'
  @sap.label : 'Handling Unit Type'
  @sap.value.list : 'standard'
  HandlingUnitType : String(4);
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  HandlingUnitType_Text : String(40);
  @sap.label : 'Varb. Tare Weight'
  @sap.quickinfo : 'Variable Tare Weight'
  HasVariableTareWeight : Boolean;
  @sap.unit : 'UnitForMaxPackagingDimensions'
  @sap.label : 'Max. Pack. Length'
  @sap.quickinfo : 'Maximum Packing Length of Packaging Material'
  MaximumPackagingLength : Decimal(15, 3);
  @sap.unit : 'UnitForMaxPackagingDimensions'
  @sap.label : 'Max. Pack. Width'
  @sap.quickinfo : 'Maximum Packing Width of Packaging Material'
  MaximumPackagingWidth : Decimal(15, 3);
  @sap.unit : 'UnitForMaxPackagingDimensions'
  @sap.label : 'Max. Pack. Height'
  @sap.quickinfo : 'Maximum Packing Height of Packaging Material'
  MaximumPackagingHeight : Decimal(15, 3);
  @sap.label : 'Maximum Capacity'
  @sap.quickinfo : 'Maximum Allowed Capacity of Packaging Material'
  MaximumCapacity : Decimal(15, 3);
  @sap.label : 'Overcapacity Toler.'
  @sap.quickinfo : 'Overcapacity Tolerance of the Handling Unit'
  OvercapacityTolerance : Decimal(3, 1);
  @sap.text : 'UnitForMaxPackagingDimensions_Text'
  @sap.label : 'Unit of Measurement'
  @sap.quickinfo : 'Unit of Measure for Maximum Packing Length/Width/Height'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  UnitForMaxPackagingDimensions : String(3);
  @sap.label : 'Meas. Unit Text'
  @sap.quickinfo : 'Unit of Measurement Text (Maximum 30 Characters)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  UnitForMaxPackagingDimensions_Text : String(30);
  @sap.unit : 'ProductMeasurementUnit'
  @sap.label : 'Length'
  BaseUnitSpecificProductLength : Decimal(13, 3);
  @sap.unit : 'ProductMeasurementUnit'
  @sap.label : 'Width'
  BaseUnitSpecificProductWidth : Decimal(13, 3);
  @sap.unit : 'ProductMeasurementUnit'
  @sap.label : 'Height'
  BaseUnitSpecificProductHeight : Decimal(13, 3);
  @sap.text : 'ProductMeasurementUnit_Text'
  @sap.label : 'Unit of Dimension'
  @sap.quickinfo : 'Unit of Dimension for Length/Width/Height'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  ProductMeasurementUnit : String(3);
  @sap.label : 'Meas. Unit Text'
  @sap.quickinfo : 'Unit of Measurement Text (Maximum 30 Characters)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductMeasurementUnit_Text : String(30);
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  ProductValidStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Category'
  ArticleCategory : String(2);
  @sap.text : 'ContentUnit_Text'
  @sap.label : 'Content Unit'
  @sap.quickinfo : 'Content unit'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  ContentUnit : String(3);
  @sap.label : 'Meas. Unit Text'
  @sap.quickinfo : 'Unit of Measurement Text (Maximum 30 Characters)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ContentUnit_Text : String(30);
  @sap.unit : 'ContentUnit'
  @sap.label : 'Net Contents'
  NetContent : Decimal(13, 3);
  @sap.unit : 'ContentUnit'
  @sap.label : 'Comparison Price Unit'
  @sap.quickinfo : 'Comparison price unit'
  ComparisonPriceQuantity : Decimal(5, 0);
  @sap.unit : 'ContentUnit'
  @sap.label : 'Gross Contents'
  @sap.quickinfo : 'Gross contents'
  GrossContent : Decimal(13, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Deletion date'
  ProductValidEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.text : 'AssortmentListType_Text'
  @sap.label : 'Assortment List Type'
  @sap.value.list : 'standard'
  AssortmentListType : String(1);
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AssortmentListType_Text : String(20);
  @sap.label : 'Animal Origin'
  @sap.quickinfo : 'Indicator: Contains Non-Textile Parts of Animal Origin'
  HasTextilePartsWthAnimalOrigin : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Season Usage'
  @sap.quickinfo : 'Indicator: Use of Season'
  ProductSeasonUsageCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry'
  IndustrySector : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Change Number'
  ChangeNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Revision Level'
  MaterialRevisionLevel : String(2);
  @sap.label : 'Is active'
  @sap.quickinfo : 'Draft - Indicator - Is active document'
  IsActiveEntity : Boolean;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Last Changed'
  @sap.quickinfo : 'Change Time Stamp'
  LastChangeDateTime : Timestamp;
  @sap.label : 'Last Changed Time'
  @sap.quickinfo : 'Time of Last Change'
  LastChangeTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'DG indicator profile'
  @sap.quickinfo : 'Dangerous Goods Indicator Profile'
  DangerousGoodsIndProfile : String(3);
  @sap.label : 'Product'
  @sap.quickinfo : 'Internal Key for Product'
  ProductUUID : UUID;
  @sap.label : 'Product ID'
  @sap.quickinfo : 'Internal Number (UID) for Product'
  ProdSupChnMgmtUUID22 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Change No.'
  @sap.quickinfo : 'Document change number (without document management system)'
  ProductDocumentChangeNumber : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Number Of Sheets'
  @sap.quickinfo : 'Number Of Sheets (without Document Management system)'
  ProductDocumentPageCount : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Page Number'
  @sap.quickinfo : 'Page Number of document (without Document Management system)'
  ProductDocumentPageNumber : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Int. material number'
  @sap.quickinfo : 'Number of firm''s own (internal) inventory-managed material'
  OwnInventoryManagedProduct : String(40);
  @sap.label : 'CAD Indicator'
  DocumentIsCreatedByCAD : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Prod./insp. memo'
  @sap.quickinfo : 'Production/inspection memo'
  ProductionOrInspectionMemoTxt : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Page format'
  @sap.quickinfo : 'Page Format of Production Memo'
  ProductionMemoPageFormat : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'EAN Variant'
  @sap.quickinfo : 'Global Trade Item Number Variant'
  GlobalTradeItemNumberVariant : String(2);
  @sap.label : 'Highly viscous'
  @sap.quickinfo : 'Indicator: Highly Viscous'
  ProductIsHighlyViscous : Boolean;
  @sap.label : 'In bulk/liquid'
  @sap.quickinfo : 'Indicator: In Bulk/Liquid'
  TransportIsInBulk : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product allocation'
  @sap.quickinfo : 'Product allocation determination procedure'
  ProdAllocDetnProcedure : String(18);
  @sap.label : 'Assign effect. vals'
  @sap.quickinfo : 'Assign effectivity parameter values/ override change numbers'
  ProdEffctyParamValsAreAssigned : Boolean;
  @sap.label : 'Environmentally rlvt'
  @sap.quickinfo : 'Environmentally Relevant'
  ProdIsEnvironmentallyRelevant : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lab/Office'
  @sap.quickinfo : 'Laboratory/Design Office'
  LaboratoryOrDesignOffice : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Matl Grp Pack.Matls'
  @sap.quickinfo : 'Material Group: Packaging Materials'
  PackagingMaterialGroup : String(4);
  @sap.label : 'Material locked'
  @sap.quickinfo : 'Material Is Locked'
  ProductIsLocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Qual.f.FreeGoodsDis.'
  @sap.quickinfo : 'Material qualifies for discount in kind'
  DiscountInKindEligibility : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Form Name'
  SmartFormName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ref. mat. for pckg'
  @sap.quickinfo : 'Reference material for materials packed in same way'
  PackingReferenceProduct : String(40);
  @sap.label : 'Basic Material'
  @sap.value.list : 'standard'
  BasicMaterial : String(48);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document'
  @sap.quickinfo : 'Document number (without document management system)'
  ProductDocumentNumber : String(22);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Version'
  @sap.quickinfo : 'Document version (without Document Management system)'
  ProductDocumentVersion : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Type'
  @sap.quickinfo : 'Document type (without Document Management system)'
  ProductDocumentType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Page Format'
  @sap.quickinfo : 'Page Format of Document (without Document Management system)'
  ProductDocumentPageFormat : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Internal object no.'
  @sap.quickinfo : 'Internal object number'
  ProductConfiguration : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Seg. Strategy'
  @sap.quickinfo : 'Segmentation Strategy'
  SegmentationStrategy : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Seg. Relevant'
  @sap.quickinfo : 'Segmentation Relevant'
  SegmentationIsRelevant : String(1);
  @sap.label : 'Product Composition'
  @sap.quickinfo : 'Indicator: Product composition printed on packaging'
  ProductCompositionIsRelevant : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'IsChemicalComplianceRelevant_Text'
  @sap.label : 'Chemical Compliance Relevance Indicator'
  @sap.value.list : 'fixed-values'
  IsChemicalComplianceRelevant : String(1);
  @sap.label : 'Short Description'
  @sap.quickinfo : 'Short Text for Fixed Values'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IsChemicalComplianceRelevant_Text : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'MS Book Part No'
  @sap.quickinfo : 'Manufacturer Book Part Number'
  ManufacturerBookPartNumber : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Logl Material Cat.'
  @sap.quickinfo : 'Category of a Logistical Material'
  LogisticalProductCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Material No.'
  @sap.quickinfo : 'Material Number of a Sales Material'
  SalesProduct : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. Char. Number'
  @sap.quickinfo : 'Internal Charactieristic Number for Color Characteristics'
  ProdCharc1InternalNumber : String(30);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. Char. Number'
  @sap.quickinfo : 'Internal Char. Number for Characteristics for Main Sizes'
  ProdCharc2InternalNumber : String(30);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. Char. Number'
  @sap.quickinfo : 'Internal Char. Number for Characteristics for Second Sizes'
  ProdCharc3InternalNumber : String(30);
  @sap.label : 'Color'
  @sap.quickinfo : 'Characteristic Value for Colors of Variants'
  ProductCharacteristic1 : String(18);
  @sap.label : 'Main Size'
  @sap.quickinfo : 'Characteristic Value for Main Sizes of Variants'
  ProductCharacteristic2 : String(18);
  @sap.label : 'Second Size'
  @sap.quickinfo : 'Characteristic Value for Second Size for Variants'
  ProductCharacteristic3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance Status'
  MaintenanceStatus : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fsh. Attribute1'
  @sap.quickinfo : 'Fashion Information Field: 1'
  FashionProdInformationField1 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fsh. Attribute2'
  @sap.quickinfo : 'Fashion Information Field: 2'
  FashionProdInformationField2 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fsh. Attribute3'
  @sap.quickinfo : 'Fashion Information Field: 3'
  FashionProdInformationField3 : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ammunition Code'
  @sap.quickinfo : 'Interchangeability Code for Ammunition'
  DfsAmmunitionGroupCode : String(8);
  @sap.label : 'RIC ID'
  @sap.quickinfo : 'Reportable Item Code - Numerical ID'
  DfsRICIdentifier : Integer64;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sensitivity for Char'
  @sap.quickinfo : 'Sensitivity for Characteristics'
  DfsProductSensitivity : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Long Mfr Part No.'
  @sap.quickinfo : 'Long Manufacturer Part Number'
  DfsManufacturerPartLongNumber : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Mgmt'
  @sap.quickinfo : 'Material Condition Management'
  DfsMatlConditionMgmt : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Return Code'
  DfsReturnDelivery : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Return to Log.Level'
  @sap.quickinfo : 'Return to Logistics Level'
  DfsLogisticsLevel : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'NATO Stock Number'
  DfsNationalItemIdnNumber : String(9);
  @sap.label : 'Coda'
  ZZ1_CODA_PRD : String(18);
  @sap.unit : 'ZZ1_SPESSOREPELLAME_PRDU'
  @sap.label : 'Spessore Pellame'
  @sap.quickinfo : 'SPESSOREPELLAME'
  ZZ1_SPESSOREPELLAME_PRD : Decimal(15, 3);
  @sap.label : 'Spessore Pellame UoM'
  @sap.quickinfo : 'SPESSOREPELLAME (Unit)'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  ZZ1_SPESSOREPELLAME_PRDU : String(3);
  @sap.label : 'Gola'
  ZZ1_GOLA_PRD : String(18);
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
@sap.label : 'Product Category Type'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductCategory {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductCategory_Text'
  @sap.label : 'Product Category'
  key ProductCategory : String(2) not null;
  @sap.label : 'Product Category Text'
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
@sap.label : 'Product Group'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductGroup_2 {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductGroup_Text'
  @sap.label : 'Product Group'
  key ProductGroup : String(9) not null;
  @sap.label : 'Product Group Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductGroup_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Class'
  ValuationClass : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing value key'
  @sap.quickinfo : 'Purchasing Value Key'
  PurchasingAcknProfile : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Product Hierarchy'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductHierarchy {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductHierarchy_Text'
  @sap.label : 'Product Hierarchy'
  key ProductHierarchy : String(18) not null;
  @sap.label : 'Product Hierarchy Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductHierarchy_Text : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Level Number'
  @sap.quickinfo : 'Number of the level in the product hierarchy'
  ProductHierarchyLevel : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Production Scheduling Profile'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductionSchedulingProfile {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductionSchedulingProfile_Text'
  @sap.label : 'Production Scheduling Profile'
  key ProductionSchedulingProfile : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.label : 'Sched. Profile Name'
  @sap.quickinfo : 'Description of Production Scheduling Profile'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductionSchedulingProfile_Text : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Order Category'
  OrderCategory : String(2);
  @sap.label : 'Aut. Goods Receipt'
  @sap.quickinfo : 'Indicator: Post Goods Receipt Automatically'
  GRIsPostedAutomatically : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Post Sync. to Bin'
  @sap.quickinfo : 'Synchronous posting of goods movement for EWM'
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
@sap.label : 'Production Supervisor'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductionSupervisor {
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Plant'
  @sap.value.list : 'standard'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductionSupervisorName'
  @sap.label : 'Production Supervisor'
  key ProductionSupervisor : String(3) not null;
  @sap.label : 'Prod. Superv. Name'
  @sap.quickinfo : 'Production Supervisor Name'
  ProductionSupervisorName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ProductionSchedulingProfile/ProductionSchedulingProfile_Text'
  @sap.label : 'Production Scheduling Profile'
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
@sap.label : 'Production Supply Area'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductionSupplyArea {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductionSupplyArea_Text'
  @sap.label : 'Production Supply Area'
  key ProductionSupplyArea : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Plant'
  @sap.value.list : 'standard'
  key Plant : String(4) not null;
  @sap.label : 'Production Supply Area Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductionSupplyArea_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_StorageLocation/StorageLocationName'
  @sap.label : 'Storage Location'
  @sap.value.list : 'standard'
  StorageLocation : String(4);
  @sap.label : 'Unloading Point'
  UnloadingPointName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supply Area Address'
  @sap.quickinfo : 'Address for Supply Area'
  AddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ResponsiblePerson/MRPControllerName'
  @sap.label : 'Responsible'
  @sap.quickinfo : 'Person responsible for one or more supply areas'
  ProductionSupplyAreaRespPerson : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Factory Calendar'
  @sap.quickinfo : 'Factory calendar key'
  FactoryCalendar : String(2);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ShiftGrouping/ShiftGrouping_Text'
  @sap.label : 'Grouping (Cons.)'
  @sap.quickinfo : 'Grouping for Shift Definition and Sequences (Consumer)'
  @sap.value.list : 'standard'
  ShiftGrouping : String(2);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ShiftSequence/ShiftSequence_Text'
  @sap.label : 'Shift Seq. (Cons.)'
  @sap.quickinfo : 'Key for Shift Sequence (Consumer)'
  @sap.value.list : 'standard'
  ShiftSequence : String(4);
  @sap.label : 'Pull Int. [Days]'
  @sap.quickinfo : 'Pull Interval in Workdays'
  PullIntervalInWorkdays : Decimal(3, 0);
  @sap.label : 'Pull Int. [h:min]'
  @sap.quickinfo : 'Pull Interval in Hours and Minutes'
  PullIntervalInHoursAndMinutes : Decimal(11, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : '(Auto) UnloadPt'
  @sap.quickinfo : '(Automotive) Unloading Point'
  UnloadingWarehouseStagingArea : String(10);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Last Change'
  @sap.quickinfo : 'Last Change Timestamp'
  LastChangeDateTime : Timestamp;
  @sap.label : 'Loading Point'
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
@sap.label : 'Cross-Plant Product Status'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductStatus {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Status_Text'
  @sap.label : 'Product Status'
  @sap.quickinfo : 'Plant-Specific Product Status'
  key Status : String(2) not null;
  @sap.label : 'Cross Plant Status Text'
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
@sap.label : 'Product Value Help'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProductStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Product_Text'
  @sap.label : 'Product'
  @sap.quickinfo : 'Product Number'
  key Product : String(40) not null;
  @sap.label : 'Product Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Product_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'External Product ID'
  @sap.quickinfo : 'External Representation of Material Number'
  ProductExternalID : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Product Type'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Producttype {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProductType_Text'
  @sap.label : 'Product Type'
  key ProductType : String(4) not null;
  @sap.label : 'Product Type Description'
  @sap.quickinfo : 'Description of product type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductType_Text : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Type Group'
  ProductTypeCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization group'
  @sap.quickinfo : 'Authorization group in the material master'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance Status'
  MaintenanceStatus : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ref. material type'
  @sap.quickinfo : 'Reference material type'
  ReferenceProductType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct cat. reference'
  @sap.quickinfo : 'Account category reference'
  AcctCategoryRef : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Profit Center'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ProfitCenterStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ProfitCenter_Text'
  @sap.label : 'Profit Center'
  key ProfitCenter : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Valid To Date'
  key ValidityEndDate : Date not null;
  @sap.label : 'Profit Center Name'
  @sap.quickinfo : 'Description of Profit Center'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProfitCenter_Text : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  ValidityStartDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Purchasing Document'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_PurchasingDocument {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key PurchasingDocument : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  PurchasingDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Doc. Type'
  @sap.quickinfo : 'Purchasing Document Type'
  PurchasingDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Control indicator'
  @sap.quickinfo : 'Control indicator for purchasing document type'
  PurchasingDocumentSubtype : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion Indicator'
  @sap.quickinfo : 'Deletion Indicator in Purchasing Document'
  PurchasingDocumentDeletionCode : String(1);
  @sap.label : 'Document aged'
  @sap.quickinfo : 'Document is aged'
  PurchasingDocumentIsAged : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number Interval'
  ItemNumberInterval : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Subitem Interval'
  @sap.quickinfo : 'Item Number Interval for Subitems'
  ItemNumberIntervalForSubItems : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Status of Purchasing Document'
  PurchasingDocumentOrigin : String(1);
  @sap.label : 'Subject to Release'
  @sap.quickinfo : 'Release Not Yet Completely Effected'
  ReleaseIsNotCompleted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release indicator'
  @sap.quickinfo : 'Release Indicator: Purchasing Document'
  ReleaseCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release Strategy'
  PurchasingReleaseStrategy : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release State'
  PurgReleaseSequenceStatus : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reporting C/R'
  @sap.quickinfo : 'Country/Region for Tax Report'
  TaxReturnCountry : String(3);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Creation Date of Purchasing Document'
  CreationDate : Date;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Last Changed'
  @sap.quickinfo : 'Change Time Stamp'
  LastChangeDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'User of person who created a purchasing document'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  Supplier : String(10);
  @sap.label : 'Salesperson'
  @sap.quickinfo : 'Responsible Salesperson at Supplier''s Office'
  SupplierRespSalesPersonName : String(30);
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Supplier''s Telephone Number'
  SupplierPhoneNumber : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  SupplierAddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  ManualSupplierAddressID : String(10);
  @sap.label : 'Your Reference'
  CorrespncExternalReference : String(12);
  @sap.label : 'Our Reference'
  CorrespncInternalReference : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Organization'
  @sap.quickinfo : 'Purchasing Organization'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.label : 'Exchange Rate'
  ExchangeRate : Decimal(9, 5);
  @sap.display.format : 'Date'
  @sap.label : 'Document Date'
  @sap.quickinfo : 'Purchasing Document Date'
  PurchasingDocumentOrderDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Goods Supplier'
  SupplyingSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplying Plant'
  @sap.quickinfo : 'Supplying (issuing) plant in case of stock transport order'
  SupplyingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoicing Party'
  @sap.quickinfo : 'Different Invoicing Party'
  InvoicingParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  Customer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Outline agreement'
  @sap.quickinfo : 'Number of principal purchase agreement'
  PurchaseContract : String(10);
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reason for Canc.'
  @sap.quickinfo : 'Reason for Cancellation'
  PurgReasonForDocCancellation : String(2);
  @sap.label : 'Incomplete'
  @sap.quickinfo : 'Purchase order not yet complete'
  PurchasingCompletenessStatus : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Terms'
  @sap.quickinfo : 'Terms of Payment Key'
  PaymentTerms : String(4);
  @sap.label : 'Days 1'
  @sap.quickinfo : 'Cash Discount Days 1'
  CashDiscount1Days : Decimal(3, 0);
  @sap.label : 'Days 2'
  @sap.quickinfo : 'Cash Discount Days 2'
  CashDiscount2Days : Decimal(3, 0);
  @sap.label : 'Days Net'
  @sap.quickinfo : 'Net Payment Terms Period'
  NetPaymentDays : Decimal(3, 0);
  @sap.label : 'CD Percentage 1'
  @sap.quickinfo : 'Cash Discount Percentage 1'
  CashDiscount1Percent : Decimal(5, 3);
  @sap.label : 'CD Percentage 2'
  @sap.quickinfo : 'Cash Discount Percentage 2'
  CashDiscount2Percent : Decimal(5, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Procedure'
  @sap.quickinfo : 'Procedure (Pricing, Output Control, Acct. Det., Costing,...)'
  PricingProcedure : String(6);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Target Value'
  @sap.quickinfo : 'Target Value for Header Area per Distribution'
  TargetAmount : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Type'
  @sap.quickinfo : 'Distribution Type for Purchasing Document'
  PurgDocumentDistributionType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Doc. Condition No.'
  @sap.quickinfo : 'Number of the Document Condition'
  PurchasingDocumentCondition : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Validity Per. Start'
  @sap.quickinfo : 'Start of Validity Period'
  ValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Validity Period End'
  @sap.quickinfo : 'End of Validity Period'
  ValidityEndDate : Date;
  @sap.label : 'Rel. Documentation'
  @sap.quickinfo : 'Indicator for scheduling agreement release documentation'
  ScheduleAgreementHasReleaseDoc : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Quotation Deadline'
  @sap.quickinfo : 'Deadline for Submission of Bid/Quotation'
  QuotationLatestSubmissionDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Binding Period'
  @sap.quickinfo : 'Binding Period for Quotation'
  BindingPeriodValidityEndDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Quotation Date'
  @sap.quickinfo : 'Quotation Submission Date'
  QuotationSubmissionDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Quotation'
  @sap.quickinfo : 'Quotation Number'
  SupplierQuotationExternalID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bid invitation'
  @sap.quickinfo : 'Bid invitation number'
  RequestForQuotation : String(10);
  @sap.label : 'Fixed Exchange Rate'
  @sap.quickinfo : 'Indicator for Fixed Exchange Rate'
  ExchangeRateIsFixed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4);
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Proc. State'
  @sap.quickinfo : 'Purchasing Document Processing State'
  PurchasingProcessingStatus : String(2);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Tot. val. rel.'
  @sap.quickinfo : 'Total value at time of release'
  PurgReleaseTimeTotalAmount : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Down Payment'
  @sap.quickinfo : 'Down Payment Indicator'
  DownPaymentType : String(4);
  @sap.label : 'Down Payment %'
  @sap.quickinfo : 'Down Payment Percentage'
  DownPaymentPercentageOfTotAmt : Decimal(5, 2);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Down Payment Amount'
  @sap.quickinfo : 'Down Payment Amount in Document Currency'
  DownPaymentAmount : Decimal(12, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Due Date for DP'
  @sap.quickinfo : 'Due Date for Down Payment'
  DownPaymentDueDate : Date;
  @sap.label : 'Purch. Doc. Name'
  @sap.quickinfo : 'Name of Purchasing Document'
  PurchasingDocumentName : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Quotation Start Date'
  @sap.quickinfo : 'The date as of which Quotations can be submitted'
  QuotationEarliestSubmsnDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Application Close'
  @sap.quickinfo : 'Closing Date for Applications'
  LatestRegistrationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Follow-On Document Category'
  @sap.quickinfo : 'Follow-On Purchasing Document Category'
  FollowOnDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Follow-On Document Type'
  @sap.quickinfo : 'Follow-On Purchasing Document Type'
  FollowOnDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ctry/Rgn Sls Tax No.'
  @sap.quickinfo : 'Country/Region of Sales Tax ID Number'
  VATRegistrationCountry : String(3);
  @sap.label : 'Intrastat Relevance'
  @sap.quickinfo : 'Relevant for Intrastat Reporting'
  IsIntrastatReportingRelevant : Boolean;
  @sap.label : 'Intrastat Exclusion'
  @sap.quickinfo : 'Exclude from Intrastat Reporting'
  IsIntrastatReportingExcluded : Boolean;
  @sap.label : 'Busin. Purp. Cmpltd.'
  @sap.quickinfo : 'Business Purpose Completed'
  IsEndOfPurposeBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parent Document ID'
  @sap.quickinfo : 'ID of the Parent Document'
  PurchasingParentDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grouping ID'
  @sap.quickinfo : 'Grouping ID for Company Codes'
  ProcmtHubCompanyCodeGroupingID : String(3);
  @sap.label : 'Charging ship.fees'
  @sap.quickinfo : 'Indicator for charging shipment fees'
  ShipFee : Boolean;
  @sap.label : 'Ship.acc.with goods'
  @sap.quickinfo : 'Indicator for shipping accessories with goods'
  ShipAccWithGoods : Boolean;
  @sap.label : 'GB 18401 compliance'
  @sap.quickinfo : 'Indicator for GB 18401 standard compliance'
  GB18401 : Boolean;
  @sap.label : 'Send order to Italy'
  @sap.quickinfo : 'Indicator for sending the order to Italy'
  SendToItaly : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Service Ord'
  @sap.quickinfo : 'Customer service order ID'
  StagingOrderID : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Purchasing Document Item'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_PurchasingDocumentItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key PurchasingDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  key PurchasingDocumentItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Item'
  @sap.quickinfo : 'Concatenation of EBELN and EBELP'
  PurchasingDocumentItemUniqueID : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  PurchasingDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion Indicator'
  @sap.quickinfo : 'Deletion Indicator in Purchasing Document'
  PurchasingDocumentDeletionCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  Material : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Mat. No.'
  @sap.quickinfo : 'Material Number Used by Supplier'
  SupplierMaterialNumber : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material number'
  ManufacturerMaterial : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mfr Part Number'
  @sap.quickinfo : 'Manufacturer Part Number'
  ManufacturerPartNmbr : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Manufacturer'
  @sap.quickinfo : 'Number of a Manufacturer'
  Manufacturer : String(10);
  @sap.label : 'Short Text'
  PurchasingDocumentItemText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address'
  @sap.quickinfo : 'Manual address number in purchasing document item'
  ManualDeliveryAddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address'
  @sap.quickinfo : 'Number of delivery address'
  ReferenceDeliveryAddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  Customer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Supplier to be Supplied/Who is to Receive Delivery'
  Subcontractor : String(10);
  @sap.label : 'SC Supplier'
  @sap.quickinfo : 'Subcontracting Supplier'
  SupplierIsSubcontractor : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cross-plant CM'
  @sap.quickinfo : 'Cross-Plant Configurable Material'
  CrossPlantConfigurableProduct : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Category'
  ArticleCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Kanban Indicator'
  PlndOrderReplnmtElmntType : String(1);
  @sap.label : 'Points Unit'
  @sap.semantics : 'unit-of-measure'
  ProductPurchasePointsQtyUnit : String(3);
  @sap.unit : 'ProductPurchasePointsQtyUnit'
  @sap.label : 'Points'
  @sap.quickinfo : 'Number of Points'
  ProductPurchasePointsQty : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage Location'
  StorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group'
  MaterialGroup : String(9);
  @sap.label : 'Order Unit'
  @sap.quickinfo : 'Purchase Order Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  OrderQuantityUnit : String(3);
  @sap.label : 'Equal To'
  @sap.quickinfo : 'Numerator for Conversion of Order Unit to Base Unit'
  OrderItemQtyToBaseQtyNmrtr : Decimal(5, 0);
  @sap.label : 'Denominator'
  @sap.quickinfo : 'Denominator for Conversion of Order Unit to Base Unit'
  OrderItemQtyToBaseQtyDnmntr : Decimal(5, 0);
  @sap.unit : 'OrderPriceUnit'
  @sap.label : 'Price Unit'
  NetPriceQuantity : Decimal(5, 0);
  @sap.label : 'Delivery Completed'
  @sap.quickinfo : 'Delivery Completed Indicator'
  IsCompletelyDelivered : Boolean;
  @sap.label : 'Final Invoice'
  @sap.quickinfo : 'Final Invoice Indicator'
  IsFinallyInvoiced : Boolean;
  @sap.label : 'Goods Receipt'
  @sap.quickinfo : 'Goods Receipt Indicator'
  GoodsReceiptIsExpected : Boolean;
  @sap.label : 'Invoice Receipt'
  @sap.quickinfo : 'Invoice Receipt Indicator'
  InvoiceIsExpected : Boolean;
  @sap.label : 'Final Delivery'
  @sap.quickinfo : 'Outward Delivery Completed Indicator'
  OutwardDeliveryIsComplete : Boolean;
  @sap.label : 'GR-Based Inv. Verif.'
  @sap.quickinfo : 'Indicator: GR-Based Invoice Verification'
  InvoiceIsGoodsReceiptBased : Boolean;
  @sap.label : 'GR Non-Valuated'
  @sap.quickinfo : 'Goods Receipt, Non-Valuated'
  GoodsReceiptIsNonValuated : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Requisition'
  @sap.quickinfo : 'Purchase Requisition Number'
  PurchaseRequisition : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item of requisition'
  @sap.quickinfo : 'Item Number of Purchase Requisition'
  PurchaseRequisitionItem : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Package number'
  ServicePackage : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Service Performer'
  ServicePerformer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Type Group'
  ProductType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Type'
  MaterialType : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Agreement Item'
  @sap.quickinfo : 'Item Number of Principal Purchase Agreement'
  PurchaseContractItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Outline agreement'
  @sap.quickinfo : 'Number of principal purchase agreement'
  PurchaseContract : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Req. for Quotation'
  @sap.quickinfo : 'Identifier for Request for Quotation'
  RequestForQuotation : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number for RFQ'
  @sap.quickinfo : 'Item Number for Request for Quotation'
  RequestForQuotationItem : String(5);
  @sap.label : 'Eval. Receipt Sett.'
  @sap.quickinfo : 'Evaluated Receipt Settlement (ERS)'
  EvaldRcptSettlmtIsAllowed : Boolean;
  @sap.label : 'Unltd Overdelivery'
  @sap.quickinfo : 'Unlimited Overdelivery Allowed'
  UnlimitedOverdeliveryIsAllowed : Boolean;
  @sap.label : 'Overdeliv. Tolerance'
  @sap.quickinfo : 'Overdelivery Tolerance'
  OverdelivTolrtdLmtRatioInPct : Decimal(3, 1);
  @sap.label : 'Underdel. Tolerance'
  @sap.quickinfo : 'Underdelivery Tolerance'
  UnderdelivTolrtdLmtRatioInPct : Decimal(3, 1);
  @sap.label : 'Requisitioner'
  @sap.quickinfo : 'Name of requisitioner/requester'
  RequisitionerName : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'MRP Area'
  MRPArea : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28);
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Prior Supplier'
  PriorSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'EAN/UPC'
  @sap.quickinfo : 'International Article Number (EAN/UPC)'
  InternationalArticleNumber : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Confirmation Control'
  @sap.quickinfo : 'Confirmation Control Key'
  SupplierConfirmationControlKey : String(4);
  @sap.label : 'Print Price'
  @sap.quickinfo : 'Price Printout'
  PriceIsToBePrinted : Boolean;
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Item Category'
  @sap.quickinfo : 'Item category in purchasing document'
  PurchasingDocumentItemCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.label : 'Order Price Unit'
  @sap.quickinfo : 'Order Price Unit (Purchasing)'
  @sap.semantics : 'unit-of-measure'
  OrderPriceUnit : String(3);
  @sap.label : 'Volume Unit'
  @sap.semantics : 'unit-of-measure'
  VolumeUnit : String(3);
  @sap.label : 'Unit of Weight'
  @sap.semantics : 'unit-of-measure'
  WeightUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distrib. Indicator'
  @sap.quickinfo : 'Distribution Indicator for Multiple Account Assignment'
  MultipleAcctAssgmtDistribution : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partial invoice'
  @sap.quickinfo : 'Partial invoice indicator'
  PartialInvoiceDistribution : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pricing Date Control'
  @sap.quickinfo : 'Price Determination (Pricing) Date Control'
  PricingDateControl : String(1);
  @sap.label : 'Statistical'
  @sap.quickinfo : 'Item is statistical'
  IsStatisticalItem : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Higher-Level Item'
  @sap.quickinfo : 'Higher-Level Item in Purchasing Documents'
  PurchasingParentItem : String(5);
  @sap.display.format : 'Date'
  @sap.label : 'Latest GR Date'
  @sap.quickinfo : 'Latest Possible Goods Receipt'
  GoodsReceiptLatestCreationDate : Date;
  @sap.label : 'Returns Item'
  IsReturnsItem : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reason for Ordering'
  PurchasingOrderReason : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct Assignment Cat.'
  @sap.quickinfo : 'Account Assignment Category'
  AccountAssignmentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Info Rec.'
  @sap.quickinfo : 'Purchasing Info Record Number'
  PurchasingInfoRecord : String(10);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Net Order Value'
  @sap.quickinfo : 'Net Order Value in PO Currency'
  NetAmount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Gross order value'
  @sap.quickinfo : 'Gross order value in PO currency'
  GrossAmount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Effective value'
  @sap.quickinfo : 'Effective value of item'
  EffectiveAmount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Subtotal 1'
  @sap.quickinfo : 'Subtotal 1 from Pricing Procedure for Price Element'
  Subtotal1Amount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Subtotal 2'
  @sap.quickinfo : 'Subtotal 2 from Pricing Procedure for Price Element'
  Subtotal2Amount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Subtotal 3'
  @sap.quickinfo : 'Subtotal 3 from Pricing Procedure for Price Element'
  Subtotal3Amount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Subtotal 4'
  @sap.quickinfo : 'Subtotal 4 from Pricing Procedure for Price Element'
  Subtotal4Amount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Subtotal 5'
  @sap.quickinfo : 'Subtotal 5 from Pricing Procedure for Price Element'
  Subtotal5Amount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Subtotal 6'
  @sap.quickinfo : 'Subtotal 6 from Pricing Procedure for Price Element'
  Subtotal6Amount : Decimal(14, 3);
  @sap.unit : 'OrderQuantityUnit'
  @sap.label : 'Target Quantity'
  TargetQuantity : Decimal(13, 3);
  @sap.unit : 'OrderQuantityUnit'
  @sap.label : 'Order Quantity'
  @sap.quickinfo : 'Purchase Order Quantity'
  OrderQuantity : Decimal(13, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Net Order Price'
  @sap.quickinfo : 'Net Price in Purchasing Document (in Document Currency)'
  NetPriceAmount : Decimal(12, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'OA Target Value'
  @sap.quickinfo : 'Target Value for Outline Agreement in Document Currency'
  TargetAmount : Decimal(14, 3);
  @sap.unit : 'VolumeUnit'
  @sap.label : 'Volume'
  ItemVolume : Decimal(13, 3);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Gross Weight'
  ItemGrossWeight : Decimal(13, 3);
  @sap.unit : 'WeightUnit'
  @sap.label : 'Net Weight'
  ItemNetWeight : Decimal(13, 3);
  @sap.label : 'Quantity Conversion'
  @sap.quickinfo : 'Numerator for Conversion of Order Price Unit into Order Unit'
  OrderPriceUnitToOrderUnitNmrtr : Decimal(5, 0);
  @sap.label : 'Quantity Conversion'
  @sap.quickinfo : 'Denominator for Conv. of Order Price Unit into Order Unit'
  OrdPriceUnitToOrderUnitDnmntr : Decimal(5, 0);
  @sap.display.format : 'Date'
  @sap.label : 'Reconciliation Date'
  @sap.quickinfo : 'Reconciliation date for agreed cumulative quantity'
  SchedAgrmtCumQtyReconcileDate : Date;
  @sap.unit : 'OrderQuantityUnit'
  @sap.label : 'Agr. Cumulative Qty'
  @sap.quickinfo : 'Agreed Cumulative Quantity'
  SchedAgrmtAgreedCumQty : Decimal(13, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Last Transm.'
  @sap.quickinfo : 'Last Transmission'
  ItemLastTransmissionDate : Date;
  @sap.label : 'Firm Zone'
  @sap.quickinfo : 'Firm Zone (Go-Ahead for Production)'
  ScheduleLineFirmOrderInDays : Decimal(3, 0);
  @sap.label : 'Trade-Off Zone'
  @sap.quickinfo : 'Trade-Off Zone (Go-Ahead for Materials Procurement)'
  SchedLineSemiFirmOrderInDays : Decimal(3, 0);
  @sap.label : '1st Reminder/Exped.'
  @sap.quickinfo : 'Number of Days for First Reminder/Expediter'
  NoDaysReminder1 : Decimal(3, 0);
  @sap.label : '2nd Reminder/Exped.'
  @sap.quickinfo : 'Number of Days for Second Reminder/Expediter'
  NoDaysReminder2 : Decimal(3, 0);
  @sap.label : '3rd Reminder/Exped.'
  @sap.quickinfo : 'Number of Days for Third Reminder/Expediter'
  NoDaysReminder3 : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Req. Tracking Number'
  @sap.quickinfo : 'Requirement Tracking Number'
  RequirementTracking : String(10);
  @sap.label : 'Acknowledgment Reqd.'
  @sap.quickinfo : 'Order Acknowledgment Requirement'
  IsOrderAcknRqd : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock Type'
  StockType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Code'
  @sap.quickinfo : 'Tax on sales/purchases code'
  TaxCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Instr.'
  @sap.quickinfo : 'Shipping Instructions'
  ShippingInstruction : String(2);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Non-deductible'
  @sap.quickinfo : 'Non-deductible input tax'
  NonDeductibleInputTaxAmount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Type'
  ValuationType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Category'
  ValuationCategory : String(1);
  @sap.label : 'Rejection Indicator'
  ItemIsRejectedBySupplier : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Price Date'
  @sap.quickinfo : 'Date of Price Determination'
  PurgDocPriceDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Info Record Update'
  @sap.quickinfo : 'Indicator: Update Info Record'
  IsInfoRecordUpdated : String(1);
  @sap.unit : 'OrderQuantityUnit'
  @sap.label : 'Stand.Rel.Order.Qty.'
  @sap.quickinfo : 'Standard release order quantity'
  PurgDocReleaseOrderQuantity : Decimal(13, 3);
  @sap.label : 'Order Acknowledgment'
  @sap.quickinfo : 'Order Acknowledgment Number'
  PurgDocOrderAcknNumber : String(20);
  @sap.label : 'Estimated Price'
  @sap.quickinfo : 'Indicator: Estimated Price'
  PurgDocEstimatedPrice : Boolean;
  @sap.label : 'Info at Registration'
  @sap.quickinfo : 'Indicator: Action at Registration'
  IsInfoAtRegistration : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Subrange'
  SupplierSubrange : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account'
  @sap.quickinfo : 'G/L Account Number'
  GLAccount : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElementInternalID : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fund'
  Fund : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Budget Period'
  BudgetPeriod : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Funds Center'
  FundsCenter : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commitment item'
  @sap.quickinfo : 'Commitment Item'
  CommitmentItem : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Area'
  FunctionalArea : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grant'
  GrantID : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Earmarked Funds'
  @sap.quickinfo : 'Document Number for Earmarked Funds'
  EarmarkedFunds : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Earmarked Funds'
  @sap.quickinfo : 'Document Number for Earmarked Funds'
  EarmarkedFundsDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Document Item'
  @sap.quickinfo : 'Earmarked Funds: Document Item'
  EarmarkedFundsItem : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Document Item'
  @sap.quickinfo : 'Earmarked Funds: Document Item'
  EarmarkedFundsDocumentItem : String(3);
  @sap.label : 'Planned Deliv. Time'
  @sap.quickinfo : 'Planned Delivery Time in Days'
  PlannedDeliveryDurationInDays : Decimal(3, 0);
  @sap.label : 'GR processing time'
  @sap.quickinfo : 'Goods receipt processing time in days'
  GoodsReceiptDurationInDays : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partial Deliv./Item'
  @sap.quickinfo : 'Partial Delivery at Item Level (Stock Transfer)'
  PartialDeliveryIsAllowed : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consumption'
  @sap.quickinfo : 'Consumption posting'
  ConsumptionPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Creation Profile'
  @sap.quickinfo : 'Release Creation Profile'
  SchedgAgrmtRelCreationProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Control Type'
  @sap.quickinfo : 'CQ Control Type'
  SchedAgrmtCumulativeQtyControl : String(1);
  @sap.label : 'No CQ Transmission'
  @sap.quickinfo : 'No Transmission of Cumulative Quantities in SA Release'
  CumulativeQuantityIsNotSent : Boolean;
  @sap.label : 'Min. Rem. Shelf Life'
  @sap.quickinfo : 'Minimum Remaining Shelf Life'
  MinRemainingShelfLife : Decimal(4, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'SLED Period Ind.'
  @sap.quickinfo : 'Period Indicator for Shelf Life Expiration Date'
  ShelfLifeExpirationDatePeriod : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'QM Control Key'
  @sap.quickinfo : 'Control Key for Quality Management in Procurement'
  QualityMgmtCtrlKey : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Stock'
  @sap.quickinfo : 'Special Stock Indicator'
  InventorySpecialStockType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'JIT Delivery'
  @sap.quickinfo : 'JIT Delivery Schedules'
  IsRelevantForJITDelivSchedule : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Next JIT Sched.'
  @sap.quickinfo : 'Next JIT Delivery Schedule Transmission'
  NextJITDelivSchedSendingDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Next FRC Sched.'
  @sap.quickinfo : 'Next Forecast Delivery Schedule Transmission'
  NextFcstDelivSchedSendingDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Binding on MRP'
  @sap.quickinfo : 'Firm/Trade-Off Zones Binding with Regard to Mat. Planning'
  FirmTradeOffZoneBindMRP : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Certificate Type'
  QualityCertificateType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'RFQ'
  @sap.quickinfo : 'RFQ Number'
  SupplierQuotation : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of RFQ'
  SupplierQuotationItem : String(5);
  @sap.label : 'Intrastat Srvc. Code'
  @sap.quickinfo : 'Intrastat Service Code'
  IntrastatServiceCode : String(30);
  @sap.label : 'Commodity Code'
  CommodityCode : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Del. Type f. Returns'
  @sap.quickinfo : 'Delivery Type for Returns to Supplier'
  DeliveryDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Freight Grp'
  @sap.quickinfo : 'Material Freight Group'
  MaterialFreightGroup : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Qual.f.FreeGoodsDis.'
  @sap.quickinfo : 'Material qualifies for discount in kind'
  DiscountInKindEligibility : String(1);
  @sap.label : 'Shipping block'
  @sap.quickinfo : 'Item blocked for SD delivery'
  PurgItemIsBlockedForDelivery : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Issuing Storage Loc.'
  @sap.quickinfo : 'Issuing Storage Location for Stock Transport Order'
  IssuingStorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Allocation Table'
  AllocationTable : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Allocation Table Item'
  AllocationTableItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Retail Promotion'
  RetailPromotion : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Down Payment'
  @sap.quickinfo : 'Down Payment Indicator'
  DownPaymentType : String(4);
  @sap.label : 'Down Payment %'
  @sap.quickinfo : 'Down Payment Percentage'
  DownPaymentPercentageOfTotAmt : Decimal(5, 2);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Down Payment Amount'
  @sap.quickinfo : 'Down Payment Amount in Document Currency'
  DownPaymentAmount : Decimal(12, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Due Date for DP'
  @sap.quickinfo : 'Due Date for Down Payment'
  DownPaymentDueDate : Date;
  @sap.label : 'Creation Time'
  @sap.quickinfo : 'Purchasing Document Creation Time'
  CreationTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Creation Date'
  @sap.quickinfo : 'Purchasing Document Creation Date'
  CreationDate : Date;
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Expected Value'
  @sap.quickinfo : 'Expected Value of Overall Limit'
  ExpectedOverallLimitAmount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Overall Limit'
  OverallLimitAmount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contract For Limit'
  @sap.quickinfo : 'Purchase Contract for Enhanced Limit'
  PurContractForOverallLimit : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Requirement Segment'
  RequirementSegment : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Origin'
  @sap.quickinfo : 'Origin of the material'
  BR_MaterialOrigin : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Usage'
  @sap.quickinfo : 'Usage of the material'
  BR_MaterialUsage : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mat. CFOP category'
  @sap.quickinfo : 'Material CFOP category'
  BR_CFOPCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'NCM Code'
  @sap.quickinfo : 'Brazilian NCM Code'
  BR_NCM : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'NCM Code'
  @sap.quickinfo : 'Brazilian NCM Code'
  ConsumptionTaxCtrlCode : String(16);
  @sap.label : 'Produced in-house'
  BR_IsProducedInHouse : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material of External System'
  PurchasingCentralMaterial : String(40);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Item Target Value'
  @sap.quickinfo : 'Target Value at Item Level in Procurement Hub'
  PurgDocItmTargetAmount : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CRM Ref Order'
  @sap.quickinfo : 'CRM Reference Order Number for TPOP Process'
  ThirdPtyOrdProcgExtReference : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CRM Rf Item No'
  @sap.quickinfo : 'CRM Reference Sales Order Item Number in TPOP Process'
  ThirdPtyOrdProcgExtRefItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Block Reason ID'
  @sap.quickinfo : 'Blocking Reason - ID'
  PurgDocItmBlkRsnCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Busin. Purp. Cmpltd.'
  @sap.quickinfo : 'Business Purpose Completed'
  IsEndOfPurposeBlocked : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subitem Category'
  @sap.quickinfo : 'Subitem Category, Purchasing Document'
  SubItemCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Season Year'
  ProductSeasonYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Season'
  ProductSeason : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Collection'
  @sap.quickinfo : 'Fashion Collection'
  ProductCollection : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Theme'
  @sap.quickinfo : 'Fashion Theme'
  ProductTheme : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Season Comp.Ind'
  @sap.quickinfo : 'Season Completeness Indicator'
  SeasonCompletenessStatus : String(1);
  @sap.unit : 'OrderQuantityUnit'
  @sap.label : 'Committed Quantity'
  CommittedQuantity : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PSST Grouping Rule'
  ShippingGroupRule : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PSST Group'
  ShippingGroupNumber : String(10);
  @sap.label : 'Characteristic 1'
  @sap.quickinfo : 'Characteristic Value 1'
  ProductCharacteristic1 : String(18);
  @sap.label : 'Characteristic 2'
  @sap.quickinfo : 'Characteristic Value 2'
  ProductCharacteristic2 : String(18);
  @sap.label : 'Characteristic 3'
  @sap.quickinfo : 'Characteristic Value 3'
  ProductCharacteristic3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Diversion Status'
  @sap.quickinfo : 'Status of Diversion process'
  DiversionStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Document'
  @sap.quickinfo : 'Reference Document number for PO Traceability'
  ReferenceDocumentNumber : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reference Item'
  @sap.quickinfo : 'Reference Item number for PO Traceability'
  ReferenceDocumentItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Action'
  @sap.quickinfo : 'Action for Traceability in PO'
  PurchaseOrderReferenceType : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reference Schedule Line Item number for PO Traceability'
  @sap.heading : ''
  ReferenceDocumentScheduleLine : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAS Relevant'
  ItemHasValueAddedService : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  ValAddedSrvcParentItmNumber : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Demand Priority'
  @sap.quickinfo : 'ARun Demand Priority'
  ARunPriorityValue : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Demand Priority'
  @sap.quickinfo : 'ARun Demand Group Priority'
  ARunDemandGroupPriority : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock Segment'
  StockSegment : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document priority'
  @sap.quickinfo : 'WS Document priority'
  ZZPRIORITY : String(5);
  @sap.display.format : 'Date'
  @sap.label : 'Theme Deliv. From'
  @sap.quickinfo : 'WS - Theme Deliverability Start Date'
  ZZTHDEL_ITEM_FROM : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commercial article'
  CommercialArticle : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Selvedge'
  @sap.quickinfo : 'Standard Cimossa of article'
  CimossaID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cimossa Obligation'
  CimossaObligID : String(1);
  @sap.label : 'Quantity ordered 2'
  Quantity2 : Decimal(15, 3);
  @sap.label : 'Unit of Measure 2'
  @sap.semantics : 'unit-of-measure'
  UoM2 : String(3);
  @sap.label : 'Quantity ordered 3'
  Quantity3 : Decimal(15, 3);
  @sap.label : 'Unit of Measure 3'
  @sap.semantics : 'unit-of-measure'
  UoM3 : String(3);
  @sap.label : '% Condizionatura'
  Conditioning : Decimal(12, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Req.Delivery date'
  @sap.quickinfo : 'Required Delivery date'
  RequiredDeliveryDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Quality'
  QualityID : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commercial Program'
  CommercialProgram : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Item pos.'
  @sap.quickinfo : 'Item position in the order'
  StagingItemID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bunch dimension'
  BunchDimension : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Article Key 1'
  ArticleKey1 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Article Key 2'
  ArticleKey2 : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Article Key 3'
  ArticleKey3 : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Article Key 4'
  ArticleKey4 : String(8);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Purchasing Group'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_PurchasingGroup {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingGroupName'
  @sap.label : 'Purchasing Group'
  key PurchasingGroup : String(3) not null;
  @sap.label : 'Purchasing Grp. Name'
  @sap.quickinfo : 'Purchasing Group Name'
  PurchasingGroupName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tel.No. Purch. Group'
  @sap.quickinfo : 'Telephone number of purchasing group (buyer group)'
  PurchasingGroupPhoneNumber : String(12);
  @sap.label : 'Fax Number'
  @sap.quickinfo : 'Fax number of purchasing (buyer) group'
  FaxNumber : String(31);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone No.: Dialing Code and Number'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Telephone no.: Extension'
  PhoneNumberExtension : String(10);
  @sap.label : 'E-Mail Address'
  EmailAddress : String(241);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Purchasing Organization'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_PurchasingOrganization {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingOrganizationName'
  @sap.label : 'Purchasing Organization'
  key PurchasingOrganization : String(4) not null;
  @sap.label : 'Purch. Org. Name'
  @sap.quickinfo : 'Purchasing Organization Name'
  PurchasingOrganizationName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Validity'
  @sap.quickinfo : 'Deprecated Entries'
  ConfigDeprecationCode : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Recipient location'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_RecipientLocationCode {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Recipient Location'
  @sap.quickinfo : 'Recipient location code'
  key RecipientLocationCode : String(15) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  LastChangeDateTime : DateTime;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Reservation Document Record Type'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ReservationDocRecordType {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Record type'
  key RecordType : String(1) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Reservation Document Header'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ReservationDocumentHeader {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation'
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  key Reservation : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resv. Creation Code'
  @sap.quickinfo : 'Reservation Creation Code'
  ReservationCreationCode : String(4);
  @sap.label : 'Origin'
  ReservationOrigin : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  @sap.value.list : 'standard'
  OrderID : String(12);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_GoodsMovementType/GoodsMovementType_Text'
  @sap.label : 'Movement Type'
  @sap.quickinfo : 'Movement Type (Inventory Management)'
  @sap.value.list : 'standard'
  GoodsMovementType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_CostCenter/CostCenter_Text'
  @sap.label : 'Cost Center'
  @sap.value.list : 'standard'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Profitability Segment (Deprecated)'
  @sap.quickinfo : 'Deprecated: Profitability Segment'
  ProfitabilitySegment : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profitability Segment'
  ProfitabilitySegment_2 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_ControllingArea/ControllingAreaName'
  @sap.label : 'Controlling Area'
  @sap.value.list : 'standard'
  ControllingArea : String(4);
  @sap.label : 'Goods Recipient'
  GoodsRecipientName : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Base date'
  @sap.quickinfo : 'Base date for reservation'
  ReservationDate : Date;
  @sap.label : 'Check against cal.'
  @sap.quickinfo : 'Check date against factory calendar'
  IsCheckedAgainstFactoryCal : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Customer/CustomerName'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Account number of customer'
  @sap.value.list : 'standard'
  Customer : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElementInternalID : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.quickinfo : 'Sales Order Number'
  SalesOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales Order Item'
  @sap.quickinfo : 'Item Number in Sales Order'
  SalesOrderItem : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales order schedule'
  @sap.quickinfo : 'Delivery schedule for sales order'
  SalesOrderScheduleLine : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Asset'
  @sap.quickinfo : 'Main Asset Number'
  AssetNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sub-number'
  @sap.quickinfo : 'Asset Subnumber'
  AssetSubNumber : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Network'
  @sap.quickinfo : 'Network Number for Account Assignment'
  NetworkNumberForAcctAssgmt : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Receiving plant'
  @sap.quickinfo : 'Receiving plant/issuing plant'
  IssuingOrReceivingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Receiving stor. loc.'
  @sap.quickinfo : 'Receiving/issuing storage location'
  IssuingOrReceivingStorageLoc : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Clearing CoCode'
  @sap.quickinfo : 'Clearing company code'
  ResvnVerificationCompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User Name'
  UserID : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Created On'
  @sap.quickinfo : 'Creation Date'
  CreationDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed By'
  @sap.quickinfo : 'Last Changed By User'
  LastChangedByUser : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Last Changed On'
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
@sap.label : 'Reservation Document Item'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ReservationDocumentItem {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation'
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  @sap.value.list : 'standard'
  key Reservation : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item no.'
  @sap.quickinfo : 'Item Number of Reservation / Dependent Requirements'
  key ReservationItem : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Record type'
  @sap.value.list : 'standard'
  key RecordType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Plant'
  @sap.value.list : 'standard'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_StorageLocation/StorageLocationName'
  @sap.label : 'Storage Location'
  @sap.value.list : 'standard'
  StorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Product/Product_Text'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  @sap.value.list : 'standard'
  Product : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Batch'
  @sap.quickinfo : 'Batch Number'
  Batch : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Type'
  ValuationType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_InventorySpecialStockType/InventorySpecialStockType_Text'
  @sap.label : 'Special Stock'
  @sap.quickinfo : 'Special Stock Indicator'
  @sap.value.list : 'standard'
  InventorySpecialStockType : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Internal ID'
  @sap.quickinfo : 'WBS Element'
  SpecialStockIdfgWBSElement : String(8);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_GoodsMovementType/GoodsMovementType_Text'
  @sap.label : 'Movement Type'
  @sap.quickinfo : 'Movement Type (Inventory Management)'
  @sap.value.list : 'standard'
  GoodsMovementType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Requirement type'
  RequirementType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reserv. status'
  @sap.quickinfo : 'Status of reservation'
  ReservationItemCreationCode : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Requirements date'
  @sap.quickinfo : 'Requirements date for the component'
  MatlCompRequirementDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Activity'
  @sap.quickinfo : 'Activity Number'
  ManufacturingOrderOperation : String(4);
  @sap.label : 'Movement Allowed'
  @sap.quickinfo : 'Goods Movement for Reservation Allowed'
  GoodsMovementIsAllowed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_DebitCreditCode/DebitCreditCode_Text'
  @sap.label : 'Debit/Credit Ind.'
  @sap.quickinfo : 'Debit/Credit Indicator'
  @sap.value.list : 'fixed-values'
  DebitCreditCode : String(1);
  @sap.text : 'to_BaseUnit/UnitOfMeasure_Text'
  @sap.label : 'Base Unit of Measure'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account'
  @sap.quickinfo : 'G/L Account Number'
  GLAccount : String(10);
  @sap.label : 'Acct manually'
  @sap.quickinfo : 'Acct entered manually'
  ResvnAccountIsEnteredManually : Boolean;
  @sap.text : 'to_EntryUnit/UnitOfMeasure_Text'
  @sap.label : 'Unit of Entry'
  @sap.quickinfo : 'Unit of entry'
  @sap.value.list : 'standard'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.label : 'Quantity is fixed'
  QuantityIsFixed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Currency/Currency_Text'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.value.list : 'standard'
  @sap.semantics : 'currency-code'
  CompanyCodeCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_IssuingOrReceivingPlant/PlantName'
  @sap.label : 'Receiving plant'
  @sap.quickinfo : 'Receiving plant/issuing plant'
  @sap.value.list : 'standard'
  IssuingOrReceivingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_IssuingOrReceivingStorageLoc/StorageLocationName'
  @sap.label : 'Receiving stor. loc.'
  @sap.quickinfo : 'Receiving/issuing storage location'
  @sap.value.list : 'standard'
  IssuingOrReceivingStorageLoc : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  @sap.value.list : 'standard'
  PurchasingDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  @sap.value.list : 'standard'
  PurchasingDocumentItem : String(5);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Requirement Quantity'
  ResvnItmRequiredQtyInBaseUnit : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Qty. for avail.check'
  @sap.quickinfo : 'Confirmed quantity for availability check in SKU'
  ConfdQtyForATPInBaseUoM : Decimal(15, 3);
  @sap.label : 'Final Issue'
  @sap.quickinfo : 'Final Issue for Reservation'
  ReservationItemIsFinallyIssued : Boolean;
  @sap.label : 'Item Deleted'
  @sap.quickinfo : 'Item is Deleted'
  ReservationItmIsMarkedForDeltn : Boolean;
  @sap.unit : 'EntryUnit'
  @sap.label : 'Qty in unit of entry'
  @sap.quickinfo : 'Quantity in unit of entry'
  ResvnItmRequiredQtyInEntryUnit : Decimal(13, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantity withdrawn'
  ResvnItmWithdrawnQtyInBaseUnit : Decimal(13, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Value Withdrawn'
  ResvnItmWithdrawnAmtInCCCrcy : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Supplier/SupplierName'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  @sap.value.list : 'standard'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group'
  MaterialGroup : String(9);
  @sap.label : 'Direct procurement'
  @sap.quickinfo : 'Direct procurement indicator'
  MaterialCompIsProcuredDirectly : Boolean;
  @sap.label : 'Goods Recipient'
  GoodsRecipientName : String(12);
  @sap.label : 'Unloading Point'
  UnloadingPointName : String(25);
  @sap.label : 'Text'
  @sap.quickinfo : 'Item Text'
  ReservationItemText : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Recipient Location'
  @sap.quickinfo : 'Recipient location code'
  @sap.value.list : 'standard'
  RecipientLocationCode : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Type'
  ServiceObjectType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Transaction'
  @sap.quickinfo : 'Transaction'
  ServiceDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number in Doc.'
  @sap.quickinfo : 'Shortened Item Number in Document'
  ServiceDocumentItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Service Doc. Type'
  @sap.quickinfo : 'Service Document Type'
  ResvnItmSrvcDocTypeAsAcctAsgt : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Service Document'
  @sap.quickinfo : 'Service Document ID'
  ResvnItmSrvcDocAsAcctAsgt : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Service Doc. Item'
  @sap.quickinfo : 'Service Document Item ID'
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
@sap.label : 'Responsible Planner Group'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ResponsiblePlannerGroup {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ResponsiblePlannerGroupName'
  @sap.label : 'Planner Group'
  @sap.quickinfo : 'Responsible Planner Group or Department'
  key ResponsiblePlannerGroup : String(3) not null;
  @sap.label : 'Planner Group Desc.'
  @sap.quickinfo : 'Responsible Planner Group Description'
  ResponsiblePlannerGroupName : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Account Assignment Category'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ResvnAcctAssgmtCategory {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ResvnAcctAssgmtCategory_Text'
  @sap.label : 'Reserv. cat.'
  @sap.quickinfo : 'Account assignment of reservation'
  key ResvnAcctAssgmtCategory : String(1) not null;
  @sap.label : 'Category Name'
  @sap.quickinfo : 'Account Assignment Category Name for Reservation Doc.'
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
@sap.label : 'Sales Order Item'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_SalesOrderItemStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  key SalesOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.text : 'SalesOrderItemText'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Order Item'
  key SalesOrderItem : String(6) not null;
  @sap.label : 'Item Description'
  @sap.quickinfo : 'Short text for sales order item'
  SalesOrderItemText : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Sales Order'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_SalesOrderStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  key SalesOrder : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Sequence Category'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_SequenceCategory {
  @sap.display.format : 'UpperCase'
  @sap.text : 'SequenceCategory_Text'
  @sap.label : 'Sequence Category'
  key SequenceCategory : String(1) not null;
  @sap.label : 'Category Description'
  @sap.quickinfo : 'Description of a Sequence Category'
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
@sap.label : 'Shift Grouping Code'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ShiftGrouping {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ShiftGrouping_Text'
  @sap.label : 'Shift Grouping'
  @sap.quickinfo : 'Grouping for Shift Definitions and Shift Sequences'
  key ShiftGrouping : String(2) not null;
  @sap.label : 'Name'
  @sap.quickinfo : 'General Name'
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
@sap.label : 'Shift Sequence Code'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_ShiftSequence {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shift Grouping'
  @sap.quickinfo : 'Grouping for Shift Definitions and Shift Sequences'
  key ShiftGrouping : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ShiftSequence_Text'
  @sap.label : 'Shift Sequence'
  @sap.quickinfo : 'Key for the Shift Sequence'
  key ShiftSequence : String(4) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Text (20 Characters)'
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
@sap.label : 'Standard Work Formula Parameter Group'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_StandardWorkFmlaParamGroup {
  @sap.display.format : 'UpperCase'
  @sap.text : 'StandardWorkFormulaParamGroup_Text'
  @sap.label : 'Standard Value Key'
  key StandardWorkFormulaParamGroup : String(4) not null;
  @sap.label : 'Std value key text'
  @sap.quickinfo : 'Text for the standard value key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StandardWorkFormulaParamGroup_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parameter'
  @sap.quickinfo : 'Parameter ID'
  StandardWorkFormulaParam1 : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parameter'
  @sap.quickinfo : 'Parameter ID'
  StandardWorkFormulaParam2 : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parameter'
  @sap.quickinfo : 'Parameter ID'
  StandardWorkFormulaParam3 : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parameter'
  @sap.quickinfo : 'Parameter ID'
  StandardWorkFormulaParam4 : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parameter'
  @sap.quickinfo : 'Parameter ID'
  StandardWorkFormulaParam5 : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parameter'
  @sap.quickinfo : 'Parameter ID'
  StandardWorkFormulaParam6 : String(6);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Storage Location'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_StorageLocation {
  @sap.display.format : 'UpperCase'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Plant'
  @sap.value.list : 'standard'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'StorageLocationName'
  @sap.label : 'Storage Location'
  key StorageLocation : String(4) not null;
  @sap.label : 'Storage Loc. Name'
  @sap.quickinfo : 'Storage Location Name'
  StorageLocationName : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  DistributionChannel : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  Division : String(2);
  @sap.label : 'Authorization check'
  @sap.quickinfo : 'Storage location authorization for goods movements active'
  IsStorLocAuthznCheckActive : Boolean;
  @sap.label : 'HU reqmnt'
  @sap.quickinfo : 'Handling unit requirement'
  HandlingUnitIsRequired : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Validity'
  @sap.quickinfo : 'Deprecated Entries'
  ConfigDeprecationCode : String(1);
  to_Plant : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Plant {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Supplier'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Supplier {
  @sap.display.format : 'UpperCase'
  @sap.text : 'SupplierName'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Group'
  @sap.quickinfo : 'Vendor account group'
  SupplierAccountGroup : String(4);
  @sap.label : 'Name of Supplier'
  SupplierName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Name'
  @sap.quickinfo : 'Supplier Full Name'
  SupplierFullName : String(220);
  @sap.label : 'Supplier Name'
  BPSupplierName : String(81);
  @sap.label : 'Supplier Name'
  @sap.quickinfo : 'Supplier Full Name'
  BPSupplierFullName : String(163);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Name 2'
  BusinessPartnerName2 : String(40);
  @sap.label : 'Name 3'
  BusinessPartnerName3 : String(40);
  @sap.label : 'Name 4'
  BusinessPartnerName4 : String(40);
  @sap.label : 'City'
  BPAddrCityName : String(40);
  @sap.label : 'Street'
  BPAddrStreetName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search Term 1'
  AddressSearchTerm1 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search Term 2'
  AddressSearchTerm2 : String(20);
  @sap.label : 'District'
  DistrictName : String(40);
  @sap.label : 'PO Box City'
  @sap.quickinfo : 'PO Box city'
  POBoxDeviatingCityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title Key'
  @sap.quickinfo : 'Form-of-Address Key'
  BusinessPartnerFormOfAddress : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purpose Completed'
  @sap.quickinfo : 'Business Purpose Completed Flag'
  IsBusinessPurposeCompleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Name of Person who Created the Object'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Created On'
  CreationDate : Date;
  @sap.label : 'One-time account'
  @sap.quickinfo : 'Indicator: Is the account a one-time account?'
  IsOneTimeAccount : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20);
  @sap.label : 'Posting Block(Deprecated)'
  @sap.quickinfo : 'Central posting block'
  AccountIsBlockedForPosting : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'SCAC'
  @sap.quickinfo : 'Standard carrier access code'
  SupplierStandardCarrierAccess : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Carrier freight grp'
  @sap.quickinfo : 'Forwarding agent freight group'
  SupplierFwdAgentFreightGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ServAgntProcGrp'
  @sap.quickinfo : 'Service agent procedure group'
  SupplierAgentProcedureGroup : String(4);
  @sap.label : 'Social Insurance'
  @sap.quickinfo : 'Registered for Social Insurance'
  SupplIsSocialInsuranceRegtrd : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Social Ins. Code'
  @sap.quickinfo : 'Activity Code for Social Insurance'
  SocialInsuranceActivityCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Key'
  SupplierCorporateGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  Customer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry'
  @sap.quickinfo : 'Industry Key'
  Industry : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 1'
  TaxNumber1 : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 2'
  TaxNumber2 : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 3'
  TaxNumber3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 4'
  TaxNumber4 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 5'
  TaxNumber5 : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 6'
  TaxNumber6 : String(20);
  @sap.label : 'Posting Block'
  @sap.quickinfo : 'Central posting block'
  PostingIsBlocked : Boolean;
  @sap.label : 'Purch. Block'
  @sap.quickinfo : 'Centrally imposed purchasing block'
  PurchasingIsBlocked : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 1'
  @sap.quickinfo : 'International Location Number (Part 1)'
  InternationalLocationNumber1 : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 2'
  @sap.quickinfo : 'International Location Number (Part 2)'
  InternationalLocationNumber2 : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Check Digit'
  @sap.quickinfo : 'Check digit for the international location number'
  InternationalLocationNumber3 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address'
  AddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  OrganizationBPName1 : String(35);
  @sap.label : 'Name 2'
  OrganizationBPName2 : String(35);
  @sap.label : 'City'
  CityName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  PostalCode : String(10);
  @sap.label : 'Street'
  @sap.quickinfo : 'Street and House Number'
  StreetName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3);
  @sap.label : 'Int. Location No.'
  @sap.quickinfo : 'Cocatenated International Location Number'
  ConcatenatedInternationalLocNo : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Block Function'
  @sap.quickinfo : 'Function That Will Be Blocked'
  SupplierProcurementBlock : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Actual QM System'
  @sap.quickinfo : 'Supplier''s QM System'
  SuplrQualityManagementSystem : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'QM System Valid To'
  @sap.quickinfo : 'Validity Date of Certification'
  SuplrQltyInProcmtCertfnValidTo : Date;
  @sap.label : 'Language Key'
  SupplierLanguage : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative Payee'
  @sap.quickinfo : 'Account Number of the Alternative Payee'
  AlternativePayeeAccountNumber : String(10);
  @sap.label : 'Telephone 1'
  @sap.quickinfo : 'First telephone number'
  PhoneNumber1 : String(16);
  @sap.label : 'Fax Number'
  FaxNumber : String(31);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Natural Person'
  IsNaturalPerson : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number'
  @sap.quickinfo : 'Tax Number at Responsible Tax Authority'
  TaxNumberResponsible : String(18);
  @sap.label : 'Business Type'
  @sap.quickinfo : 'Subcontractor''s Business Type'
  UK_ContractorBusinessType : String(12);
  @sap.label : 'Prtnr''s Trading Name'
  @sap.quickinfo : 'Partner''s Trading Name'
  UK_PartnerTradingName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner''s UTR'
  @sap.quickinfo : 'Partner''s Unique Tax Reference (UTR)'
  UK_PartnerTaxReference : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Verification Status'
  UK_VerificationStatus : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Verification Number'
  UK_VerificationNumber : String(20);
  @sap.label : 'Comp. House Reg. No.'
  @sap.quickinfo : 'Companies House Registration Number'
  UK_CompanyRegistrationNumber : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Status'
  @sap.quickinfo : 'Tax Status of the Verified Subcontractor'
  UK_VerifiedTaxStatus : String(1);
  @sap.label : 'Title'
  FormOfAddress : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Acct Group'
  @sap.quickinfo : 'Reference Account Group for One-Time Account (Vendor)'
  ReferenceAccountGroup : String(4);
  @sap.label : 'Liable for VAT'
  VATLiability : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Type'
  ResponsibleType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number Type'
  TaxNumberType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal Address'
  @sap.quickinfo : 'Account number of the master record with fiscal address'
  FiscalAddress : String(10);
  @sap.label : 'Type of Business'
  BusinessType : String(30);
  @sap.display.format : 'Date'
  @sap.label : 'Date of Birth'
  @sap.quickinfo : 'Date of Birth of the Person Subject to Withholding Tax'
  BirthDate : Date;
  @sap.label : 'Payment Block'
  PaymentIsBlockedForSupplier : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search Term'
  @sap.quickinfo : 'Sort field'
  SortField : String(10);
  @sap.label : 'Telephone 2'
  @sap.quickinfo : 'Second telephone number'
  PhoneNumber2 : String(16);
  @sap.label : 'Deletion Flag'
  @sap.quickinfo : 'Central Deletion Flag for Master Record'
  DeletionIndicator : Boolean;
  @sap.label : 'Rep''s Name'
  @sap.quickinfo : 'Name of Representative'
  TaxInvoiceRepresentativeName : String(10);
  @sap.label : 'Type of Industry'
  IndustryType : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'GST Ven Class.'
  @sap.quickinfo : 'Vendor Classification for GST'
  IN_GSTSupplierClassification : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Relevant for POD'
  @sap.quickinfo : 'Supplier indicator relevant for proof of delivery'
  SuplrProofOfDelivRlvtCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trading Partner No.'
  @sap.quickinfo : 'Company ID of Trading Partner'
  TradingPartner : String(6);
  @sap.label : 'Tax Split'
  BR_TaxIsSplit : Boolean;
  @sap.label : 'Enterprise in AU'
  @sap.quickinfo : 'Is payer making payment in course of carrying on enterprise'
  AU_PayerIsPayingToCarryOnEnt : Boolean;
  @sap.label : 'Individual'
  @sap.quickinfo : 'Is an individual under 18 and payment does not exceed $350'
  AU_IndividualIsUnder18 : Boolean;
  @sap.label : 'Payment Does not Exc'
  @sap.quickinfo : 'The payment does not exceed $75, excl. GST'
  AU_PaymentIsExceeding75 : Boolean;
  @sap.label : 'Wholly Input Taxed'
  @sap.quickinfo : 'The supply that the payment relates to is wholly input taxed'
  AU_PaymentIsWhollyInputTaxed : Boolean;
  @sap.label : 'Individual w/o Gain'
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
  @sap.label : 'Origin Acceptance'
  @sap.quickinfo : 'Acceptance At Origin'
  IsToBeAcceptedAtOrigin : Boolean;
  @sap.label : 'Checkbox'
  @sap.heading : ''
  BPIsEqualizationTaxSubject : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Tax Base'
  @sap.quickinfo : 'Tax Base in Percentage'
  BRSpcfcTaxBasePercentageCode : String(1);
  @sap.label : 'Profession'
  SupplierProfession : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ext. manufacturer'
  @sap.quickinfo : 'External manufacturer code name or number'
  SuplrManufacturerExternalName : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'DME Recipient Code'
  @sap.quickinfo : 'Recipient Code for Data Medium Exchange'
  DataMediumExchangeIndicator : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Instruction Key'
  @sap.quickinfo : 'Instruction Key for Data Medium Exchange'
  DataExchangeInstructionKey : String(2);
  @sap.label : 'VSR Relevant'
  @sap.quickinfo : 'Indicator: vendor sub-range relevant'
  SupplierIsSubRangeRelevant : Boolean;
  @sap.label : 'Train Station'
  @sap.quickinfo : 'Train station'
  TrainStationName : String(25);
  @sap.label : 'Payee in Document'
  @sap.quickinfo : 'Indicator: Alternative Payee in Document Allowed?'
  AlternativePayeeIsAllowed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PBC/ISR Number'
  @sap.quickinfo : 'ISR Subscriber Number'
  PaytSlipWthRefSubscriber : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stat. Grp, Agent'
  @sap.quickinfo : 'Shipment: statistics group, transportation service agent'
  TranspServiceAgentStstcGrp : String(2);
  @sap.label : 'Plant Level Relevant'
  @sap.quickinfo : 'Indicator: plant level relevant'
  SupplierIsPlantRelevant : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Office'
  @sap.quickinfo : 'Account Number of Master Record of Tax Office Responsible'
  SuplrTaxAuthorityAccountNumber : String(10);
  @sap.label : 'Carrier confirmation'
  @sap.quickinfo : 'Carrier confirmation is expected'
  SuplrCarrierConfirmIsExpected : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  @sap.quickinfo : 'Plant (Own or External)'
  SupplierPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Factory Calendar'
  @sap.quickinfo : 'Factory calendar key'
  FactoryCalendar : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Reason'
  PaymentReason : String(4);
  @sap.label : 'Central Del. Block'
  @sap.quickinfo : 'Central deletion block for master record'
  SupplierCentralDeletionIsBlock : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Ctrlr. Set'
  @sap.quickinfo : 'BP: Data Controller Set Flag'
  DataControllerSet : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController1 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController2 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController3 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController4 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController5 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController6 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController7 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController8 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController9 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController10 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportation Chain'
  SupplierTransportationChain : String(10);
  @sap.label : 'Staging Time'
  @sap.quickinfo : 'Staging Time in Days'
  SupplierStagingTimeInDays : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scheduling Procedure'
  SupplierSchedulingProcedure : String(1);
  @sap.label : 'Rel. for Coll. No.'
  @sap.quickinfo : 'Cross Docking: Relevant for Collective Numbering'
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
@sap.label : 'Supplier'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_Supplier_VH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BPSupplierName'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  key Supplier : String(10) not null;
  @sap.label : 'Supplier Name1'
  @sap.quickinfo : 'Supplier Name'
  SupplierName : String(35);
  @sap.label : 'Business Partner Name1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Business Partner Supplier Name'
  @sap.quickinfo : 'Supplier Name'
  BPSupplierName : String(81);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Vendor account group'
  SupplierAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purpose Completed'
  @sap.quickinfo : 'Business Purpose Completed Flag'
  IsBusinessPurposeCompleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  BusinessPartner : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner Type'
  BusinessPartnerType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Ctrlr. Set'
  @sap.quickinfo : 'BP: Data Controller Set Flag'
  DataControllerSet : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController1 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController2 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController3 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController4 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController5 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController6 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController7 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController8 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController9 : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Data Controller'
  @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
  DataController10 : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Unit of Measure'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_UnitOfMeasure {
  @sap.text : 'UnitOfMeasure_Text'
  @sap.label : 'Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  key UnitOfMeasure : String(3) not null;
  @sap.label : 'Meas. Unit Text'
  @sap.quickinfo : 'Unit of Measurement Text (Maximum 30 Characters)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  UnitOfMeasure_Text : String(30);
  @sap.label : 'Internal SAP Code'
  @sap.quickinfo : 'Unit of Measurement, Internal SAP Code (No Conversion)'
  UnitOfMeasureSAPCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Code'
  @sap.quickinfo : 'ISO Code for Unit of Measurement'
  UnitOfMeasureISOCode : String(3);
  @sap.label : 'Primary code'
  @sap.quickinfo : 'Selection field for conversion from ISO code to int. code'
  IsPrimaryUnitForISOCode : Boolean;
  @sap.label : 'Decimal Rounding'
  @sap.quickinfo : 'No. of decimal places for rounding'
  UnitOfMeasureNumberOfDecimals : Integer;
  @sap.label : 'Commercial Unit'
  @sap.quickinfo : 'Commercial measurement unit ID'
  UnitOfMeasureIsCommercial : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dimension'
  @sap.quickinfo : 'Dimension key'
  UnitOfMeasureDimension : String(6);
  @sap.label : 'Numerator'
  @sap.quickinfo : 'Numerator for conversion to SI unit'
  SIUnitCnvrsnRateNumerator : Integer;
  @sap.label : 'Denominator'
  @sap.quickinfo : 'Denominator for conversion into SI unit'
  SIUnitCnvrsnRateDenominator : Integer;
  @sap.label : 'Exponent'
  @sap.quickinfo : 'base ten exponent for conversion to SI unit'
  SIUnitCnvrsnRateExponent : Integer;
  @sap.label : 'Additive constant'
  @sap.quickinfo : 'Additive constant for conversion to SI unit'
  SIUnitCnvrsnAdditiveValue : Decimal(9, 6);
  @sap.label : 'Exp. 10 Floating Pt'
  @sap.quickinfo : 'Exponent of 10 for Floating Point Format'
  UnitOfMeasureDspExponent : Integer;
  @sap.label : 'Decimal Places'
  @sap.quickinfo : 'Number of Decimal Places for Number Display'
  UnitOfMeasureDspNmbrOfDcmls : Integer;
  @sap.unit : 'UnitOfMeasureTemperatureUnit'
  @sap.label : 'Temperature'
  UnitOfMeasureTemperature : Double;
  @sap.label : 'Temperature unit'
  @sap.semantics : 'unit-of-measure'
  UnitOfMeasureTemperatureUnit : String(3);
  @sap.unit : 'UnitOfMeasurePressureUnit'
  @sap.label : 'Pressure Value'
  UnitOfMeasurePressure : Double;
  @sap.label : 'Unit of Pressure'
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
  @sap.label : 'User'
  @sap.quickinfo : 'User Name in User Master Record'
  key ContactCardID : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person Number'
  Person : String(10);
  @sap.label : 'BP GUID'
  @sap.quickinfo : 'Business Partner GUID'
  BusinessPartnerUUID : UUID;
  @sap.label : 'First Name'
  FirstName : String(40);
  @sap.label : 'Last Name'
  LastName : String(40);
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full Name of Person'
  FullName : String(80);
  @sap.label : 'Description'
  @sap.quickinfo : 'User Description'
  UserDescription : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  AddressID : String(10);
  @sap.label : 'Phone'
  @sap.quickinfo : 'Contact Card Phone Number'
  @sap.semantics : 'tel'
  PhoneNumber : String(30);
  @sap.label : 'Mobile'
  @sap.quickinfo : 'Contact Card Mobile Phone Number'
  @sap.semantics : 'tel'
  MobilePhoneNumber : String(30);
  @sap.label : 'Fax'
  @sap.quickinfo : 'Contact Card Fax Number'
  @sap.semantics : 'tel'
  FaxNumber : String(30);
  @sap.label : 'E-Mail'
  @sap.quickinfo : 'Contact Card E-Mail Address'
  @sap.semantics : 'email'
  EmailAddress : String(241);
  @sap.label : 'Department'
  Department : String(40);
  @sap.label : 'Function'
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
@sap.label : 'Basic data for WBS Element'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_WBSElementBasicDataStdVH {
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Internal ID'
  @sap.quickinfo : 'WBS Element'
  key WBSElementInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'WBSDescription'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element) Edited'
  WBSElementExternalID : String(24);
  @sap.label : 'WBS Element Name'
  @sap.quickinfo : 'Work Breakdown Structure Element Name'
  WBSDescription : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Project Def.'
  @sap.quickinfo : 'Project (internal)'
  ProjectInternalID : String(8);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Work Center'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_WorkCenterStdVH {
  @sap.display.format : 'NonNegative'
  @sap.text : 'WorkCenterInternalID_Text'
  @sap.label : 'Object ID'
  @sap.quickinfo : 'Object ID of the resource'
  key WorkCenterInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Type'
  @sap.quickinfo : 'Object types of the CIM resource'
  key WorkCenterTypeCode : String(2) not null;
  @sap.label : 'Work Center Text'
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
@sap.label : 'Work Center Type'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_WorkCenterType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'WorkCenterTypeCode_Text'
  @sap.label : 'Resource Type'
  @sap.quickinfo : 'Production Resource Type'
  key WorkCenterTypeCode : String(2) not null;
  @sap.label : 'Resource Type Name'
  @sap.quickinfo : 'Production Resource Type Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenterTypeCode_Text : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Work Center By Semantic Key'
@sap.value.list : 'true'
entity ZZ1_I_COMBPRODORDAPI_CDS.I_WrkCtrBySemanticKeyStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'WorkCenter_Text'
  @sap.label : 'Work Center'
  key WorkCenter : String(8) not null;
  @sap.label : 'Work Center Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenter_Text : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Object ID'
  @sap.quickinfo : 'Object ID of the resource'
  WorkCenterInternalID : String(8);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_COMBINEDPRODORDER {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Combined Prod. Order'
  @sap.heading : ''
  @sap.quickinfo : 'Combined Master Production Order'
  CombinedOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : ''
  ActualDeliveredQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : ''
  TotMfgOrderPlannedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : ''
  @sap.filterable : 'false'
  TotMfgOrderPlannedTotalQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : ''
  MfgOrderConfirmedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : ''
  MfgOrderScheduledEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : ''
  MfgOrderScheduledStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : ''
  MfgOrderPlannedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stock Segment'
  @sap.heading : ''
  StockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cross-plant CP'
  @sap.heading : ''
  @sap.quickinfo : 'Cross-Plant Configurable Product'
  CrossPlantConfigurableProduct : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Theme'
  @sap.heading : ''
  @sap.quickinfo : 'Fashion Theme'
  ProductTheme : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Collection'
  @sap.heading : ''
  @sap.quickinfo : 'Fashion Collection'
  ProductCollection : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Season'
  @sap.heading : ''
  ProductSeason : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Season Year'
  @sap.heading : ''
  ProductSeasonYear : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Production Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Company Code'
  @sap.heading : ''
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Entered By'
  @sap.heading : ''
  CreatedByUser : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Deletion Flag'
  @sap.heading : ''
  IsMarkedForDeletion : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Type'
  @sap.heading : ''
  ManufacturingOrderType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Text'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Text'
  ManufacturingOrderText : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Plant'
  @sap.heading : ''
  ProductionPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'MRP Controller'
  @sap.heading : ''
  MRPController : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_COMBORDER_COMP {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Combined Prod. Order'
  @sap.heading : ''
  @sap.quickinfo : 'Combined Master Production Order'
  CprodOrd : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Requirement type'
  @sap.heading : ''
  requirementtype : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material'
  @sap.heading : ''
  @sap.quickinfo : 'Material Number'
  Material : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Product Description'
  @sap.heading : ''
  ProductDescription : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Plant'
  @sap.heading : ''
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Counter'
  @sap.heading : ''
  @sap.quickinfo : 'General counter for order'
  OrderIntBillOfOperationsItem : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bill Of Material Item Number'
  @sap.heading : ''
  BillOfMaterialItemNumber_2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Base Unit of Measure'
  @sap.heading : ''
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sort String'
  @sap.heading : ''
  SortField : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Item Category'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Material Item Category'
  BOMItemCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Phantom Item'
  @sap.heading : ''
  @sap.quickinfo : 'Phantom Item Indicator'
  MaterialComponentIsPhantomItem : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bulk material'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: bulk material'
  IsBulkMaterialComponent : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Special Stock Valuation Type'
  @sap.heading : ''
  @sap.quickinfo : 'Inventory Special Stock Valuation Type'
  InventorySpecialStockValnType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Final Issue'
  @sap.heading : ''
  @sap.quickinfo : 'Final Issue for Reservation'
  ReservationIsFinallyIssued : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unit of Entry'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of entry'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Component Scrap (%)'
  @sap.heading : ''
  @sap.quickinfo : 'Component Scrap in Percent'
  ComponentScrapInPercent : Decimal(5, 2);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation Scrap in %'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Scrap'
  OperationScrapInPercent : Decimal(5, 2);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lead-Time Offset'
  @sap.heading : ''
  LeadTimeOffset : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Storage Location'
  @sap.heading : ''
  StorageLocation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Supply Area'
  @sap.heading : ''
  ProductionSupplyArea : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Batch'
  @sap.heading : ''
  @sap.quickinfo : 'Batch Number'
  Batch : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Item Text'
  @sap.heading : ''
  @sap.quickinfo : 'BOM Item Text (Line 1)'
  BOMItemDescription : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Item Text 2'
  @sap.heading : ''
  @sap.quickinfo : 'BOM Item Text (Line 2)'
  BOMItemText2 : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Deletion Flag'
  @sap.heading : ''
  IsMarkedForDeletion : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Product'
  @sap.heading : ''
  @sap.quickinfo : 'Product Number'
  Product : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Production Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Season Year'
  @sap.heading : ''
  ProductSeasonYear : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Season'
  @sap.heading : ''
  ProductSeason : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Collection'
  @sap.heading : ''
  @sap.quickinfo : 'Fashion Collection'
  ProductCollection : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Theme'
  @sap.heading : ''
  @sap.quickinfo : 'Fashion Theme'
  ProductTheme : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Type'
  @sap.heading : ''
  ManufacturingOrderType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Storage Location'
  @sap.heading : ''
  @sap.quickinfo : 'Issue Storage Location'
  ProductionInvtryManagedLoc : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Text of length 4'
  @sap.heading : ''
  Lgort1 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Text of length 4'
  @sap.heading : ''
  Lgort2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Text of length 4'
  @sap.heading : ''
  Lgort3 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center Internal'
  @sap.heading : ''
  @sap.quickinfo : 'Work Center Internal ID'
  WorkCenterInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center Type'
  @sap.heading : ''
  WorkCenterTypeCODE_2_1 : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequence'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Sequence'
  ManufacturingOrderSequence : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Operation'
  ManufacturingOrderOperation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Supplier'
  @sap.heading : ''
  @sap.quickinfo : 'Account Number of Supplier'
  Supplier : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stock Segment'
  @sap.heading : ''
  StockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stock Segment'
  @sap.heading : ''
  ParentStockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Requirement Segment'
  @sap.heading : ''
  RequirementSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Special Stock Type'
  @sap.heading : ''
  @sap.quickinfo : 'Inventory Special Stock Type'
  InventorySpecialStockType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center'
  @sap.heading : ''
  WorkCenter : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Customer'
  @sap.heading : ''
  @sap.quickinfo : 'Customer Number'
  Customer : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Supplier Name'
  @sap.heading : ''
  BPSupplierName : String(81);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Street'
  @sap.heading : ''
  @sap.quickinfo : 'Street and House Number'
  StreetName : String(35);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'City'
  @sap.heading : ''
  CityName : String(35);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Postal Code'
  @sap.heading : ''
  PostalCode : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Country/Region Key'
  @sap.heading : ''
  Country : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Region'
  @sap.heading : ''
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : ''
  ComponentIsMissing : String(1);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  @sap.filterable : 'false'
  TotalAllocQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalDefaultAllocQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalProdAllocQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalDeliveryQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalRequiredQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalQuantityInEntryUnit : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalWithdrawnQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalConfdQtyForATPInBaseUoM : Decimal(15, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalMatQtyToBaseQtyNmrtr : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalMatQtyToBaseQtyDnmntr : Decimal(5, 0);
  @sap.required.in.filter : 'false'
  @sap.label : 'Product Description'
  @sap.heading : ''
  ProductDescription_1 : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MASTERORDER_COMP {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Master Prod. Ord.'
  @sap.heading : ''
  @sap.quickinfo : 'Master Production Order Number'
  FshMprodOrd : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Requirement type'
  @sap.heading : ''
  requirementtype : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material'
  @sap.heading : ''
  @sap.quickinfo : 'Material Number'
  Material : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Product Description'
  @sap.heading : ''
  ProductDescription : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Plant'
  @sap.heading : ''
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Counter'
  @sap.heading : ''
  @sap.quickinfo : 'General counter for order'
  OrderIntBillOfOperationsItem : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bill Of Material Item Number'
  @sap.heading : ''
  BillOfMaterialItemNumber_2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Base Unit of Measure'
  @sap.heading : ''
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sort String'
  @sap.heading : ''
  SortField : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Item Category'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Material Item Category'
  BOMItemCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Phantom Item'
  @sap.heading : ''
  @sap.quickinfo : 'Phantom Item Indicator'
  MaterialComponentIsPhantomItem : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bulk material'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: bulk material'
  IsBulkMaterialComponent : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Special Stock Valuation Type'
  @sap.heading : ''
  @sap.quickinfo : 'Inventory Special Stock Valuation Type'
  InventorySpecialStockValnType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Final Issue'
  @sap.heading : ''
  @sap.quickinfo : 'Final Issue for Reservation'
  ReservationIsFinallyIssued : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unit of Entry'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of entry'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Component Scrap (%)'
  @sap.heading : ''
  @sap.quickinfo : 'Component Scrap in Percent'
  ComponentScrapInPercent : Decimal(5, 2);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation Scrap in %'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Scrap'
  OperationScrapInPercent : Decimal(5, 2);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lead-Time Offset'
  @sap.heading : ''
  LeadTimeOffset : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Storage Location'
  @sap.heading : ''
  StorageLocation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Supply Area'
  @sap.heading : ''
  ProductionSupplyArea : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Batch'
  @sap.heading : ''
  @sap.quickinfo : 'Batch Number'
  Batch : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Item Text'
  @sap.heading : ''
  @sap.quickinfo : 'BOM Item Text (Line 1)'
  BOMItemDescription : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Item Text 2'
  @sap.heading : ''
  @sap.quickinfo : 'BOM Item Text (Line 2)'
  BOMItemText2 : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Deletion Flag'
  @sap.heading : ''
  IsMarkedForDeletion : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Product'
  @sap.heading : ''
  @sap.quickinfo : 'Product Number'
  Product : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Production Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Season Year'
  @sap.heading : ''
  ProductSeasonYear : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Season'
  @sap.heading : ''
  ProductSeason : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Collection'
  @sap.heading : ''
  @sap.quickinfo : 'Fashion Collection'
  ProductCollection : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Theme'
  @sap.heading : ''
  @sap.quickinfo : 'Fashion Theme'
  ProductTheme : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Type'
  @sap.heading : ''
  ManufacturingOrderType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Storage Location'
  @sap.heading : ''
  @sap.quickinfo : 'Issue Storage Location'
  ProductionInvtryManagedLoc : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Text of length 4'
  @sap.heading : ''
  Lgort1 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Text of length 4'
  @sap.heading : ''
  Lgort2 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Text of length 4'
  @sap.heading : ''
  Lgort3 : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center Internal'
  @sap.heading : ''
  @sap.quickinfo : 'Work Center Internal ID'
  WorkCenterInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center Type'
  @sap.heading : ''
  WorkCenterTypeCODE_2_1 : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequence'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Sequence'
  ManufacturingOrderSequence : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Operation'
  ManufacturingOrderOperation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Supplier'
  @sap.heading : ''
  @sap.quickinfo : 'Account Number of Supplier'
  Supplier : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stock Segment'
  @sap.heading : ''
  StockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stock Segment'
  @sap.heading : ''
  ParentStockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Requirement Segment'
  @sap.heading : ''
  RequirementSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Special Stock Type'
  @sap.heading : ''
  @sap.quickinfo : 'Inventory Special Stock Type'
  InventorySpecialStockType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center'
  @sap.heading : ''
  WorkCenter : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Customer'
  @sap.heading : ''
  @sap.quickinfo : 'Customer Number'
  Customer : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Supplier Name'
  @sap.heading : ''
  BPSupplierName : String(81);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Street'
  @sap.heading : ''
  @sap.quickinfo : 'Street and House Number'
  StreetName : String(35);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'City'
  @sap.heading : ''
  CityName : String(35);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Postal Code'
  @sap.heading : ''
  PostalCode : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Country/Region Key'
  @sap.heading : ''
  Country : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Region'
  @sap.heading : ''
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Product Description'
  @sap.heading : ''
  ProductDescription_1 : String(40);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  @sap.filterable : 'false'
  TotalAllocQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalConfdQtyForATPInBaseUoM : Decimal(15, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalWithdrawnQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalRequiredQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalQuantityInEntryUnit : Decimal(13, 3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MASTERPRODORDER {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Master Prod. Ord.'
  @sap.heading : ''
  @sap.quickinfo : 'Master Production Order Number'
  MasterProductionOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Text'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Text'
  ManufacturingOrderText : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Type'
  @sap.heading : ''
  ManufacturingOrderType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Deletion Flag'
  @sap.heading : ''
  IsMarkedForDeletion : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Entered By'
  @sap.heading : ''
  CreatedByUser : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Company Code'
  @sap.heading : ''
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Production Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Season Year'
  @sap.heading : ''
  ProductSeasonYear : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Season'
  @sap.heading : ''
  ProductSeason : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Collection'
  @sap.heading : ''
  @sap.quickinfo : 'Fashion Collection'
  ProductCollection : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Theme'
  @sap.heading : ''
  @sap.quickinfo : 'Fashion Theme'
  ProductTheme : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Combined Prod. Order'
  @sap.heading : ''
  @sap.quickinfo : 'Combined Master Production Order'
  CombinedOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cross-plant CP'
  @sap.heading : ''
  @sap.quickinfo : 'Cross-Plant Configurable Product'
  CrossPlantConfigurableProduct : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stock Segment'
  @sap.heading : ''
  StockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : ''
  MfgOrderPlannedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : ''
  MfgOrderScheduledStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : ''
  MfgOrderScheduledEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : ''
  MfgOrderConfirmedEndDate : Date;
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : ''
  @sap.filterable : 'false'
  TotMfgOrderPlannedTotalQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : ''
  TotMfgOrderPlannedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : ''
  ActualDeliveredQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Plant'
  @sap.heading : ''
  ProductionPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'MRP Controller'
  @sap.heading : ''
  MRPController : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_COMBINEDOPE {
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Combined Prod. Order'
  @sap.heading : ''
  @sap.quickinfo : 'Combined Master Production Order'
  key CprodOrd : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequence'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Sequence'
  key ManufacturingOrderSequence : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Operation'
  key ManufacturingOrderOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation or Phase'
  @sap.heading : ''
  @sap.quickinfo : 'Operation or Phase Number'
  key ManufacturingOrderOperation_2 : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Suboperation'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Suboperation'
  key ManufacturingOrderSubOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation or Phase'
  @sap.heading : ''
  @sap.quickinfo : 'Operation or Phase Number'
  key ManufacturingOrdSubOperation_2 : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Activity'
  @sap.heading : ''
  @sap.quickinfo : 'Activity Number'
  key MfgOrderOperationOrSubOp : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation or Phase'
  @sap.heading : ''
  @sap.quickinfo : 'Operation or Phase Number'
  key MfgOrderOperationOrSubOp_2 : String(4) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Indicator: Phase'
  @sap.heading : ''
  key MfgOrderOperationIsPhase : Boolean not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Counter'
  @sap.heading : ''
  @sap.quickinfo : 'General counter for order'
  key OrderIntBillOfOpItemOfPhase : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Superior Operation'
  @sap.heading : ''
  key MfgOrderPhaseSuperiorOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Superior Operation'
  @sap.heading : ''
  key SuperiorOperation_2 : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Category'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Category'
  key ManufacturingOrderCategory : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Type'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Type'
  key ManufacturingOrderType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Supervisor'
  @sap.heading : ''
  key ProductionSupervisor : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'MRP Controller'
  @sap.heading : ''
  key MRPController : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Planner Group'
  @sap.heading : ''
  @sap.quickinfo : 'Responsible Planner Group or Department'
  key ResponsiblePlannerGroup : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prod. Configuration'
  @sap.heading : ''
  @sap.quickinfo : 'Product Configuration'
  key ProductConfiguration : String(18) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Inspection Lot'
  @sap.heading : ''
  @sap.quickinfo : 'Inspection Lot Number'
  key InspectionLot : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Importance'
  @sap.heading : ''
  @sap.quickinfo : 'Order Importance Code'
  key ManufacturingOrderImportance : String(1) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation Text'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Operation Text'
  key MfgOrderOperationText : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation Standard Text ID'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Standard Text Internal ID'
  key OperationStandardTextCode : String(7) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Long Text Exists'
  @sap.heading : ''
  key OperationHasLongText : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Language Key'
  @sap.heading : ''
  key Language : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Deletion Flag'
  @sap.heading : ''
  key OperationIsToBeDeleted : Boolean not null;
  @odata.Type : 'Edm.Byte'
  @sap.required.in.filter : 'false'
  @sap.label : 'Number of Capacities'
  @sap.heading : ''
  @sap.quickinfo : 'Number of Capacities Required'
  key NumberOfCapacities : Integer not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'No. of Conf. Slips'
  @sap.heading : ''
  @sap.quickinfo : 'Number of Confirmation Slips'
  key NumberOfConfirmationSlips : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Priority'
  @sap.heading : ''
  key OperationImportance : String(1) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Superior Op. Node'
  @sap.heading : ''
  @sap.quickinfo : 'Node Number of the Superior Operation'
  key SuperiorOperationInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Plant'
  @sap.heading : ''
  key Plant : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center Internal'
  @sap.heading : ''
  @sap.quickinfo : 'Work Center Internal ID'
  key WorkCenterInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center Type'
  @sap.heading : ''
  key WorkCenterTypeCode : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center Type'
  @sap.heading : ''
  key WorkCenterTypeCode_2 : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Control Profile'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Control Profile'
  key OperationControlProfile : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ctrl Rec.Destination'
  @sap.heading : ''
  @sap.quickinfo : 'Control Recipe Destination'
  key ControlRecipeDestination : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmation'
  @sap.heading : ''
  @sap.quickinfo : 'Completion confirmation number for the operation'
  key OperationConfirmation : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Number Of Confirmations'
  @sap.heading : ''
  key NumberOfOperationConfirmations : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Factory Calendar'
  @sap.heading : ''
  @sap.quickinfo : 'Factory Calendar ID'
  key FactoryCalendar : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Capacity Requirement'
  @sap.heading : ''
  @sap.quickinfo : 'ID of the Capacity Requirements Record'
  key CapacityRequirement : String(12) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Capacity Requirement Item'
  @sap.heading : ''
  key CapacityRequirementItem : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Change Number'
  @sap.heading : ''
  key ChangeNumber : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Object Number'
  @sap.heading : ''
  @sap.quickinfo : 'Object Internal ID'
  key ObjectInternalID : String(22) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Req. Tracking Number'
  @sap.heading : ''
  @sap.quickinfo : 'Requirement Tracking Number'
  key OperationTrackingNumber : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOO Type'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Operations Type'
  key BillOfOperationsType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Group'
  @sap.heading : ''
  @sap.quickinfo : 'Key for Task List Group'
  key BillOfOperationsGroup : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Group Counter'
  @sap.heading : ''
  key BillOfOperationsVariant : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bill of Operation Sequence'
  @sap.heading : ''
  key BillOfOperationsSequence : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Task List Node'
  @sap.heading : ''
  @sap.quickinfo : 'Number of the Task List Node'
  key BOOOperationInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Routing Version'
  @sap.heading : ''
  key BillOfOperationsVersion : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Category'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Material Category Code'
  key BillOfMaterialCategory : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bill of Material'
  @sap.heading : ''
  key BillOfMaterialInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bill Of Material'
  @sap.heading : ''
  key BillOfMaterialInternalID_2 : String(8) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Item'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Material Item'
  key BillOfMaterialItemNodeNumber : String(8) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Counter'
  @sap.heading : ''
  @sap.quickinfo : 'Internal counter'
  key BOMItemNodeCount : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Subcontracting'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: External Processing Operation with Subcontracting'
  key ExtProcgOperationHasSubcontrg : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchasing Organization'
  @sap.heading : ''
  key PurchasingOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchasing Group'
  @sap.heading : ''
  @sap.quickinfo : 'Purchasing Group for External Processing Activity'
  key PurchasingGroup : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Requisition'
  @sap.heading : ''
  @sap.quickinfo : 'Purchase Requisition Number'
  key PurchaseRequisition : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Requisition Item'
  @sap.heading : ''
  @sap.quickinfo : 'Purchase Requisition Item ID'
  key PurchaseRequisitionItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Order'
  @sap.heading : ''
  @sap.quickinfo : 'Purchase Order Number'
  key PurchaseOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Order Item'
  @sap.heading : ''
  @sap.quickinfo : 'Item Number of Purchase Order'
  key PurchaseOrderItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchasing Info Record'
  @sap.heading : ''
  key PurchasingInfoRecord : String(10) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Price is Fixed'
  @sap.heading : ''
  @sap.quickinfo : 'Data of Purchasing Info Record is Fixed'
  key PurgInfoRecdDataIsFixed : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchasing Info Record Category'
  @sap.heading : ''
  key PurchasingInfoRecordCategory : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Supplier'
  @sap.heading : ''
  @sap.quickinfo : 'Account Number of Supplier'
  key Supplier : String(10) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Goods Recipient'
  @sap.heading : ''
  key GoodsRecipientName : String(12) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Unloading Point'
  @sap.heading : ''
  key UnloadingPointName : String(25) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material Group'
  @sap.heading : ''
  key MaterialGroup : String(9) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Currency'
  @sap.heading : ''
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  key OpExternalProcessingCurrency : String(5) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Material Price Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Material Price Unit Quantity'
  key NumberOfOperationPriceUnits : Decimal(5, 0) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Company Code'
  @sap.heading : ''
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Business Area'
  @sap.heading : ''
  key BusinessArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling Area'
  @sap.heading : ''
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profit Center'
  @sap.heading : ''
  key ProfitCenter : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reqst. Cost Center'
  @sap.heading : ''
  @sap.quickinfo : 'Requesting Cost Center'
  key RequestingCostCenter : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost Element'
  @sap.heading : ''
  key CostElement : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Costing Variant'
  @sap.heading : ''
  key CostingVariant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Costing Sheet'
  @sap.heading : ''
  key CostingSheet : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost EstimateNo'
  @sap.heading : ''
  @sap.quickinfo : 'Cost Estimate Number for Cost Est. w/o Qty Structure'
  key CostEstimate : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Object currency'
  @sap.heading : ''
  @sap.quickinfo : 'Object currency for network activity'
  @sap.semantics : 'currency-code'
  key ControllingObjectCurrency : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling Object Class'
  @sap.heading : ''
  key ControllingObjectClass : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Functional Area'
  @sap.heading : ''
  key FunctionalArea : String(16) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tax Jurisdiction'
  @sap.heading : ''
  key TaxJurisdiction : String(15) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Employee Wage Type'
  @sap.heading : ''
  key EmployeeWageType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Employee Wage Group'
  @sap.heading : ''
  key EmployeeWageGroup : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Employee Suitability'
  @sap.heading : ''
  key EmployeeSuitability : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'No. of Time Tickets'
  @sap.heading : ''
  @sap.quickinfo : 'Number of Time Tickets'
  key NumberOfTimeTickets : Decimal(3, 0) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Personnel'
  @sap.heading : ''
  @sap.quickinfo : 'Personnel Number'
  key Personnel : String(8) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Number of Employees'
  @sap.heading : ''
  key NumberOfEmployees : Decimal(5, 2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Setup Group Category'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Setup Group Category'
  key OperationSetupGroupCategory : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Setup Group'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Setup Group'
  key OperationSetupGroup : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Setup Type'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Setup Type'
  key OperationSetupType : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Required Overlapping'
  @sap.heading : ''
  key OperationOverlappingIsRequired : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Optional Overlapping'
  @sap.heading : ''
  key OperationOverlappingIsPossible : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Flow Manufacturing'
  @sap.heading : ''
  key OperationsIsAlwaysOverlapping : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Splitting Required'
  @sap.heading : ''
  key OperationSplitIsRequired : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Max Number of Splits'
  @sap.heading : ''
  @sap.quickinfo : 'Maximum Number of Splits'
  key MaximumNumberOfSplits : Decimal(3, 0) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reduction Strategy'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Lead Time Reduction Strategy'
  key LeadTimeReductionStrategy : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reduction Level'
  @sap.heading : ''
  @sap.quickinfo : 'Reduction Level Which Reduces Operation Lead Time'
  key OpSchedldReductionLevel : String(1) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.text : 'WorkCenterInternalID_1_Text'
  @sap.label : 'Object ID'
  @sap.heading : ''
  @sap.quickinfo : 'Object ID of the resource'
  WorkCenterInternalID_1 : String(8);
  @sap.label : 'Work Center Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenterInternalID_1_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_WorkCenterType/WorkCenterTypeCode_Text'
  @sap.label : 'Object Type'
  @sap.heading : ''
  @sap.quickinfo : 'Object types of the CIM resource'
  @sap.value.list : 'fixed-values'
  WorkCenterTypeCode_1 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Plant'
  @sap.heading : ''
  @sap.value.list : 'standard'
  Plant_1 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center'
  @sap.heading : ''
  @sap.value.list : 'standard'
  WorkCenter : String(8);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : ''
  SumOpTotalConfirmedScrapQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : ''
  SumOperationConfirmedReworkQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : ''
  SumOpPlannedTotalQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : ''
  SumOpTotalConfirmedYieldQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Production Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cross-plant CP'
  @sap.heading : ''
  @sap.quickinfo : 'Cross-Plant Configurable Product'
  CrossPlantConfigurableProduct : String(40);
  to_Plant : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Plant {  };
  to_WorkCenterType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_WorkCenterType {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_MASTEROPE {
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Master Prod. Ord.'
  @sap.heading : ''
  @sap.quickinfo : 'Master Production Order Number'
  key MasterProductionOrder : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequence'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Sequence'
  key ManufacturingOrderSequence : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Operation'
  key ManufacturingOrderOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation or Phase'
  @sap.heading : ''
  @sap.quickinfo : 'Operation or Phase Number'
  key ManufacturingOrderOperation_2 : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Suboperation'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Suboperation'
  key ManufacturingOrderSubOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation or Phase'
  @sap.heading : ''
  @sap.quickinfo : 'Operation or Phase Number'
  key ManufacturingOrdSubOperation_2 : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Activity'
  @sap.heading : ''
  @sap.quickinfo : 'Activity Number'
  key MfgOrderOperationOrSubOp : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation or Phase'
  @sap.heading : ''
  @sap.quickinfo : 'Operation or Phase Number'
  key MfgOrderOperationOrSubOp_2 : String(4) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Indicator: Phase'
  @sap.heading : ''
  key MfgOrderOperationIsPhase : Boolean not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Counter'
  @sap.heading : ''
  @sap.quickinfo : 'General counter for order'
  key OrderIntBillOfOpItemOfPhase : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Superior Operation'
  @sap.heading : ''
  key MfgOrderPhaseSuperiorOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Superior Operation'
  @sap.heading : ''
  key SuperiorOperation_2 : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Category'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Category'
  key ManufacturingOrderCategory : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Type'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Type'
  key ManufacturingOrderType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Supervisor'
  @sap.heading : ''
  key ProductionSupervisor : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'MRP Controller'
  @sap.heading : ''
  key MRPController : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Planner Group'
  @sap.heading : ''
  @sap.quickinfo : 'Responsible Planner Group or Department'
  key ResponsiblePlannerGroup : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prod. Configuration'
  @sap.heading : ''
  @sap.quickinfo : 'Product Configuration'
  key ProductConfiguration : String(18) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Inspection Lot'
  @sap.heading : ''
  @sap.quickinfo : 'Inspection Lot Number'
  key InspectionLot : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Importance'
  @sap.heading : ''
  @sap.quickinfo : 'Order Importance Code'
  key ManufacturingOrderImportance : String(1) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation Text'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Operation Text'
  key MfgOrderOperationText : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation Standard Text ID'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Standard Text Internal ID'
  key OperationStandardTextCode : String(7) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Long Text Exists'
  @sap.heading : ''
  key OperationHasLongText : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Language Key'
  @sap.heading : ''
  key Language : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Deletion Flag'
  @sap.heading : ''
  key OperationIsToBeDeleted : Boolean not null;
  @odata.Type : 'Edm.Byte'
  @sap.required.in.filter : 'false'
  @sap.label : 'Number of Capacities'
  @sap.heading : ''
  @sap.quickinfo : 'Number of Capacities Required'
  key NumberOfCapacities : Integer not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'No. of Conf. Slips'
  @sap.heading : ''
  @sap.quickinfo : 'Number of Confirmation Slips'
  key NumberOfConfirmationSlips : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Priority'
  @sap.heading : ''
  key OperationImportance : String(1) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Superior Op. Node'
  @sap.heading : ''
  @sap.quickinfo : 'Node Number of the Superior Operation'
  key SuperiorOperationInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Plant'
  @sap.heading : ''
  key Plant : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center Internal'
  @sap.heading : ''
  @sap.quickinfo : 'Work Center Internal ID'
  key WorkCenterInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center Type'
  @sap.heading : ''
  key WorkCenterTypeCode : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center Type'
  @sap.heading : ''
  key WorkCenterTypeCode_2 : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Control Profile'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Control Profile'
  key OperationControlProfile : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ctrl Rec.Destination'
  @sap.heading : ''
  @sap.quickinfo : 'Control Recipe Destination'
  key ControlRecipeDestination : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmation'
  @sap.heading : ''
  @sap.quickinfo : 'Completion confirmation number for the operation'
  key OperationConfirmation : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Number Of Confirmations'
  @sap.heading : ''
  key NumberOfOperationConfirmations : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Factory Calendar'
  @sap.heading : ''
  @sap.quickinfo : 'Factory Calendar ID'
  key FactoryCalendar : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Capacity Requirement'
  @sap.heading : ''
  @sap.quickinfo : 'ID of the Capacity Requirements Record'
  key CapacityRequirement : String(12) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Capacity Requirement Item'
  @sap.heading : ''
  key CapacityRequirementItem : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Change Number'
  @sap.heading : ''
  key ChangeNumber : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Object Number'
  @sap.heading : ''
  @sap.quickinfo : 'Object Internal ID'
  key ObjectInternalID : String(22) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Req. Tracking Number'
  @sap.heading : ''
  @sap.quickinfo : 'Requirement Tracking Number'
  key OperationTrackingNumber : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOO Type'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Operations Type'
  key BillOfOperationsType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Group'
  @sap.heading : ''
  @sap.quickinfo : 'Key for Task List Group'
  key BillOfOperationsGroup : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Group Counter'
  @sap.heading : ''
  key BillOfOperationsVariant : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bill of Operation Sequence'
  @sap.heading : ''
  key BillOfOperationsSequence : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Task List Node'
  @sap.heading : ''
  @sap.quickinfo : 'Number of the Task List Node'
  key BOOOperationInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Routing Version'
  @sap.heading : ''
  key BillOfOperationsVersion : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Category'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Material Category Code'
  key BillOfMaterialCategory : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bill of Material'
  @sap.heading : ''
  key BillOfMaterialInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bill Of Material'
  @sap.heading : ''
  key BillOfMaterialInternalID_2 : String(8) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Item'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Material Item'
  key BillOfMaterialItemNodeNumber : String(8) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Counter'
  @sap.heading : ''
  @sap.quickinfo : 'Internal counter'
  key BOMItemNodeCount : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Subcontracting'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: External Processing Operation with Subcontracting'
  key ExtProcgOperationHasSubcontrg : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchasing Organization'
  @sap.heading : ''
  key PurchasingOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchasing Group'
  @sap.heading : ''
  @sap.quickinfo : 'Purchasing Group for External Processing Activity'
  key PurchasingGroup : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Requisition'
  @sap.heading : ''
  @sap.quickinfo : 'Purchase Requisition Number'
  key PurchaseRequisition : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Requisition Item'
  @sap.heading : ''
  @sap.quickinfo : 'Purchase Requisition Item ID'
  key PurchaseRequisitionItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Order'
  @sap.heading : ''
  @sap.quickinfo : 'Purchase Order Number'
  key PurchaseOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Order Item'
  @sap.heading : ''
  @sap.quickinfo : 'Item Number of Purchase Order'
  key PurchaseOrderItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchasing Info Record'
  @sap.heading : ''
  key PurchasingInfoRecord : String(10) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Price is Fixed'
  @sap.heading : ''
  @sap.quickinfo : 'Data of Purchasing Info Record is Fixed'
  key PurgInfoRecdDataIsFixed : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchasing Info Record Category'
  @sap.heading : ''
  key PurchasingInfoRecordCategory : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Supplier'
  @sap.heading : ''
  @sap.quickinfo : 'Account Number of Supplier'
  key Supplier : String(10) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Goods Recipient'
  @sap.heading : ''
  key GoodsRecipientName : String(12) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Unloading Point'
  @sap.heading : ''
  key UnloadingPointName : String(25) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material Group'
  @sap.heading : ''
  key MaterialGroup : String(9) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Currency'
  @sap.heading : ''
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  key OpExternalProcessingCurrency : String(5) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Material Price Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Material Price Unit Quantity'
  key NumberOfOperationPriceUnits : Decimal(5, 0) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Company Code'
  @sap.heading : ''
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Business Area'
  @sap.heading : ''
  key BusinessArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling Area'
  @sap.heading : ''
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profit Center'
  @sap.heading : ''
  key ProfitCenter : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reqst. Cost Center'
  @sap.heading : ''
  @sap.quickinfo : 'Requesting Cost Center'
  key RequestingCostCenter : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost Element'
  @sap.heading : ''
  key CostElement : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Costing Variant'
  @sap.heading : ''
  key CostingVariant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Costing Sheet'
  @sap.heading : ''
  key CostingSheet : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost EstimateNo'
  @sap.heading : ''
  @sap.quickinfo : 'Cost Estimate Number for Cost Est. w/o Qty Structure'
  key CostEstimate : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Object currency'
  @sap.heading : ''
  @sap.quickinfo : 'Object currency for network activity'
  @sap.semantics : 'currency-code'
  key ControllingObjectCurrency : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling Object Class'
  @sap.heading : ''
  key ControllingObjectClass : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Functional Area'
  @sap.heading : ''
  key FunctionalArea : String(16) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tax Jurisdiction'
  @sap.heading : ''
  key TaxJurisdiction : String(15) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Employee Wage Type'
  @sap.heading : ''
  key EmployeeWageType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Employee Wage Group'
  @sap.heading : ''
  key EmployeeWageGroup : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Employee Suitability'
  @sap.heading : ''
  key EmployeeSuitability : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'No. of Time Tickets'
  @sap.heading : ''
  @sap.quickinfo : 'Number of Time Tickets'
  key NumberOfTimeTickets : Decimal(3, 0) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Personnel'
  @sap.heading : ''
  @sap.quickinfo : 'Personnel Number'
  key Personnel : String(8) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Number of Employees'
  @sap.heading : ''
  key NumberOfEmployees : Decimal(5, 2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Setup Group Category'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Setup Group Category'
  key OperationSetupGroupCategory : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Setup Group'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Setup Group'
  key OperationSetupGroup : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Setup Type'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Setup Type'
  key OperationSetupType : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Required Overlapping'
  @sap.heading : ''
  key OperationOverlappingIsRequired : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Optional Overlapping'
  @sap.heading : ''
  key OperationOverlappingIsPossible : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Flow Manufacturing'
  @sap.heading : ''
  key OperationsIsAlwaysOverlapping : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Splitting Required'
  @sap.heading : ''
  key OperationSplitIsRequired : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Max Number of Splits'
  @sap.heading : ''
  @sap.quickinfo : 'Maximum Number of Splits'
  key MaximumNumberOfSplits : Decimal(3, 0) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reduction Strategy'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Lead Time Reduction Strategy'
  key LeadTimeReductionStrategy : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reduction Level'
  @sap.heading : ''
  @sap.quickinfo : 'Reduction Level Which Reduces Operation Lead Time'
  key OpSchedldReductionLevel : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Plant'
  @sap.heading : ''
  @sap.value.list : 'standard'
  Plant_1 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center'
  @sap.heading : ''
  @sap.value.list : 'standard'
  WorkCenter : String(8);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.text : 'WorkCenterInternalID_1_Text'
  @sap.label : 'Object ID'
  @sap.heading : ''
  @sap.quickinfo : 'Object ID of the resource'
  WorkCenterInternalID_1 : String(8);
  @sap.label : 'Work Center Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenterInternalID_1_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_WorkCenterType/WorkCenterTypeCode_Text'
  @sap.label : 'Object Type'
  @sap.heading : ''
  @sap.quickinfo : 'Object types of the CIM resource'
  @sap.value.list : 'fixed-values'
  WorkCenterTypeCode_1 : String(2);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : ''
  SumOpPlannedTotalQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : ''
  SumOpTotalConfirmedYieldQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : ''
  SumOpTotalConfirmedScrapQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : ''
  SumOperationConfirmedReworkQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Production Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cross-plant CP'
  @sap.heading : ''
  @sap.quickinfo : 'Cross-Plant Configurable Product'
  CrossPlantConfigurableProduct : String(40);
  to_Plant : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Plant {  };
  to_WorkCenterType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_WorkCenterType {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_OrderComp {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reservation'
  @sap.heading : ''
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  @sap.value.list : 'standard'
  Reservation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.text : 'MaterialComponentText'
  @sap.label : 'Reservation Item'
  @sap.heading : ''
  @sap.value.list : 'standard'
  ReservationItem : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reservation Record Type'
  @sap.heading : ''
  @sap.value.list : 'standard'
  ReservationRecordType : String(1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Item Text'
  @sap.heading : ''
  @sap.quickinfo : 'BOM Item Text (Line 1)'
  MaterialComponentText : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material Group'
  @sap.heading : ''
  MaterialGroup : String(9);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material'
  @sap.heading : ''
  @sap.quickinfo : 'Material Number'
  @sap.value.list : 'standard'
  Material : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Plant'
  @sap.heading : ''
  @sap.value.list : 'standard'
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_MfgOrderCategory/ManufacturingOrderCategory_Text'
  @sap.label : 'Order Category'
  @sap.heading : ''
  @sap.value.list : 'fixed-values'
  ManufacturingOrderCategory : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_MfgOrderType/ManufacturingOrderType_Text'
  @sap.label : 'Order Type'
  @sap.heading : ''
  @sap.value.list : 'standard'
  ManufacturingOrderType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Manufacturing Order'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order ID'
  @sap.value.list : 'standard'
  ManufacturingOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequence'
  @sap.heading : ''
  ManufacturingOrderSequence : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_MfgOrderSequenceCategory/SequenceCategory_Text'
  @sap.label : 'Sequence Category'
  @sap.heading : ''
  @sap.value.list : 'fixed-values'
  MfgOrderSequenceCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation or Phase'
  @sap.heading : ''
  @sap.quickinfo : 'Operation or Phase Number'
  ManufacturingOrderOperation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Plant'
  @sap.heading : ''
  @sap.value.list : 'standard'
  ProductionPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Internal ID'
  @sap.heading : ''
  OrderInternalID : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation Internal ID'
  @sap.heading : ''
  @sap.quickinfo : 'Internal Identifier of an Operation or Activity'
  @sap.value.list : 'standard'
  OrderOperationInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_AssemblyMRPController/MRPControllerName'
  @sap.label : 'Assembly MRP Controller'
  @sap.heading : ''
  @sap.quickinfo : 'MRP Controller of Assembly Material'
  AssemblyMRPController : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_ProductionSupervisor/ProductionSupervisorName'
  @sap.label : 'Production Supervisor'
  @sap.heading : ''
  ProductionSupervisor : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reservation Item Status'
  @sap.heading : ''
  @sap.quickinfo : 'Status of Reservation Item'
  ReservationItemCreationCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Final Issue'
  @sap.heading : ''
  @sap.quickinfo : 'Final Issue for Reservation'
  ReservationIsFinallyIssued : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Deletion Indicator'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Is Marked For Deletion'
  MatlCompIsMarkedForDeletion : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Missing Part'
  @sap.heading : ''
  MaterialComponentIsMissing : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bulk material'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: bulk material'
  IsBulkMaterialComponent : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Backflush'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Backflush'
  MatlCompIsMarkedForBackflush : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Text Item'
  @sap.heading : ''
  @sap.quickinfo : 'Item is Text indicator'
  MatlCompIsTextItem : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Relevant for Materials Planning'
  @sap.heading : ''
  @sap.quickinfo : 'Code: Relevant for Materials Planning'
  MaterialPlanningRelevance : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Configurable Item'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Configurable Item'
  MatlCompIsConfigurable : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Classification'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Classification Exists'
  MaterialComponentIsClassified : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Intra Material'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Intra Material'
  MaterialCompIsIntraMaterial : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Direct Production'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator for Direct Production (Collective Order)'
  MaterialIsDirectlyProduced : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Direct Procurement'
  @sap.heading : ''
  @sap.quickinfo : 'Direct Procurement Indicator'
  MaterialIsDirectlyProcured : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Is Created'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Material Component is Created'
  MaterialComponentIsCreated : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Is Released'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Material Component is Released'
  MaterialComponentIsReleased : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Is Printed'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Material Component is Printed'
  MaterialComponentIsPrinted : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Is Deleted'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Material Component is Deleted'
  MaterialComponentIsDeleted : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Created by Order Split'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Component is Created by Order Split'
  MatlCompIsCreatedByOrderSplit : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Item Text 2'
  @sap.heading : ''
  @sap.quickinfo : 'BOM Item Text (Line 2)'
  MaterialComponentSecondText : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Long Text Exists'
  @sap.heading : ''
  MaterialComponentHasLongText : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_LongTextLanguage/Language_Text'
  @sap.label : 'Long Text Language'
  @sap.heading : ''
  @sap.value.list : 'standard'
  LongTextLanguage : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Requirement Date'
  @sap.heading : ''
  @sap.quickinfo : 'Material Component Requirement Date'
  MatlCompRequirementDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Requirement Time'
  @sap.heading : ''
  @sap.quickinfo : 'Material Component Requirement Time'
  MatlCompRequirementTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Requirement Date'
  @sap.heading : ''
  LatestRequirementDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Requirement Type'
  @sap.heading : ''
  RequirementType : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sales Order'
  @sap.heading : ''
  @sap.value.list : 'standard'
  SalesOrder : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sales Order Item'
  @sap.heading : ''
  @sap.value.list : 'standard'
  SalesOrderItem : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'WBS Internal ID'
  @sap.heading : ''
  @sap.quickinfo : 'WBS Element'
  @sap.value.list : 'standard'
  WBSElementInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_MRPController/MRPControllerName'
  @sap.label : 'MRP Controller'
  @sap.heading : ''
  MRPController : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Internal object no.'
  @sap.heading : ''
  @sap.quickinfo : 'Configuration (internal object number)'
  ProductConfiguration : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Change Number'
  @sap.heading : ''
  @sap.value.list : 'standard'
  ChangeNumber : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Revision Level'
  @sap.heading : ''
  MaterialRevisionLevel : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Standard Variant'
  @sap.heading : ''
  @sap.quickinfo : 'Parameter Variant/Standard Variant'
  EffectivityParameterVariant : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sort String'
  @sap.heading : ''
  MaterialComponentSortText : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Object number'
  @sap.heading : ''
  ObjectInternalID : String(22);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Category'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Material Category Code'
  BillOfMaterialCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bill Of Material'
  @sap.heading : ''
  BillOfMaterialInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Usage'
  @sap.heading : ''
  BillOfMaterialVariantUsage : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Alternative BOM'
  @sap.heading : ''
  BillOfMaterialVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Item'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Material Item'
  BillOfMaterialItemNodeNumber : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Version'
  @sap.heading : ''
  BillOfMaterialVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Counter'
  @sap.heading : ''
  @sap.quickinfo : 'Internal counter'
  BOMItemInternalChangeCount : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Item node'
  @sap.heading : ''
  @sap.quickinfo : 'Inherited node number of BOM item'
  InheritedBOMItemNode : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Item Category'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Material Item Category'
  BillOfMaterialItemCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bill Of Material Item Number'
  @sap.heading : ''
  BillOfMaterialItemNumber : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_BOMExplosion/BOMExplosionDateText'
  @sap.label : 'Explosion Date ID'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Material Explosion Date ID'
  @sap.value.list : 'standard'
  BOMExplosionDateID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchasing Info Record'
  @sap.heading : ''
  PurchasingInfoRecord : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_PurchasingGroup/PurchasingGroupName'
  @sap.label : 'Purchasing Group'
  @sap.heading : ''
  @sap.value.list : 'standard'
  PurchasingGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Requisition'
  @sap.heading : ''
  @sap.quickinfo : 'Purchase Requisition Number'
  PurchaseRequisition : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Requisition Item'
  @sap.heading : ''
  @sap.quickinfo : 'Item Number of Purchase Requisition in Order'
  PurchaseRequisitionItem : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Order'
  @sap.heading : ''
  @sap.quickinfo : 'Purchase Order Number'
  PurchaseOrder : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Order Item'
  @sap.heading : ''
  @sap.quickinfo : 'Item Number of Purchase Order'
  PurchaseOrderItem : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Schedule Line'
  @sap.heading : ''
  PurchaseOrderScheduleLine : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Supplier'
  @sap.heading : ''
  @sap.quickinfo : 'Account Number of Supplier'
  @sap.value.list : 'standard'
  Supplier : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Delivery Duration'
  @sap.heading : ''
  @sap.quickinfo : 'Delivery Duration In Days'
  DeliveryDurationInDays : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material Goods Receipt Duration'
  @sap.heading : ''
  @sap.quickinfo : 'Material Goods Receipt Duration in Days'
  MaterialGoodsReceiptDuration : Decimal(3, 0);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'Currency'
  @sap.label : 'Price'
  @sap.heading : ''
  @sap.filterable : 'false'
  ExternalProcessingPrice : Decimal(16, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material Price Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Material Price Unit Quantity'
  NumberOfOperationPriceUnits : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Movement Allowed'
  @sap.heading : ''
  @sap.quickinfo : 'Goods Movement for Reservation Allowed'
  GoodsMovementIsAllowed : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_StorageLocation/StorageLocationName'
  @sap.label : 'Storage Location'
  @sap.heading : ''
  @sap.value.list : 'standard'
  StorageLocation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_DebitCreditCode/DebitCreditCode_Text'
  @sap.label : 'Debit Credit Code'
  @sap.heading : ''
  @sap.quickinfo : 'Debit/Credit Code'
  @sap.value.list : 'fixed-values'
  DebitCreditCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_GoodsMovementType/GoodsMovementType_Text'
  @sap.label : 'Movement Type'
  @sap.heading : ''
  @sap.quickinfo : 'Movement Type (Inventory Management)'
  @sap.value.list : 'standard'
  GoodsMovementType : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_InventorySpecialStockType/InventorySpecialStockType_Text'
  @sap.label : 'Special Stock Type'
  @sap.heading : ''
  @sap.quickinfo : 'Inventory Special Stock Type'
  @sap.value.list : 'standard'
  InventorySpecialStockType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_InventorySpecialStockValnType/InventorySpecialStockValnType_Text'
  @sap.label : 'Special Stock Valuation Type'
  @sap.heading : ''
  @sap.quickinfo : 'Inventory Special Stock Valuation Type'
  @sap.value.list : 'fixed-values'
  InventorySpecialStockValnType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Consumption Posting'
  @sap.heading : ''
  ConsumptionPosting : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_SupplyArea/ProductionSupplyArea_Text'
  @sap.label : 'Production Supply Area'
  @sap.heading : ''
  @sap.value.list : 'standard'
  SupplyArea : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Goods Recipient'
  @sap.heading : ''
  GoodsRecipientName : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unloading Point'
  @sap.heading : ''
  UnloadingPointName : String(25);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'CostingRelevncy'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator for Relevancy to Costing'
  MaterialCompCostingRelevancy : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Business Area'
  @sap.heading : ''
  @sap.value.list : 'standard'
  BusinessArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Company Code'
  @sap.heading : ''
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'G/L Account'
  @sap.heading : ''
  @sap.quickinfo : 'G/L Account Number'
  @sap.value.list : 'standard'
  GLAccount : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_FunctionalArea/FunctionalArea_Text'
  @sap.label : 'Functional Area'
  @sap.heading : ''
  @sap.value.list : 'standard'
  FunctionalArea : String(16);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_ControllingArea/ControllingAreaName'
  @sap.label : 'Controlling Area'
  @sap.heading : ''
  @sap.value.list : 'standard'
  ControllingArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_AccountAssignmentCategory/AccountAssignmentCategory_Text'
  @sap.label : 'Account Assignment Category'
  @sap.heading : ''
  @sap.value.list : 'standard'
  AccountAssignmentCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Earmarked Funds'
  @sap.heading : ''
  @sap.quickinfo : 'Document Number for Earmarked Funds'
  EarmarkedFundsDocument : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Document Item'
  @sap.heading : ''
  @sap.quickinfo : 'Earmarked Funds: Document Item'
  EarmarkedFundsDocumentItem : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Batch'
  @sap.heading : ''
  @sap.quickinfo : 'Batch Number'
  @sap.value.list : 'standard'
  Batch : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Batch Entry Determination'
  @sap.heading : ''
  @sap.quickinfo : 'Determination of Batch Entry in an Production/Process Order'
  BatchEntryDeterminationCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_BatchSplitType/BatchSplitType_Text'
  @sap.label : 'Batch key'
  @sap.heading : ''
  @sap.value.list : 'fixed-values'
  BatchSplitType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Batch Master Reservation Item'
  @sap.heading : ''
  @sap.quickinfo : 'Reservation Item of Batch Master Record'
  BatchMasterReservationItem : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Internal object no.'
  @sap.heading : ''
  @sap.quickinfo : 'Internal object number of the batch classification'
  BatchClassification : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Variable-Sized Item'
  @sap.heading : ''
  @sap.quickinfo : 'Variable-Sized Item Indicator'
  MaterialCompIsVariableSized : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Variable-Size Item Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Variable-Size Item Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  VariableSizeItemUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'VariableSizeItemUnit'
  @sap.label : 'Number of Variable-Size Components'
  @sap.heading : ''
  @sap.filterable : 'false'
  VariableSizeItemQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Variable-Size Component Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Variable-Size Components'
  @sap.semantics : 'unit-of-measure'
  VariableSizeComponentUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'VariableSizeComponentUnit'
  @sap.label : 'VSI Quantity'
  @sap.heading : ''
  @sap.quickinfo : 'Variable-Size Item Quantity per PC'
  @sap.filterable : 'false'
  VariableSizeComponentQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Size unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of measure for sizes 1 to 3'
  @sap.semantics : 'unit-of-measure'
  VariableSizeDimensionUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'VariableSizeDimensionUnit'
  @sap.label : 'Size 1'
  @sap.heading : ''
  @sap.filterable : 'false'
  VariableSizeDimension1 : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'VariableSizeDimensionUnit'
  @sap.label : 'Size 2'
  @sap.heading : ''
  @sap.filterable : 'false'
  VariableSizeDimension2 : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'VariableSizeDimensionUnit'
  @sap.label : 'Size 3'
  @sap.heading : ''
  @sap.filterable : 'false'
  VariableSizeDimension3 : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'VSI Formula'
  @sap.heading : ''
  @sap.quickinfo : 'Formula Key for Variable-Size Items'
  VariableSizeCompFormulaKey : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Alternative Item'
  @sap.heading : ''
  @sap.quickinfo : 'Alternative Item Indicator'
  MaterialCompIsAlternativeItem : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Alternative Item Group'
  @sap.heading : ''
  AlternativeItemGroup : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Alternative Item Strategy'
  @sap.heading : ''
  AlternativeItemStrategy : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Alternative Item Priority'
  @sap.heading : ''
  AlternativeItemPriority : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Usage Probability'
  @sap.heading : ''
  @sap.quickinfo : 'Usage Probability in % (Alternative Item)'
  UsageProbabilityPercent : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Alternative Master Reservation Item'
  @sap.heading : ''
  @sap.quickinfo : 'Reservation Item of Alternative Master Record'
  AlternativeMstrReservationItem : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Phantom Item'
  @sap.heading : ''
  @sap.quickinfo : 'Phantom Item Indicator'
  MaterialComponentIsPhantomItem : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order path'
  @sap.heading : ''
  OrderPathValue : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order level'
  @sap.heading : ''
  OrderLevelValue : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_PhantomAssembly/Product_Text'
  @sap.label : 'Pegged Requirement'
  @sap.heading : ''
  @sap.quickinfo : 'Higher-Level Assembly Material'
  @sap.value.list : 'standard'
  Assembly : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Assembly Order Path'
  @sap.heading : ''
  AssemblyOrderPathValue : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Assembly Order Level'
  @sap.heading : ''
  AssemblyOrderLevelValue : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Discontinuation Group'
  @sap.heading : ''
  DiscontinuationGroup : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_DiscontinuationType/MatlCompDiscontinuationType_Text'
  @sap.label : 'Discontinuation Type'
  @sap.heading : ''
  @sap.value.list : 'fixed-values'
  MatlCompDiscontinuationType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Component is Follow-Up Material'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Component is Follow-Up Material'
  MatlCompIsFollowUpMaterial : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Follow-up Group'
  @sap.heading : ''
  FollowUpGroup : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_FollowUpMaterial/Product_Text'
  @sap.label : 'Follow-Up / Original Material'
  @sap.heading : ''
  @sap.value.list : 'standard'
  FollowUpMaterial : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Follow-Up Material is Active'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Follow-Up Material is Active'
  FollowUpMaterialIsActive : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Discontinuation Master Reservation Item'
  @sap.heading : ''
  @sap.quickinfo : 'Reservation Item of Discontinuation Master Record'
  DiscontinuationMasterResvnItem : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material Provision Type'
  @sap.heading : ''
  MaterialProvisionType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Spare Part Type'
  @sap.heading : ''
  MatlComponentSparePartType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lead-Time Offset'
  @sap.heading : ''
  LeadTimeOffset : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation Lead-Time Offset Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Lead-Time Offset for Operations'
  @sap.semantics : 'unit-of-measure'
  OperationLeadTimeOffsetUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation Lead-Time Offset'
  @sap.heading : ''
  @sap.quickinfo : 'Lead-Time Offset for Operations'
  OperationLeadTimeOffset : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Quantity is fixed'
  @sap.heading : ''
  QuantityIsFixed : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Net Scrap Indicator'
  @sap.heading : ''
  IsNetScrap : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Component Scrap (%)'
  @sap.heading : ''
  @sap.quickinfo : 'Component Scrap in Percent'
  ComponentScrapInPercent : Decimal(5, 2);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation Scrap in %'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Scrap'
  OperationScrapInPercent : Decimal(5, 2);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numerator'
  @sap.heading : ''
  @sap.quickinfo : 'Numerator for Conversion to Base Units of Measure'
  MaterialQtyToBaseQtyNmrtr : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Denominator'
  @sap.heading : ''
  @sap.quickinfo : 'Denominator for conversion to base units of measure'
  MaterialQtyToBaseQtyDnmntr : Decimal(5, 0);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Base Unit of Measure'
  @sap.heading : ''
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Requirement Quantity'
  @sap.heading : ''
  @sap.filterable : 'false'
  RequiredQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Withdrawn Quantity'
  @sap.heading : ''
  @sap.filterable : 'false'
  WithdrawnQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Available Quantity'
  @sap.heading : ''
  @sap.filterable : 'false'
  ConfirmedAvailableQuantity : Decimal(15, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Original Quantity'
  @sap.heading : ''
  @sap.quickinfo : 'Original Quantity of a Material Component'
  @sap.filterable : 'false'
  MaterialCompOriginalQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unit of Entry'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of entry'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'Quantity in Unit of Entry'
  @sap.heading : ''
  @sap.filterable : 'false'
  GoodsMovementEntryQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Currency'
  @sap.heading : ''
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'Currency'
  @sap.label : 'Value Withdrawn'
  @sap.heading : ''
  @sap.filterable : 'false'
  WithdrawnQuantityAmount : Decimal(14, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stock Segment'
  @sap.heading : ''
  StockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Requirement Segment'
  @sap.heading : ''
  RequirementSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Critical Component'
  @sap.heading : ''
  @sap.quickinfo : 'Critical Component Indicator'
  CriticalComponentType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Critical Level'
  @sap.heading : ''
  @sap.quickinfo : 'Crtical Level of a Component in BoM'
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
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_ORDEROPE {
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Internal ID'
  @sap.heading : ''
  key MfgOrderInternalID : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation Internal ID'
  @sap.heading : ''
  @sap.quickinfo : 'Internal Identifier of an Operation or Activity'
  key OrderOperationInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Master Prod. Ord.'
  @sap.heading : ''
  @sap.quickinfo : 'Master Production Order Number'
  MasterProductionOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Manufacturing Order'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order ID'
  ManufacturingOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequence'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Sequence'
  ManufacturingOrderSequence : String(6);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Operation'
  ManufacturingOrderOperation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation or Phase'
  @sap.heading : ''
  @sap.quickinfo : 'Operation or Phase Number'
  ManufacturingOrderOperation_2 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Suboperation'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Suboperation'
  ManufacturingOrderSubOperation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation or Phase'
  @sap.heading : ''
  @sap.quickinfo : 'Operation or Phase Number'
  ManufacturingOrdSubOperation_2 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Activity'
  @sap.heading : ''
  @sap.quickinfo : 'Activity Number'
  MfgOrderOperationOrSubOp : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation or Phase'
  @sap.heading : ''
  @sap.quickinfo : 'Operation or Phase Number'
  MfgOrderOperationOrSubOp_2 : String(4);
  @sap.required.in.filter : 'false'
  @sap.label : 'Indicator: Phase'
  @sap.heading : ''
  MfgOrderOperationIsPhase : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Counter'
  @sap.heading : ''
  @sap.quickinfo : 'General counter for order'
  OrderIntBillOfOpItemOfPhase : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Superior Operation'
  @sap.heading : ''
  MfgOrderPhaseSuperiorOperation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Superior Operation'
  @sap.heading : ''
  SuperiorOperation_2 : String(4);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Category'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Category'
  ManufacturingOrderCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Type'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Type'
  ManufacturingOrderType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Supervisor'
  @sap.heading : ''
  ProductionSupervisor : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'MRP Controller'
  @sap.heading : ''
  MRPController : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Planner Group'
  @sap.heading : ''
  @sap.quickinfo : 'Responsible Planner Group or Department'
  ResponsiblePlannerGroup : String(3);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prod. Configuration'
  @sap.heading : ''
  @sap.quickinfo : 'Product Configuration'
  ProductConfiguration : String(18);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Inspection Lot'
  @sap.heading : ''
  @sap.quickinfo : 'Inspection Lot Number'
  InspectionLot : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Importance'
  @sap.heading : ''
  @sap.quickinfo : 'Order Importance Code'
  ManufacturingOrderImportance : String(1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation Text'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Operation Text'
  MfgOrderOperationText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation Standard Text ID'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Standard Text Internal ID'
  OperationStandardTextCode : String(7);
  @sap.required.in.filter : 'false'
  @sap.label : 'Long Text Exists'
  @sap.heading : ''
  OperationHasLongText : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Language Key'
  @sap.heading : ''
  Language : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Deletion Flag'
  @sap.heading : ''
  OperationIsToBeDeleted : Boolean;
  @odata.Type : 'Edm.Byte'
  @sap.required.in.filter : 'false'
  @sap.label : 'Number of Capacities'
  @sap.heading : ''
  @sap.quickinfo : 'Number of Capacities Required'
  NumberOfCapacities : Integer;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'No. of Conf. Slips'
  @sap.heading : ''
  @sap.quickinfo : 'Number of Confirmation Slips'
  NumberOfConfirmationSlips : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Priority'
  @sap.heading : ''
  OperationImportance : String(1);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Superior Op. Node'
  @sap.heading : ''
  @sap.quickinfo : 'Node Number of the Superior Operation'
  SuperiorOperationInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Plant'
  @sap.heading : ''
  Plant : String(4);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center Internal'
  @sap.heading : ''
  @sap.quickinfo : 'Work Center Internal ID'
  WorkCenterInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center Type'
  @sap.heading : ''
  WorkCenterTypeCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center Type'
  @sap.heading : ''
  WorkCenterTypeCode_2 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Control Profile'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Control Profile'
  OperationControlProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ctrl Rec.Destination'
  @sap.heading : ''
  @sap.quickinfo : 'Control Recipe Destination'
  ControlRecipeDestination : String(2);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmation'
  @sap.heading : ''
  @sap.quickinfo : 'Completion confirmation number for the operation'
  OperationConfirmation : String(10);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Number Of Confirmations'
  @sap.heading : ''
  NumberOfOperationConfirmations : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Factory Calendar'
  @sap.heading : ''
  @sap.quickinfo : 'Factory Calendar ID'
  FactoryCalendar : String(2);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Capacity Requirement'
  @sap.heading : ''
  @sap.quickinfo : 'ID of the Capacity Requirements Record'
  CapacityRequirement : String(12);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Capacity Requirement Item'
  @sap.heading : ''
  CapacityRequirementItem : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Change Number'
  @sap.heading : ''
  ChangeNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Object Number'
  @sap.heading : ''
  @sap.quickinfo : 'Object Internal ID'
  ObjectInternalID : String(22);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Req. Tracking Number'
  @sap.heading : ''
  @sap.quickinfo : 'Requirement Tracking Number'
  OperationTrackingNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOO Type'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Operations Type'
  BillOfOperationsType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Group'
  @sap.heading : ''
  @sap.quickinfo : 'Key for Task List Group'
  BillOfOperationsGroup : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Group Counter'
  @sap.heading : ''
  BillOfOperationsVariant : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bill of Operation Sequence'
  @sap.heading : ''
  BillOfOperationsSequence : String(6);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Task List Node'
  @sap.heading : ''
  @sap.quickinfo : 'Number of the Task List Node'
  BOOOperationInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Routing Version'
  @sap.heading : ''
  BillOfOperationsVersion : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Category'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Material Category Code'
  BillOfMaterialCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bill of Material'
  @sap.heading : ''
  BillOfMaterialInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bill Of Material'
  @sap.heading : ''
  BillOfMaterialInternalID_2 : String(8);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Item'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Material Item'
  BillOfMaterialItemNodeNumber : String(8);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Counter'
  @sap.heading : ''
  @sap.quickinfo : 'Internal counter'
  BOMItemNodeCount : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Subcontracting'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: External Processing Operation with Subcontracting'
  ExtProcgOperationHasSubcontrg : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchasing Organization'
  @sap.heading : ''
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchasing Group'
  @sap.heading : ''
  @sap.quickinfo : 'Purchasing Group for External Processing Activity'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Requisition'
  @sap.heading : ''
  @sap.quickinfo : 'Purchase Requisition Number'
  PurchaseRequisition : String(10);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Requisition Item'
  @sap.heading : ''
  @sap.quickinfo : 'Purchase Requisition Item ID'
  PurchaseRequisitionItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Order'
  @sap.heading : ''
  @sap.quickinfo : 'Purchase Order Number'
  PurchaseOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchase Order Item'
  @sap.heading : ''
  @sap.quickinfo : 'Item Number of Purchase Order'
  PurchaseOrderItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchasing Info Record'
  @sap.heading : ''
  PurchasingInfoRecord : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Price is Fixed'
  @sap.heading : ''
  @sap.quickinfo : 'Data of Purchasing Info Record is Fixed'
  PurgInfoRecdDataIsFixed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Purchasing Info Record Category'
  @sap.heading : ''
  PurchasingInfoRecordCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Supplier'
  @sap.heading : ''
  @sap.quickinfo : 'Account Number of Supplier'
  Supplier : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Goods Recipient'
  @sap.heading : ''
  GoodsRecipientName : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unloading Point'
  @sap.heading : ''
  UnloadingPointName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material Group'
  @sap.heading : ''
  MaterialGroup : String(9);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Currency'
  @sap.heading : ''
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  OpExternalProcessingCurrency : String(5);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpExternalProcessingCurrency'
  @sap.label : 'Price'
  @sap.heading : ''
  OpExternalProcessingPrice : Decimal(12, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Material Price Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Material Price Unit Quantity'
  NumberOfOperationPriceUnits : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Company Code'
  @sap.heading : ''
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Business Area'
  @sap.heading : ''
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling Area'
  @sap.heading : ''
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profit Center'
  @sap.heading : ''
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reqst. Cost Center'
  @sap.heading : ''
  @sap.quickinfo : 'Requesting Cost Center'
  RequestingCostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost Element'
  @sap.heading : ''
  CostElement : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Costing Variant'
  @sap.heading : ''
  CostingVariant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Costing Sheet'
  @sap.heading : ''
  CostingSheet : String(6);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost EstimateNo'
  @sap.heading : ''
  @sap.quickinfo : 'Cost Estimate Number for Cost Est. w/o Qty Structure'
  CostEstimate : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Object currency'
  @sap.heading : ''
  @sap.quickinfo : 'Object currency for network activity'
  @sap.semantics : 'currency-code'
  ControllingObjectCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling Object Class'
  @sap.heading : ''
  ControllingObjectClass : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Functional Area'
  @sap.heading : ''
  FunctionalArea : String(16);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tax Jurisdiction'
  @sap.heading : ''
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Employee Wage Type'
  @sap.heading : ''
  EmployeeWageType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Employee Wage Group'
  @sap.heading : ''
  EmployeeWageGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Employee Suitability'
  @sap.heading : ''
  EmployeeSuitability : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'No. of Time Tickets'
  @sap.heading : ''
  @sap.quickinfo : 'Number of Time Tickets'
  NumberOfTimeTickets : Decimal(3, 0);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Personnel'
  @sap.heading : ''
  @sap.quickinfo : 'Personnel Number'
  Personnel : String(8);
  @sap.required.in.filter : 'false'
  @sap.label : 'Number of Employees'
  @sap.heading : ''
  NumberOfEmployees : Decimal(5, 2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Setup Group Category'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Setup Group Category'
  OperationSetupGroupCategory : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Setup Group'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Setup Group'
  OperationSetupGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Setup Type'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Setup Type'
  OperationSetupType : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Required Overlapping'
  @sap.heading : ''
  OperationOverlappingIsRequired : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Optional Overlapping'
  @sap.heading : ''
  OperationOverlappingIsPossible : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Flow Manufacturing'
  @sap.heading : ''
  OperationsIsAlwaysOverlapping : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Splitting Required'
  @sap.heading : ''
  OperationSplitIsRequired : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Max Number of Splits'
  @sap.heading : ''
  @sap.quickinfo : 'Maximum Number of Splits'
  MaximumNumberOfSplits : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reduction Strategy'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Lead Time Reduction Strategy'
  LeadTimeReductionStrategy : String(2);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reduction Level'
  @sap.heading : ''
  @sap.quickinfo : 'Reduction Level Which Reduces Operation Lead Time'
  OpSchedldReductionLevel : String(1);
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Earliest Scheduled Execution Start Date'
  @sap.heading : ''
  OpErlstSchedldExecStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Earliest Scheduled Execution Start Time'
  @sap.heading : ''
  OpErlstSchedldExecStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Earliest Scheduled Processing Start Date'
  @sap.heading : ''
  OpErlstSchedldProcgStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Earliest Scheduled Processing Start Time'
  @sap.heading : ''
  OpErlstSchedldProcgStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Earliest Scheduled Teardown Start Date'
  @sap.heading : ''
  OpErlstSchedldTrdwnStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Earliest Scheduled Teardown Start Time'
  @sap.heading : ''
  OpErlstSchedldTrdwnStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Earliest Scheduled Execution End Date'
  @sap.heading : ''
  OpErlstSchedldExecEndDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Earliest Scheduled Execution End Time'
  @sap.heading : ''
  OpErlstSchedldExecEndTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Scheduled Execution Start Date'
  @sap.heading : ''
  OpLtstSchedldExecStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Scheduled Execution Start Time'
  @sap.heading : ''
  OpLtstSchedldExecStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Scheduled Processing Start Date'
  @sap.heading : ''
  OpLtstSchedldProcgStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Scheduled Processing Start Time'
  @sap.heading : ''
  OpLtstSchedldProcgStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Scheduled Teardown Start Date'
  @sap.heading : ''
  OpLtstSchedldTrdwnStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Scheduled Teardown Start Time'
  @sap.heading : ''
  OpLtstSchedldTrdwnStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Scheduled Execution End Date'
  @sap.heading : ''
  OpLtstSchedldExecEndDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Scheduled Execution End Time'
  @sap.heading : ''
  OpLtstSchedldExecEndTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Earliest Forecast Start Date'
  @sap.heading : ''
  @sap.quickinfo : 'Earliest Scheduled Forecast Start Date'
  SchedldFcstdEarliestStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Earliest Forecast Start Time'
  @sap.heading : ''
  @sap.quickinfo : 'Earliest Scheduled Forecast Start Time'
  SchedldFcstdEarliestStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Earliest Forecast End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Earliest Scheduled Forecast End Date'
  SchedldFcstdEarliestEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Earliest Forecast End Time'
  @sap.heading : ''
  @sap.quickinfo : 'Earliest Scheduled Forecast End Time'
  SchedldFcstdEarliestEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Forecast Start Date'
  @sap.heading : ''
  @sap.quickinfo : 'Latest Scheduled Forecast Start Date'
  LatestSchedldFcstdStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Forecast Start Time'
  @sap.heading : ''
  @sap.quickinfo : 'Latest Scheduled Forecast Start Time'
  SchedldFcstdLatestStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Forecast End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Latest Scheduled Forecast End Date'
  LatestSchedldFcstdEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Forecast End Time'
  @sap.heading : ''
  @sap.quickinfo : 'Latest Scheduled Forecast End Time'
  SchedldFcstdLatestEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Start Date'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Confirmed Start Date'
  OperationConfirmedStartDate : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Confirmed End Date'
  OperationConfirmedEndDate : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Execution Start Date'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed Start Date of Execution'
  OpActualExecutionStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Execution Start Time'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed Start Time of Execution'
  OpActualExecutionStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Setup End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed End Date of Setup'
  OpActualSetupEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Setup End Time'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed End Time of Setup'
  OpActualSetupEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Processing Start Date'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed Start Date of Processing'
  OpActualProcessingStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Processing Start Time'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed Start Time of Processing'
  OpActualProcessingStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Processing End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed End Date of Processing'
  OpActualProcessingEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Processing End Time'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed End Time of Processing'
  OpActualProcessingEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Teardown Start Date'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed Start Date of Teardown'
  OpActualTeardownStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Teardown Start Time'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed Start Time of Teardown'
  OpActualTeardownStartTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Execution End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed End Date of Execution'
  OpActualExecutionEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Execution End Time'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed End Time of Execution'
  OpActualExecutionEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Forecast End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Actual Forecast End Date'
  ActualForecastEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Forecast End Time'
  @sap.heading : ''
  @sap.quickinfo : 'Actual Forecast End Time'
  ActualForecastEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Erl. Wait Start Date'
  @sap.heading : ''
  @sap.quickinfo : 'Earliest Scheduled Wait Start Date'
  EarliestScheduledWaitStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Erl. Wait Start Time'
  @sap.heading : ''
  @sap.quickinfo : 'Earliest Scheduled Wait Start Time'
  EarliestScheduledWaitStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Erlst Wait End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Earliest Scheduled Wait End Date'
  EarliestScheduledWaitEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Erlst Wait End Time'
  @sap.heading : ''
  @sap.quickinfo : 'Earliest Scheduled Wait End Time'
  EarliestScheduledWaitEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ltst Wait Start Date'
  @sap.heading : ''
  @sap.quickinfo : 'Latest Scheduled Wait Start Date'
  LatestScheduledWaitStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ltst Wait Start Time'
  @sap.heading : ''
  @sap.quickinfo : 'Latest Scheduled Wait Start Time'
  LatestScheduledWaitStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Wait End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Latest Scheduled Wait End Date'
  LatestScheduledWaitEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Latest Wait End Time'
  @sap.heading : ''
  @sap.quickinfo : 'Latest Scheduled Wait End Time'
  LatestScheduledWaitEndTime : Time;
  @sap.required.in.filter : 'false'
  @sap.label : 'Break Time Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit for a Break Time'
  @sap.semantics : 'unit-of-measure'
  BreakDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BreakDurationUnit'
  @sap.label : 'Break Time'
  @sap.heading : ''
  PlannedBreakDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BreakDurationUnit'
  @sap.label : 'Confirmed Break Time'
  @sap.heading : ''
  ConfirmedBreakDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Minimum Overlap Time Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit for the Minimum Overlap Time'
  @sap.semantics : 'unit-of-measure'
  OverlapMinimumDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OverlapMinimumDurationUnit'
  @sap.label : 'Minimum Overlap Time'
  @sap.heading : ''
  OverlapMinimumDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Max. Wait Time Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit for the Maximum Wait Time'
  @sap.semantics : 'unit-of-measure'
  MaximumWaitDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MaximumWaitDurationUnit'
  @sap.label : 'Maximum Wait Time'
  @sap.heading : ''
  MaximumWaitDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Req. Wait Time Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit for the Required Wait Time'
  @sap.semantics : 'unit-of-measure'
  MinimumWaitDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumWaitDurationUnit'
  @sap.label : 'Minimum Wait Time'
  @sap.heading : ''
  MinimumWaitDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un.for StdMoveTime'
  @sap.heading : ''
  @sap.quickinfo : 'Unit for the standard move time'
  @sap.semantics : 'unit-of-measure'
  StandardMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'StandardMoveDurationUnit'
  @sap.label : 'Standard Move Time'
  @sap.heading : ''
  StandardMoveDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Std Queue Time Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit for the Standard Queue Time'
  @sap.semantics : 'unit-of-measure'
  StandardQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'StandardQueueDurationUnit'
  @sap.label : 'Standard Queue Time'
  @sap.heading : ''
  StandardQueueDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Min. Queue Time Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit for the Minimum Queue Time'
  @sap.semantics : 'unit-of-measure'
  MinimumQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumQueueDurationUnit'
  @sap.label : 'Minimum Queue Time'
  @sap.heading : ''
  MinimumQueueDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Un.for MinMoveTime'
  @sap.heading : ''
  @sap.quickinfo : 'Unit for the minimum move time'
  @sap.semantics : 'unit-of-measure'
  MinimumMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumMoveDurationUnit'
  @sap.label : 'Minimum Move Time'
  @sap.heading : ''
  MinimumMoveDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OperationStandardDurationUnit'
  @sap.label : 'Normal duration'
  @sap.heading : ''
  @sap.quickinfo : 'Normal duration of the activity'
  OperationStandardDuration : Decimal(5, 1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Normal duration unit'
  @sap.heading : ''
  @sap.quickinfo : 'Normal duration/unit'
  @sap.semantics : 'unit-of-measure'
  OperationStandardDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumDurationUnit'
  @sap.label : 'Minimum Duration'
  @sap.heading : ''
  @sap.quickinfo : 'Minimum Activity Duration'
  MinimumDuration : Decimal(5, 1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Minimum Duration Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit for the Minimum Duration'
  @sap.semantics : 'unit-of-measure'
  MinimumDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumDurationUnit'
  @sap.label : 'Move Time'
  @sap.heading : ''
  @sap.quickinfo : 'Move Time used for Scheduling'
  ScheduledMoveDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Move Time Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Move Time'
  @sap.semantics : 'unit-of-measure'
  ScheduledMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Queue Time'
  @sap.heading : ''
  @sap.quickinfo : 'Queue Time Used for Scheduling'
  ScheduledQueueDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Queue Time Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Queue Time'
  @sap.semantics : 'unit-of-measure'
  ScheduledQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Wait Time'
  @sap.heading : ''
  @sap.quickinfo : 'Wait Time Used for Scheduling'
  ScheduledWaitDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Wait Time Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Wait Time'
  @sap.semantics : 'unit-of-measure'
  ScheduledWaitDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Delivery Duration'
  @sap.heading : ''
  @sap.quickinfo : 'Material Planned Delivery Duration in Days'
  PlannedDeliveryDuration : Decimal(3, 0);
  @sap.required.in.filter : 'false'
  @sap.label : 'Setup Time'
  @sap.heading : ''
  OpPlannedSetupDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Setup Time Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Setup Time'
  @sap.semantics : 'unit-of-measure'
  OpPlannedSetupDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Processing Time'
  @sap.heading : ''
  OpPlannedProcessingDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Processing Time Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Processing Time'
  @sap.semantics : 'unit-of-measure'
  OpPlannedProcessingDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Teardown'
  @sap.heading : ''
  OpPlannedTeardownDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Teardown Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Teardown'
  @sap.semantics : 'unit-of-measure'
  OpPlannedTeardownDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ActualForecastDurationUnit'
  @sap.label : 'Actual Forecast Duration'
  @sap.heading : ''
  @sap.quickinfo : 'Forecast Duration of Activity from Confirmation'
  ActualForecastDuration : Decimal(5, 1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Actual Forecast Duration Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Forecast Duration from Confirmation'
  @sap.semantics : 'unit-of-measure'
  ActualForecastDurationUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reference Start Date'
  @sap.heading : ''
  @sap.quickinfo : 'Reference Date for Start of Sub-Operation'
  StartDateOffsetReferenceCode : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Start Offset Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit for Offset to Start'
  @sap.semantics : 'unit-of-measure'
  StartDateOffsetDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'StartDateOffsetDurationUnit'
  @sap.label : 'Offset to Start'
  @sap.heading : ''
  @sap.quickinfo : 'Offset to sub-operation start'
  StartDateOffsetDuration : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reference Date End'
  @sap.heading : ''
  @sap.quickinfo : 'Reference Date for Finish of Sub-Operation'
  EndDateOffsetReferenceCode : String(2);
  @sap.required.in.filter : 'false'
  @sap.label : 'End Offset Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit for Offset to Finish'
  @sap.semantics : 'unit-of-measure'
  EndDateOffsetDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'EndDateOffsetDurationUnit'
  @sap.label : 'Offset to Finish'
  @sap.heading : ''
  @sap.quickinfo : 'Offset to sub-operation finish'
  EndDateOffsetDuration : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Standard Value Key'
  @sap.heading : ''
  StandardWorkFormulaParamGroup : String(4);
  @sap.required.in.filter : 'false'
  @sap.label : 'Operation Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  OperationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Denominator'
  @sap.heading : ''
  @sap.quickinfo : 'Denominator for Converting Routing and Operation UoM'
  OpQtyToBaseQtyDnmntr : Decimal(5, 0);
  @sap.required.in.filter : 'false'
  @sap.label : 'Numerator'
  @sap.heading : ''
  @sap.quickinfo : 'Numerator for Converting Routing and Operation UoM'
  OpQtyToBaseQtyNmrtr : Decimal(5, 0);
  @sap.required.in.filter : 'false'
  @sap.label : 'Scrap'
  @sap.heading : ''
  @sap.quickinfo : 'Scrap factor'
  OperationScrapPercent : Decimal(5, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Base Quantity'
  @sap.heading : ''
  OperationReferenceQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Operation Quantity'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Total Quantity'
  OpPlannedTotalQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Planned Scrap'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Planned Scrap Quantity'
  OpPlannedScrapQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Planned Yield Quantity'
  @sap.heading : ''
  OpPlannedYieldQuantity : Decimal(14, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Confirmed Yield'
  @sap.heading : ''
  @sap.quickinfo : 'Total Confirmed Yield'
  OpTotalConfirmedYieldQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Confirmed Scrap'
  @sap.heading : ''
  @sap.quickinfo : 'Total Scrap Quantity Confirmed'
  OpTotalConfirmedScrapQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Confirmed Rework'
  @sap.heading : ''
  @sap.quickinfo : 'Total Confirmed Rework Quantity'
  OperationConfirmedReworkQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Production Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Yield in Order Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed yield in order unit of measure'
  OpTotConfdYieldQtyInOrdQtyUnit : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Work Quantity Unit 1'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Confirmed Work Quantity 1'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit1 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit1'
  @sap.label : 'Confirmed Work Quantity 1'
  @sap.heading : ''
  @sap.quickinfo : 'Already Confirmed Work Quantity (Activity) 1'
  OpConfirmedWorkQuantity1 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'No Remaining Work Quantity 1 Expected'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: No Remaining Work Quantity 1 is Expected'
  NoFurtherOpWorkQuantity1IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Work Quantity Unit 2'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Confirmed Work Quantity 2'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit2 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit2'
  @sap.label : 'Confirmed Work Quantity 2'
  @sap.heading : ''
  @sap.quickinfo : 'Already Confirmed Work Quantity (Activity) 2'
  OpConfirmedWorkQuantity2 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'No Remaining Work Quantity 2 Expected'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: No Remaining Work Quantity 2 is Expected'
  NoFurtherOpWorkQuantity2IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Work Quantity Unit 3'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Confirmed Work Quantity 3'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit3 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit3'
  @sap.label : 'Confirmed Work Quantity 3'
  @sap.heading : ''
  @sap.quickinfo : 'Already Confirmed Work Quantity (Activity) 3'
  OpConfirmedWorkQuantity3 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'No Remaining Work Quantity 3 Expected'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: No Remaining Work Quantity 3 is Expected'
  NoFurtherOpWorkQuantity3IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Work Quantity Unit 4'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Confirmed Work Quantity 4'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit4 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit4'
  @sap.label : 'Confirmed Work Quantity 4'
  @sap.heading : ''
  @sap.quickinfo : 'Already Confirmed Work Quantity (Activity) 4'
  OpConfirmedWorkQuantity4 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'No Remaining Work Quantity 4 Expected'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: No Remaining Work Quantity 4 is Expected'
  NoFurtherOpWorkQuantity4IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Work Quantity Unit 5'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Confirmed Work Quantity 5'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit5 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit5'
  @sap.label : 'Confirmed Work Quantity 5'
  @sap.heading : ''
  @sap.quickinfo : 'Already Confirmed Work Quantity (Activity) 5'
  OpConfirmedWorkQuantity5 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'No Remaining Work Quantity 5 Expected'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: No Remaining Work Quantity 5 is Expected'
  NoFurtherOpWorkQuantity5IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed Work Quantity Unit 6'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Confirmed Work Quantity 6'
  @sap.semantics : 'unit-of-measure'
  OpWorkQuantityUnit6 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpWorkQuantityUnit6'
  @sap.label : 'Confirmed Work Quantity 6'
  @sap.heading : ''
  @sap.quickinfo : 'Already Confirmed Work Quantity (Activity) 6'
  OpConfirmedWorkQuantity6 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'No Remaining Work Quantity 6 Expected'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: No Remaining Work Quantity 6 is Expected'
  NoFurtherOpWorkQuantity6IsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Quantity Unit 1'
  @sap.heading : ''
  @sap.quickinfo : 'Standard Work Quantity Unit 1'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit1 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit1'
  @sap.label : 'Standard Work Quantity 1'
  @sap.heading : ''
  WorkCenterStandardWorkQty1 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost Center Activity Type 1'
  @sap.heading : ''
  CostCtrActivityType1 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Quantity Unit 2'
  @sap.heading : ''
  @sap.quickinfo : 'Standard Work Quantity Unit 2'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit2 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit2'
  @sap.label : 'Standard Work Quantity 2'
  @sap.heading : ''
  WorkCenterStandardWorkQty2 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost Center Activity Type 2'
  @sap.heading : ''
  CostCtrActivityType2 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Quantity Unit 3'
  @sap.heading : ''
  @sap.quickinfo : 'Standard Work Quantity Unit 3'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit3 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit3'
  @sap.label : 'Standard Work Quantity 3'
  @sap.heading : ''
  WorkCenterStandardWorkQty3 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost Center Activity Type 3'
  @sap.heading : ''
  CostCtrActivityType3 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Quantity Unit 4'
  @sap.heading : ''
  @sap.quickinfo : 'Standard Work Quantity Unit 4'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit4 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit4'
  @sap.label : 'Standard Work Quantity 4'
  @sap.heading : ''
  WorkCenterStandardWorkQty4 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost Center Activity Type 4'
  @sap.heading : ''
  CostCtrActivityType4 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Quantity Unit 5'
  @sap.heading : ''
  @sap.quickinfo : 'Standard Work Quantity Unit 5'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit5 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit5'
  @sap.label : 'Standard Work Quantity 5'
  @sap.heading : ''
  WorkCenterStandardWorkQty5 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost Center Activity Type 5'
  @sap.heading : ''
  CostCtrActivityType5 : String(6);
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Quantity Unit 6'
  @sap.heading : ''
  @sap.quickinfo : 'Standard Work Quantity Unit 6'
  @sap.semantics : 'unit-of-measure'
  WorkCenterStandardWorkQtyUnit6 : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Standard Work Quantity 6'
  @sap.heading : ''
  WorkCenterStandardWorkQty6 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost Center Activity Type 6'
  @sap.heading : ''
  CostCtrActivityType6 : String(6);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Forecast Work Quantity 1'
  @sap.heading : ''
  ForecastWorkQuantity1 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Forecast Work Quantity 2'
  @sap.heading : ''
  ForecastWorkQuantity2 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Forecast Work Quantity 3'
  @sap.heading : ''
  ForecastWorkQuantity3 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Forecast Work Quantity 4'
  @sap.heading : ''
  ForecastWorkQuantity4 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Forecast Work Quantity 5'
  @sap.heading : ''
  ForecastWorkQuantity5 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Forecast Work Quantity 6'
  @sap.heading : ''
  ForecastWorkQuantity6 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Business Process'
  @sap.heading : ''
  BusinessProcess : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Process Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of Measure for Business Process Quantity'
  @sap.semantics : 'unit-of-measure'
  BusinessProcessEntryUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BusinessProcessEntryUnit'
  @sap.label : 'Process Quantity'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed Quantity/Activity for Business Process'
  BusinessProcessConfirmedQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'No Remaining Act.'
  @sap.heading : ''
  @sap.quickinfo : 'No Remaining Quantity Expected for Business Process'
  NoFurtherBusinessProcQtyIsExpd : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Remain. Process Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Unit for Remaining Quantity of Business Process'
  @sap.semantics : 'unit-of-measure'
  BusinessProcRemainingQtyUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BusinessProcRemainingQtyUnit'
  @sap.label : 'Remaining Business Process Quantity'
  @sap.heading : ''
  @sap.quickinfo : 'Remaining Quantity for Business Process'
  BusinessProcessRemainingQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Setup Instance ID'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Activity Network: Setup Instance ID'
  SetupOpActyNtwkInstance : Integer;
  @sap.required.in.filter : 'false'
  @sap.label : 'Produce Instance ID'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Activity Network: Produce Instance ID'
  ProduceOpActyNtwkInstance : Integer;
  @sap.required.in.filter : 'false'
  @sap.label : 'Teardown Instance ID'
  @sap.heading : ''
  @sap.quickinfo : 'Operation Activity Network: Teardown Instance ID'
  TeardownOpActyNtwkInstance : Integer;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Field key'
  @sap.heading : ''
  @sap.quickinfo : 'Key word ID for user-defined fields'
  FreeDefinedTableFieldSemantic : String(7);
  @sap.required.in.filter : 'false'
  @sap.label : 'User field 20 chars'
  @sap.heading : ''
  @sap.quickinfo : 'User field with 20 characters'
  FreeDefinedAttribute01 : String(20);
  @sap.required.in.filter : 'false'
  @sap.label : 'User field 20 chars'
  @sap.heading : ''
  @sap.quickinfo : 'User field with 20 characters'
  FreeDefinedAttribute02 : String(20);
  @sap.required.in.filter : 'false'
  @sap.label : 'User-Defined Field'
  @sap.heading : ''
  @sap.quickinfo : 'User Field with 10 Characters'
  FreeDefinedAttribute03 : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'User-Defined Field'
  @sap.heading : ''
  @sap.quickinfo : 'User Field with 10 Characters'
  FreeDefinedAttribute04 : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'User field unit'
  @sap.heading : ''
  @sap.quickinfo : 'User field: Unit for quantity fields'
  @sap.semantics : 'unit-of-measure'
  FreeDefinedQuantity1Unit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedQuantity1Unit'
  @sap.label : 'User field quantity'
  @sap.heading : ''
  @sap.quickinfo : 'User field for quantity (length 10.3)'
  FreeDefinedQuantity1 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'User field unit'
  @sap.heading : ''
  @sap.quickinfo : 'User field: Unit for quantity fields'
  @sap.semantics : 'unit-of-measure'
  FreeDefinedQuantity2Unit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedQuantity2Unit'
  @sap.label : 'User field quantity'
  @sap.heading : ''
  @sap.quickinfo : 'User field for quantity (length 10.3)'
  FreeDefinedQuantity2 : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'User field unit'
  @sap.heading : ''
  @sap.quickinfo : 'User field: Unit for value fields'
  @sap.semantics : 'currency-code'
  FreeDefinedAmount1Currency : String(5);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedAmount1Currency'
  @sap.label : 'User field value'
  @sap.heading : ''
  @sap.quickinfo : 'User-defined field for values (length 10,3)'
  FreeDefinedAmount1 : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'User field unit'
  @sap.heading : ''
  @sap.quickinfo : 'User field: Unit for value fields'
  @sap.semantics : 'currency-code'
  FreeDefinedAmount2Currency : String(5);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedAmount2Currency'
  @sap.label : 'User field value'
  @sap.heading : ''
  @sap.quickinfo : 'User-defined field for values (length 10,3)'
  FreeDefinedAmount2 : Decimal(13, 3);
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'User field date'
  @sap.heading : ''
  @sap.quickinfo : 'User field for date'
  FreeDefinedDate1 : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'User field date'
  @sap.heading : ''
  @sap.quickinfo : 'User field for date'
  FreeDefinedDate2 : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'User field indicator'
  @sap.heading : ''
  @sap.quickinfo : 'User-defined field: Indicator for reports'
  FreeDefinedIndicator1 : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'User field indicator'
  @sap.heading : ''
  @sap.quickinfo : 'User-defined field: Indicator for reports'
  FreeDefinedIndicator2 : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.text : 'WorkCenterInternalID_1_Text'
  @sap.label : 'Object ID'
  @sap.heading : ''
  @sap.quickinfo : 'Object ID of the resource'
  WorkCenterInternalID_1 : String(8);
  @sap.label : 'Work Center Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenterInternalID_1_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_WorkCenterType/WorkCenterTypeCode_Text'
  @sap.label : 'Object Type'
  @sap.heading : ''
  @sap.quickinfo : 'Object types of the CIM resource'
  @sap.value.list : 'fixed-values'
  WorkCenterTypeCode_1 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Plant'
  @sap.heading : ''
  @sap.value.list : 'standard'
  Plant_1 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Work Center'
  @sap.heading : ''
  @sap.value.list : 'standard'
  WorkCenter : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material'
  @sap.heading : ''
  @sap.quickinfo : 'Material Number for Order'
  @sap.value.list : 'standard'
  Material : String(40);
  to_Plant : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_Plant {  };
  to_WorkCenterType : Association to ZZ1_I_COMBPRODORDAPI_CDS.I_WorkCenterType {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
entity ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_I_COMBPRODORDAPI {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'ManufacturingOrderText'
  @sap.label : 'Manufacturing Order'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order ID'
  ManufacturingOrder : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Text'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Text'
  ManufacturingOrderText : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Category'
  @sap.heading : ''
  ManufacturingOrderCategory : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Type'
  @sap.heading : ''
  ManufacturingOrderType : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Long Text Exists'
  @sap.heading : ''
  ManufacturingOrderHasLongText : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Long Text Language'
  @sap.heading : ''
  LongTextLanguageCode : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Importance'
  @sap.heading : ''
  @sap.quickinfo : 'Order Importance Code'
  ManufacturingOrderImportance : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Deletion Flag'
  @sap.heading : ''
  IsMarkedForDeletion : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Delivery Completed'
  @sap.heading : ''
  @sap.quickinfo : 'Delivery Completed Indicator'
  IsCompletelyDelivered : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Multiple Items'
  @sap.heading : ''
  @sap.quickinfo : 'Order Has Multiple Items'
  MfgOrderHasMultipleItems : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Collective Order'
  @sap.heading : ''
  @sap.quickinfo : 'Order is Part of Collective Order'
  MfgOrderIsPartOfCollvOrder : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Level'
  @sap.heading : ''
  @sap.quickinfo : 'Level (in multi-level BOM explosions)'
  MfgOrderHierarchyLevel : Decimal(2, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'No automatic costing'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Do not cost automatically'
  OrderIsNotCostedAutomatically : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'No auto. scheduling'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Do not schedule automatically'
  OrdIsNotSchedldAutomatically : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Flexible Processing'
  @sap.heading : ''
  ProdnProcgIsFlexible : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Creation Date'
  @sap.heading : ''
  CreationDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Creation Time'
  @sap.heading : ''
  CreationTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Entered By'
  @sap.heading : ''
  CreatedByUser : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Changed On'
  @sap.heading : ''
  @sap.quickinfo : 'Change Date for Order Master'
  LastChangeDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Changed At'
  @sap.heading : ''
  LastChangeTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Last Changed By'
  @sap.heading : ''
  LastChangedByUser : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material'
  @sap.heading : ''
  @sap.quickinfo : 'Material Number for Order'
  Material : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Product'
  @sap.heading : ''
  @sap.quickinfo : 'Product Number'
  Product : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Storage Location'
  @sap.heading : ''
  StorageLocation : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Batch'
  @sap.heading : ''
  @sap.quickinfo : 'Batch Number'
  Batch : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Goods Recipient'
  @sap.heading : ''
  GoodsRecipientName : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unloading Point'
  @sap.heading : ''
  UnloadingPointName : String(25);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Inventory Usability'
  @sap.heading : ''
  @sap.quickinfo : 'Inventory Usability Code'
  InventoryUsabilityCode : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'GR Processing Time'
  @sap.heading : ''
  @sap.quickinfo : 'Goods Receipt Processing Duration in Days'
  MaterialGoodsReceiptDuration : Decimal(3, 0);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distribution Key'
  @sap.heading : ''
  @sap.quickinfo : 'MRP Distribution Key'
  QuantityDistributionKey : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stock Segment'
  @sap.heading : ''
  StockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Number of Serial Numbers'
  @sap.heading : ''
  NumberOfSerialNumbers : Integer;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'EQC Relevant Order'
  @sap.heading : ''
  @sap.quickinfo : 'Shop Floor Order is Relevant for Extended Quality Checks'
  ExtdQualityCheckIsRequired : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Order Internal ID'
  @sap.heading : ''
  MfgOrderInternalID : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reference Order'
  @sap.heading : ''
  @sap.quickinfo : 'Reference Order Number'
  ReferenceOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Leading Order'
  @sap.heading : ''
  @sap.quickinfo : 'Leading Order in Current Processing'
  LeadingOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Superior Order'
  @sap.heading : ''
  @sap.quickinfo : 'Number of Superior Order'
  SuperiorOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Currency'
  @sap.heading : ''
  @sap.quickinfo : 'Order Currency'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Plant'
  @sap.heading : ''
  ProductionPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Planning Plant'
  @sap.heading : ''
  @sap.quickinfo : 'Planning Plant for an Order'
  PlanningPlant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'MRP Area'
  @sap.heading : ''
  MRPArea : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'MRP Controller'
  @sap.heading : ''
  MRPController : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Supervisor'
  @sap.heading : ''
  ProductionSupervisor : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Scheduling Profile'
  @sap.heading : ''
  ProductionSchedulingProfile : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Planner Group'
  @sap.heading : ''
  @sap.quickinfo : 'Responsible Planner Group or Department'
  ResponsiblePlannerGroup : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Version'
  @sap.heading : ''
  ProductionVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sales Order'
  @sap.heading : ''
  SalesOrder : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sales Order Item'
  @sap.heading : ''
  SalesOrderItem : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'WBS Internal ID'
  @sap.heading : ''
  @sap.quickinfo : 'WBS Element'
  WBSElementInternalID_2 : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Reservation'
  @sap.heading : ''
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  Reservation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Settlement Reservation'
  @sap.heading : ''
  SettlementReservation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmation'
  @sap.heading : ''
  @sap.quickinfo : 'Completion confirmation number for the operation'
  MfgOrderConfirmation : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Number Of Confirmations'
  @sap.heading : ''
  NumberOfMfgOrderConfirmations : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Planned Order'
  @sap.heading : ''
  PlannedOrder : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Capacity Requirement'
  @sap.heading : ''
  @sap.quickinfo : 'ID of the Capacity Requirements Record'
  CapacityRequirement : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Inspection Lot'
  @sap.heading : ''
  @sap.quickinfo : 'Inspection Lot Number'
  InspectionLot : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Change Number'
  @sap.heading : ''
  ChangeNumber : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Revision Level'
  @sap.heading : ''
  MaterialRevisionLevel_2 : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Basic Scheduling Type'
  @sap.heading : ''
  BasicSchedulingType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Forecast Scheduling Type'
  @sap.heading : ''
  ForecastSchedulingType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Object Number'
  @sap.heading : ''
  @sap.quickinfo : 'Object Internal ID'
  ObjectInternalID : String(22);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prod. Configuration'
  @sap.heading : ''
  @sap.quickinfo : 'Product Configuration'
  ProductConfiguration : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Effectivity Parameter Variant'
  @sap.heading : ''
  EffectivityParameterVariant : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Application'
  @sap.heading : ''
  ConditionApplication : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Version'
  @sap.heading : ''
  @sap.quickinfo : 'Version of Available Capacity'
  CapacityActiveVersion : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'No Cap. Requirements'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Do not Create Capacity Requirements'
  CapacityRqmtHasNotToBeCreated : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequence Number'
  @sap.heading : ''
  @sap.quickinfo : 'Sequence Number Order'
  OrderSequenceNumber : String(14);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Split Status'
  @sap.heading : ''
  @sap.quickinfo : 'Status of an Order in a Split Hierarchy'
  MfgOrderSplitStatus : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOO Material'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Operations Material'
  BillOfOperationsMaterial : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOO Type'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Operations Type'
  BillOfOperationsType : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOO Group'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Operations Group'
  BillOfOperationsGroup : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOO Variant'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Operations Variant'
  BillOfOperationsVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Counter'
  @sap.heading : ''
  @sap.quickinfo : 'Internal counter'
  BOOInternalVersionCounter : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOO Application'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Operations Application'
  BillOfOperationsApplication : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOO Usage'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Operations Usage'
  BillOfOperationsUsage : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Routing Version'
  @sap.heading : ''
  BillOfOperationsVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Explosion Date'
  @sap.heading : ''
  @sap.quickinfo : 'Date for Routing Explosion'
  BOOExplosionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Valid From'
  @sap.heading : ''
  @sap.quickinfo : 'Valid-From Date'
  BOOValidityStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Category'
  @sap.heading : ''
  @sap.quickinfo : 'Bill of Material Category Code'
  BillOfMaterialCategory : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Bill Of Material'
  @sap.heading : ''
  BillOfMaterialInternalID : String(8);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Alternative BOM'
  @sap.heading : ''
  BillOfMaterialVariant : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Usage'
  @sap.heading : ''
  BillOfMaterialVariantUsage : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Version'
  @sap.heading : ''
  BillOfMaterialVersion : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'BOM Explosion Date'
  @sap.heading : ''
  @sap.quickinfo : 'Date of BOM Explosion/Routing Transfer'
  BOMExplosionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Valid From'
  @sap.heading : ''
  @sap.quickinfo : 'Valid-From Date'
  BOMValidityStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Business Area'
  @sap.heading : ''
  BusinessArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Company Code'
  @sap.heading : ''
  CompanyCode : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling Area'
  @sap.heading : ''
  ControllingArea : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profit Center'
  @sap.heading : ''
  ProfitCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost Center'
  @sap.heading : ''
  @sap.quickinfo : 'Cost Center for Basic Settlement'
  CostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Respons. Cost Center'
  @sap.heading : ''
  @sap.quickinfo : 'Responsible Cost Center'
  ResponsibleCostCenter : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost Element'
  @sap.heading : ''
  @sap.quickinfo : 'Settlement Cost Element'
  CostElement : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Costing Sheet'
  @sap.heading : ''
  CostingSheet : String(6);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'G/L Account'
  @sap.heading : ''
  @sap.quickinfo : 'G/L Account for Basic Settlement'
  GLAccount : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cost Collector'
  @sap.heading : ''
  @sap.quickinfo : 'Cost Collector for Production Process'
  ProductCostCollector : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Act. Costing Variant'
  @sap.heading : ''
  @sap.quickinfo : 'Costing Variant For Actual Costs'
  ActualCostsCostingVariant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Plnd Costing Variant'
  @sap.heading : ''
  @sap.quickinfo : 'Costing Variant for Planned Costs'
  PlannedCostsCostingVariant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling Object Class'
  @sap.heading : ''
  ControllingObjectClass : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Functional Area'
  @sap.heading : ''
  FunctionalArea : String(16);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Event-Based Posting'
  @sap.heading : ''
  EventBasedPostingMethod : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Scheduling Float Profile'
  @sap.heading : ''
  @sap.quickinfo : 'Scheduling Profile for Floats'
  SchedulingFloatProfile : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Float Before Production'
  @sap.heading : ''
  @sap.quickinfo : 'Float Before Production in Workdays'
  FloatBeforeProductionInWrkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Float After Production'
  @sap.heading : ''
  @sap.quickinfo : 'Float After Production in Workdays'
  FloatAfterProductionInWorkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Release period'
  @sap.heading : ''
  @sap.quickinfo : 'Release period (in days)'
  ReleasePeriodInWorkDays : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Scheduled Dates Changed'
  @sap.heading : ''
  @sap.quickinfo : 'Indicator: Change to Scheduled Dates'
  ChangeToScheduledDatesIsMade : Boolean;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Planned Start Date'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Planned Start Date'
  MfgOrderPlannedStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Planned Start Time'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Planned Start Time'
  MfgOrderPlannedStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Planned End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Planned End Date'
  MfgOrderPlannedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Planned End Time'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Planned End Time'
  MfgOrderPlannedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Planned Release Date'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Planned Release Date'
  MfgOrderPlannedReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Scheduled Start Date'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Scheduled Start Date'
  MfgOrderScheduledStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Scheduled Start Time'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Scheduled Start Time'
  MfgOrderScheduledStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Scheduled End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Scheduled End Date'
  MfgOrderScheduledEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Scheduled End Time'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Scheduled End Time'
  MfgOrderScheduledEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Scheduled Release Date'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Scheduled Release Date'
  MfgOrderScheduledReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Actual Start Date'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Actual Start Date'
  MfgOrderActualStartDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Actual Start Time'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Actual Start Time'
  MfgOrderActualStartTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Actual End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Actual End Date'
  MfgOrderActualEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Actual Release Date'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Actual Release Date'
  MfgOrderActualReleaseDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed End Date'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Confirmed End Date'
  MfgOrderConfirmedEndDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Confirmed End Time'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Confirmed End Time'
  MfgOrderConfirmedEndTime : Time;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Commitment Date'
  @sap.heading : ''
  @sap.quickinfo : 'Total Commitment Date'
  MfgOrderTotalCommitmentDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Technical Completion'
  @sap.heading : ''
  @sap.quickinfo : 'Technical Completion Date'
  MfgOrderActualCompletionDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Actual Delivery Date'
  @sap.heading : ''
  @sap.quickinfo : 'Actual Delivery/Finish Date'
  MfgOrderItemActualDeliveryDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Production Unit'
  @sap.heading : ''
  @sap.quickinfo : 'Production Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Total Quantity'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Planned Total Quantity'
  @sap.filterable : 'false'
  MfgOrderPlannedTotalQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Scrap Quantity'
  @sap.heading : ''
  @sap.quickinfo : 'Manufacturing Order Planned Scrap Quantity'
  @sap.filterable : 'false'
  MfgOrderPlannedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Confirmed Yield'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed Yield Quantity From Order Confirmation'
  @sap.filterable : 'false'
  MfgOrderConfirmedYieldQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Confirmed Scrap'
  @sap.heading : ''
  @sap.quickinfo : 'Confirmed Scrap Quantity From Order Confirmation'
  @sap.filterable : 'false'
  MfgOrderConfirmedScrapQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Confirmed Rework'
  @sap.heading : ''
  @sap.quickinfo : 'Total Confirmed Rework Quantity'
  @sap.filterable : 'false'
  MfgOrderConfirmedReworkQty : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Expected Deviation'
  @sap.heading : ''
  @sap.quickinfo : 'Expected Yield Deviation'
  @sap.filterable : 'false'
  ExpectedDeviationQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'GR Quantity'
  @sap.heading : ''
  @sap.quickinfo : 'Quantity of Goods Received for the Order Item'
  @sap.filterable : 'false'
  ActualDeliveredQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Master Prod. Ord.'
  @sap.heading : ''
  @sap.quickinfo : 'Master Production Order Number'
  MasterProductionOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Season Year'
  @sap.heading : ''
  ProductSeasonYear : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Season'
  @sap.heading : ''
  ProductSeason : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Collection'
  @sap.heading : ''
  @sap.quickinfo : 'Fashion Collection'
  ProductCollection : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Theme'
  @sap.heading : ''
  @sap.quickinfo : 'Fashion Theme'
  ProductTheme : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Master Prod. Ord.'
  @sap.heading : ''
  @sap.quickinfo : 'Master Production Order Number'
  FshMprodOrd : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Combined Prod. Order'
  @sap.heading : ''
  @sap.quickinfo : 'Combined Master Production Order'
  CprodOrd : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Master Prod. Ord.'
  @sap.heading : ''
  @sap.quickinfo : 'Master Production Order Number'
  MasterProductionOrder_1 : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Master Prod. Ord.'
  @sap.heading : ''
  @sap.quickinfo : 'Master Production Order Number'
  FshMprodOrd_1 : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Requirement type'
  @sap.heading : ''
  requirementtype : String(2);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material'
  @sap.heading : ''
  @sap.quickinfo : 'Material Number'
  Material_1 : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Product Description'
  @sap.heading : ''
  ProductDescription : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalDeliveryQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalRequiredQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalQuantityInEntryUnit : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  TotalWithdrawnQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : ''
  @sap.filterable : 'false'
  TotalAllocQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unit of Entry'
  @sap.heading : ''
  @sap.quickinfo : 'Unit of entry'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  to_ZZ1_C_COMBINEDPRODORDER : Association to ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_COMBINEDPRODORDER {  };
  to_ZZ1_C_COMBORDER_COMP : Association to many ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_COMBORDER_COMP {  };
  to_ZZ1_C_MASTERORDER_COMP : Association to many ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MASTERORDER_COMP {  };
  to_ZZ1_C_MASTERORDER_COMP_1 : Association to many ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MASTERORDER_COMP {  };
  to_ZZ1_C_MASTERPRODORDER : Association to ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MASTERPRODORDER {  };
  to_ZZ1_C_MFG_COMBINEDOPE : Association to many ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_COMBINEDOPE {  };
  to_ZZ1_C_MFG_MASTEROPE : Association to many ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_MASTEROPE {  };
  to_ZZ1_C_MFG_MASTEROPE_1 : Association to many ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_MASTEROPE {  };
  to_ZZ1_C_MFG_OrderComp : Association to many ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_OrderComp {  };
  to_ZZ1_C_MFG_ORDEROPE : Association to many ZZ1_I_COMBPRODORDAPI_CDS.ZZ1_C_MFG_ORDEROPE {  };
};

