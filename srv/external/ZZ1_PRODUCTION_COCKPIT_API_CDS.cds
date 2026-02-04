/* checksum : 07640fc922957700ea32ca0c75aea8d4 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZZ1_PRODUCTION_COCKPIT_API_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
@sap.label : 'Indirizzo'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.I_Address {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice indirizzo'
  key AddressID : String(10) not null;
  @sap.label : 'UUID indirizzo'
  @sap.quickinfo : 'UUID utilizzato nell''indirizzo'
  AddressUUID : UUID;
  @sap.label : 'c/o'
  @sap.quickinfo : 'Presso...'
  CareOfName : String(40);
  @sap.label : 'Via 5'
  AdditionalStreetSuffixName : String(40);
  @sap.label : 'Chiave lingua'
  CorrespondenceLanguage : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mod. di comun.'
  @sap.quickinfo : 'Mod. di comunicazione (chiave) (gestione indirizzi centrale)'
  PrfrdCommMediumType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Casella postale'
  POBox : String(10);
  @sap.label : 'Cas. post. senza n.'
  @sap.quickinfo : 'Flag ''Indicazione casella postale senza numero'''
  POBoxIsWithoutNumber : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'CAP casella postale'
  @sap.quickinfo : 'Codice di avviamento postale della casella postale'
  POBoxPostalCode : String(10);
  @sap.label : 'Staz. cas. postale'
  @sap.quickinfo : 'Stazione casella postale (PO Box Lobby)'
  POBoxLobbyName : String(40);
  @sap.label : 'Città cas.post.'
  @sap.quickinfo : 'Città della casella postale'
  POBoxDeviatingCityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reg. per cas. post.'
  @sap.quickinfo : 'Regione per cas.post.(stato federale, land, provincia, ...)'
  POBoxDeviatingRegion : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Paese/reg. cas.post.'
  @sap.quickinfo : 'Paese/regione rel. alla casella postale'
  POBoxDeviatingCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tp. serv. recap.'
  @sap.quickinfo : 'Tipo di servizio di recapito'
  DeliveryServiceTypeCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'N. serv. recapito'
  @sap.quickinfo : 'Numero del servizio di recapito'
  DeliveryServiceNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fuso orario'
  @sap.quickinfo : 'Fuso orario dell''indirizzo'
  AddressTimeZone : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stato ctr./fileCittà'
  @sap.quickinfo : 'Stato di controllo file città'
  CityFileTestStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Impossibilità recap.'
  @sap.quickinfo : 'Flag per impossibilità di recapito per indirizzo via'
  AddressStreetUnusable : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Impossibilità recap.'
  @sap.quickinfo : 'Flag per impossibilità di recapito per ind.casella postale'
  AddressPostBoxUnusable : String(4);
  @sap.label : 'Nome completo'
  @sap.quickinfo : 'Nome completo di un partner(Bus.Partner, utà org., ind.doc.)'
  FullName : String(80);
  @sap.label : 'Località'
  CityName : String(40);
  @sap.label : 'Frazione'
  District : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'N. località'
  @sap.quickinfo : 'Codifica località per file località e vie'
  CityCode : String(12);
  @sap.label : 'Domicilio altern.'
  @sap.quickinfo : 'Domicilio (diverso dalla località postale)'
  HomeCityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CAP'
  @sap.quickinfo : 'Codice di avviamento postale della città'
  PostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CAP azienda'
  @sap.quickinfo : 'Codice di avviamento postale dell''azienda'
  CompanyPostalCode : String(10);
  @sap.label : 'Via'
  StreetName : String(60);
  @sap.label : 'Via 2'
  StreetPrefixName : String(40);
  @sap.label : 'Via 3'
  AdditionalStreetPrefixName : String(40);
  @sap.label : 'Via 4'
  StreetSuffixName : String(40);
  @sap.label : 'Numero civico'
  HouseNumber : String(10);
  @sap.label : 'Precisazione'
  @sap.quickinfo : 'Precisazione relativa al numero civico'
  HouseNumberSupplementText : String(10);
  @sap.label : 'Sigla edificio'
  @sap.quickinfo : 'Edificio (numero o sigla)'
  Building : String(20);
  @sap.label : 'Piano'
  @sap.quickinfo : 'Piano dell''edificio'
  Floor : String(10);
  @sap.label : 'Numero aula'
  @sap.quickinfo : 'Numero abitazione, appartamento o aula'
  RoomNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave paese/regione'
  Country : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Regione'
  @sap.quickinfo : 'Regione (stato federale, stato federato, provincia, contea)'
  Region : String(3);
  @sap.label : 'Distretto'
  @sap.quickinfo : 'Distretto (US: County)'
  County : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cd. distr.'
  @sap.quickinfo : 'Codice distretto per distretto'
  CountyCode : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice città'
  @sap.quickinfo : 'Codice città per città'
  TownshipCode : String(8);
  @sap.label : 'Città'
  TownshipName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chiave intestazione'
  FormOfAddress : String(4);
  @sap.label : 'Nome'
  @sap.quickinfo : 'Nome 1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Nome 2'
  BusinessPartnerName2 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Versione indirizzo'
  @sap.quickinfo : 'Codice versione per indirizzi internazionali'
  Nation : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telefono'
  @sap.quickinfo : 'Primo numero di telefono: prefisso + numero'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'Primo numero fax: prefisso + collegamento'
  FaxNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criterio ricerca 1'
  @sap.quickinfo : 'Criterio di ricerca 1'
  SearchTerm1 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criterio ricerca 2'
  @sap.quickinfo : 'Criterio di ricerca 2'
  SearchTerm2 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Via'
  @sap.quickinfo : 'Nome via a lettere maiuscole per l''help di ricerca'
  StreetSearch : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Città'
  @sap.quickinfo : 'Nome località a lettere maiuscole per l''help di ricerca'
  CitySearch : String(25);
  @sap.label : 'Nome 3'
  BusinessPartnerName3 : String(40);
  @sap.label : 'Nome 4'
  BusinessPartnerName4 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sede fiscale'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Zona di trasporto'
  @sap.quickinfo : 'Zona di trasp. in cui e da cui le merci vengono consegnate'
  TransportZone : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero località'
  @sap.quickinfo : 'Codifica città relativa al codice di avv. post. (file città)'
  AddressCityPostBoxCode : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Numero persona'
  Person : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Cliente'
@sap.value.list : 'true'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.I_Customer_VH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'BPCustomerName'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Codice cliente'
  key Customer : String(10) not null;
  @sap.label : 'Nome cliente 1'
  @sap.quickinfo : 'Nome 1'
  OrganizationBPName1 : String(35);
  @sap.label : 'Nome business partner 1'
  @sap.quickinfo : 'Nome 1'
  BusinessPartnerName1 : String(40);
  @sap.label : 'Nome cliente 2'
  @sap.quickinfo : 'Nome 2'
  OrganizationBPName2 : String(35);
  @sap.label : 'Nome business partner 2'
  @sap.quickinfo : 'Nome 2'
  BusinessPartnerName2 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Paese/Regione'
  @sap.quickinfo : 'Chiave paese/regione'
  Country : String(3);
  @sap.label : 'Città'
  CityName : String(35);
  @sap.label : 'Indirizzo business partner - città'
  @sap.quickinfo : 'Località'
  BPAddrCityName : String(40);
  @sap.label : 'Via'
  @sap.quickinfo : 'Via e numero civico'
  StreetName : String(35);
  @sap.label : 'Indirizzo business partner - via'
  @sap.quickinfo : 'Via'
  BPAddrStreetName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Codice di avviamento postale'
  PostalCode : String(10);
  @sap.label : 'Nome del cliente'
  CustomerName : String(80);
  @sap.label : 'Nome del cliente business partner'
  @sap.quickinfo : 'Nome del cliente'
  BPCustomerName : String(81);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gruppo conti'
  @sap.quickinfo : 'Gruppo conti cliente'
  CustomerAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorizzazione'
  @sap.quickinfo : 'Gruppo di autorizzazione'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Indicatore scopo raggiunto'
  @sap.quickinfo : 'Indicatore per obiettivo commerciale raggiunto'
  IsBusinessPurposeCompleted : String(1);
  @sap.label : 'Concorrente'
  @sap.quickinfo : 'Codice: concorrente'
  IsCompetitor : Boolean;
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
@sap.label : 'Materiale'
@sap.value.list : 'true'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.I_MaterialStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Material_Text'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Codice materiale'
  key Material : String(40) not null;
  @sap.label : 'Descr. materiale'
  @sap.quickinfo : 'Descrizione materiale'
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
@sap.label : 'Divisione'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.I_Plant {
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
  @sap.value.list : 'standard'
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
  to_Address : Association to ZZ1_PRODUCTION_COCKPIT_API_CDS.I_Address {  };
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
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.I_Supplier_VH {
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
@sap.content.version : '1'
@sap.label : 'Tipo di centro di lavoro'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.I_WorkCenterType {
  @sap.display.format : 'UpperCase'
  @sap.text : 'WorkCenterTypeCode_Text'
  @sap.label : 'Tipo di risorsa'
  @sap.quickinfo : 'Tipo di risorsa di produzione'
  key WorkCenterTypeCode : String(2) not null;
  @sap.label : 'Nome tipo di risorsa'
  @sap.quickinfo : 'Nome tipo di risorsa di produzione'
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
@sap.label : 'Centro di lavoro per chiave semantica'
@sap.value.list : 'true'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.I_WrkCtrBySemanticKeyStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'WorkCenter_Text'
  @sap.label : 'Centro di lavoro'
  key WorkCenter : String(8) not null;
  @sap.label : 'Testo centro lavoro'
  @sap.quickinfo : 'Testo centro di lavoro'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenter_Text : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'ID oggetto'
  @sap.quickinfo : 'ID oggetto della risorsa'
  WorkCenterInternalID : String(8);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'ZZ1_C_COMBINEDPRODORDER'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_COMBINEDPRODORDER {
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
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'CreationDate'
  CreationDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  Supplier : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nome'
  @sap.quickinfo : 'Nome 1'
  OrganizationBPName1 : String(35);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'ZZ1_C_COMBORDER_COMP'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_COMBORDER_COMP {
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
  @sap.quickinfo : 'Prodotto configurabile valido per tutte le divisioni'
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
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Magazzino'
  ProductionInvtryManagedLoc : String(1);
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
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'ParentStockSegment'
  @sap.quickinfo : 'Segmento di stock'
  ParentStockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'RequirementSegment'
  @sap.quickinfo : 'Segmento fabbisogno'
  RequirementSegment : String(40);
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
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'MRPController'
  MRPController : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo lunghezza 50'
  @sap.quickinfo : 'Testo di lunghezza 50'
  REASON : String(50);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo lunghezza 50'
  @sap.quickinfo : 'Testo di lunghezza 50'
  NOTE : String(50);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'ZZ1_C_MASTERORDER_COMP'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_MASTERORDER_COMP {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  FshMprodOrd : String(12);
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
  @sap.quickinfo : 'Prodotto configurabile valido per tutte le divisioni'
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
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Magazzino'
  ProductionInvtryManagedLoc : String(1);
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
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'ParentStockSegment'
  @sap.quickinfo : 'Segmento di stock'
  ParentStockSegment : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'RequirementSegment'
  @sap.quickinfo : 'Segmento fabbisogno'
  RequirementSegment : String(40);
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
  @sap.required.in.filter : 'false'
  @sap.label : 'Descrizione prodotto'
  ProductDescription_1 : String(40);
  @sap.aggregation.role : 'measure'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'TotalAllocQty'
  @sap.filterable : 'false'
  TotalAllocQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'TotalConfdQtyForATPInBaseUoM'
  TotalConfdQtyForATPInBaseUoM : Decimal(15, 3);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'TotalWithdrawnQuantity'
  TotalWithdrawnQuantity : Decimal(13, 3);
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
  @sap.label : 'MRPController'
  MRPController : String(1);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo lunghezza 50'
  @sap.quickinfo : 'Testo di lunghezza 50'
  REASON : String(50);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo lunghezza 50'
  @sap.quickinfo : 'Testo di lunghezza 50'
  NOTE : String(50);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'ZZ1_C_MASTERPRODORDER'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_MASTERPRODORDER {
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
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'CreationDate'
  CreationDate : Date;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  Supplier : String(10);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nome'
  @sap.quickinfo : 'Nome 1'
  OrganizationBPName1 : String(35);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prod Order Personalization'
  @sap.quickinfo : 'Production Order Personalization'
  OrderPersonalization : String(20);
  @sap.aggregation.role : 'dimension'
  @sap.required.in.filter : 'false'
  @sap.label : 'ZZ1_SedaptaPRDPriority'
  SedaptaPriority : String(15);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'ZZ1_C_MFG_COMBINEDOPER_SUM'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_MFG_COMBINEDOPER_SUM {
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. prod. combinato'
  @sap.quickinfo : 'Ordine prod. principale comb.'
  key CprodOrd : String(12) not null;
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
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  key ManufacturingOrderOperation_2 : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sotto-operazione'
  @sap.quickinfo : 'Sotto-operazione dell''ordine di produzione'
  key ManufacturingOrderSubOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  key ManufacturingOrdSubOperation_2 : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Numero operazione'
  key MfgOrderOperationOrSubOp : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  key MfgOrderOperationOrSubOp_2 : String(4) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Codice fase'
  key MfgOrderOperationIsPhase : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione superiore'
  key MfgOrderPhaseSuperiorOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione superiore'
  key SuperiorOperation_2 : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria di ordine'
  @sap.quickinfo : 'Categoria ordine di produzione'
  key ManufacturingOrderCategory : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile di produzione'
  key ProductionSupervisor : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile MRP'
  key MRPController : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gr. resp. pian.'
  @sap.quickinfo : 'Gruppo di responsabili della pianificazione o reparto'
  key ResponsiblePlannerGroup : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Config. prodotto'
  @sap.quickinfo : 'Configurazione prodotto'
  key ProductConfiguration : String(18) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lotto di controllo'
  @sap.quickinfo : 'Numero lotto di controllo'
  key InspectionLot : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Importanza ordine'
  @sap.quickinfo : 'Codice importanza ordine'
  key ManufacturingOrderImportance : String(1) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo operazione'
  @sap.quickinfo : 'Testo operazione ordine di produzione'
  key MfgOrderOperationText : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID testo standard operazione'
  @sap.quickinfo : 'ID interno testo standard operazione'
  key OperationStandardTextCode : String(7) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Esiste testo esteso'
  @sap.quickinfo : 'Codice di ''esistenza testo esteso'''
  key OperationHasLongText : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiave lingua'
  key Language : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Flag di canc.'
  @sap.quickinfo : 'Flag di cancellazione'
  key OperationIsToBeDeleted : Boolean not null;
  @odata.Type : 'Edm.Byte'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di capacità'
  @sap.quickinfo : 'Numero delle capacità richieste'
  key NumberOfCapacities : Integer not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'N. bolle conf.'
  @sap.quickinfo : 'Numero bolle di conferma'
  key NumberOfConfirmationSlips : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Priorità'
  key OperationImportance : String(1) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nodo oper. sovraord.'
  @sap.quickinfo : 'Numero nodo dell''operazione sovraordinata'
  key SuperiorOperationInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Int. centro lav.'
  @sap.quickinfo : 'ID interno centro di lavoro'
  key WorkCenterInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo centro lavoro'
  @sap.quickinfo : 'Tipo di centro di lavoro'
  key WorkCenterTypeCode : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di centro di lavoro'
  key WorkCenterTypeCode_2 : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profilo di controllo'
  @sap.quickinfo : 'Profilo di controllo operazione'
  key OperationControlProfile : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Dest. ricetta contr.'
  @sap.quickinfo : 'Destinatario ricetta di controllo'
  key ControlRecipeDestination : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'OperationConfirmation'
  key OperationConfirmation : String(1) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'NumberOfOperationConfirmations'
  key NumberOfOperationConfirmations : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Calendario fabbrica'
  @sap.quickinfo : 'ID calendario di fabbrica'
  key FactoryCalendar : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'CapacityRequirement'
  key CapacityRequirement : String(1) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'CapacityRequirementItem'
  key CapacityRequirementItem : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di modifica'
  key ChangeNumber : String(12) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'ObjectInternalID'
  key ObjectInternalID : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero fabbisogno'
  key OperationTrackingNumber : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo DO'
  @sap.quickinfo : 'Tipo distinta delle operazioni'
  key BillOfOperationsType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo'
  @sap.quickinfo : 'Chiave per gruppo di cicli'
  key BillOfOperationsGroup : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cont. gruppi cicli'
  @sap.quickinfo : 'Contatore gruppi cicli'
  key BillOfOperationsVariant : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequenza distinta delle operazioni'
  key BillOfOperationsSequence : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nodo ciclo'
  @sap.quickinfo : 'Numero del nodo ciclo'
  key BOOOperationInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Vers. ciclo lavoro'
  @sap.quickinfo : 'Versione ciclo di lavoro'
  key BillOfOperationsVersion : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria Db'
  @sap.quickinfo : 'Codice categoria distinta base'
  key BillOfMaterialCategory : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base'
  key BillOfMaterialInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base'
  key BillOfMaterialInternalID_2 : String(8) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione Db'
  @sap.quickinfo : 'Pos. distinta base'
  key BillOfMaterialItemNodeNumber : String(8) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore interno'
  key BOMItemNodeCount : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lav. esterna'
  @sap.quickinfo : 'Indicatore: operazione elab. esterna con lavorazione esterna'
  key ExtProcgOperationHasSubcontrg : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Organizzazione acquisti'
  key PurchasingOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo acquisti'
  @sap.quickinfo : 'Gruppo acquisti per attività di elaborazione esterna'
  key PurchasingGroup : String(3) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Richiesta d''acquisto'
  key PurchaseRequisition : String(1) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione della richiesta d''acquisto'
  key PurchaseRequisitionItem : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. acquisto'
  @sap.quickinfo : 'Numero del documento acquisti'
  key PurchaseOrder : String(10) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. ord. acq.'
  key PurchaseOrderItem : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Record info'
  @sap.quickinfo : 'Record info acquisti'
  key PurchasingInfoRecord : String(10) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Il prezzo è fisso'
  @sap.quickinfo : 'I dati del record info acquisti sono fissi'
  key PurgInfoRecdDataIsFixed : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria record info acquisti'
  key PurchasingInfoRecordCategory : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  key Supplier : String(10) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Destin. merci'
  key GoodsRecipientName : String(12) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Punto di scarico'
  key UnloadingPointName : String(25) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo merci'
  key MaterialGroup : String(9) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Chiave divisa'
  @sap.semantics : 'currency-code'
  key OpExternalProcessingCurrency : String(5) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'NumberOfOperationPriceUnits'
  @sap.quickinfo : 'Quantità unità di prezzo materiale'
  key NumberOfOperationPriceUnits : Decimal(5, 0) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Società'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Settore contabile'
  key BusinessArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profit center'
  key ProfitCenter : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'CdC richiedente'
  @sap.quickinfo : 'Centro di costo richiedente'
  key RequestingCostCenter : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Voce di costo'
  key CostElement : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Variante CCST'
  @sap.quickinfo : 'Variante di calcolo costi'
  key CostingVariant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Schema CCST'
  key CostingSheet : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'N. CCST'
  @sap.quickinfo : 'N. calcolo costi per CCST senza struttura quantitativa'
  key CostEstimate : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisa oggetto'
  @sap.quickinfo : 'Divisa oggetto operazione network'
  @sap.semantics : 'currency-code'
  key ControllingObjectCurrency : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Classe dell''oggetto CO'
  key ControllingObjectClass : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Area funzionale'
  key FunctionalArea : String(16) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sede fiscale'
  key TaxJurisdiction : String(15) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Voce retr. dip.'
  @sap.quickinfo : 'Voce retributiva dipendente'
  key EmployeeWageType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gr. retr. dipendente'
  @sap.quickinfo : 'Gruppo retributivo dipendente'
  key EmployeeWageGroup : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Idoneità dipendente'
  key EmployeeSuitability : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'N. mod. ril.tempi'
  @sap.quickinfo : 'Numero moduli di rilevazione tempi'
  key NumberOfTimeTickets : Decimal(3, 0) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ris. um.'
  @sap.quickinfo : 'Codice identificativo dipendente'
  key Personnel : String(8) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero dipendenti'
  key NumberOfEmployees : Decimal(5, 2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cat. gr. attrezz.'
  @sap.quickinfo : 'Categoria gruppo attr. operazione'
  key OperationSetupGroupCategory : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo attrezzaggio'
  @sap.quickinfo : 'Gruppo attr. operazione'
  key OperationSetupGroup : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo attrezzaggio'
  @sap.quickinfo : 'Tipo attr. operazione'
  key OperationSetupType : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Sovrapposiz.obblig.'
  @sap.quickinfo : 'Sovrapposizione obbligatoria'
  key OperationOverlappingIsRequired : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Sovrapp. facoltativa'
  @sap.quickinfo : 'Sovrapposizione facoltativa'
  key OperationOverlappingIsPossible : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prod.a flusso cont.'
  key OperationsIsAlwaysOverlapping : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Sudd. obbligatoria'
  @sap.quickinfo : 'Suddivisione obbligatoria'
  key OperationSplitIsRequired : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'N. max suddivisioni'
  key MaximumNumberOfSplits : Decimal(3, 0) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Strat.riduzione'
  @sap.quickinfo : 'Strategia riduzione lead time operazione'
  key LeadTimeReductionStrategy : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Livello di riduzione'
  @sap.quickinfo : 'Livello di riduzione che riduce lead time dell''operazione'
  key OpSchedldReductionLevel : String(1) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine prod. princ.'
  key FshMprodOrd : String(1) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.text : 'WorkCenterInternalID_1_Text'
  @sap.label : 'ID oggetto'
  @sap.quickinfo : 'ID oggetto della risorsa'
  WorkCenterInternalID_1 : String(8);
  @sap.label : 'Testo centro lavoro'
  @sap.quickinfo : 'Testo centro di lavoro'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenterInternalID_1_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_WorkCenterType/WorkCenterTypeCode_Text'
  @sap.label : 'Tipo oggetto'
  @sap.quickinfo : 'CIM Resource Object Type'
  @sap.value.list : 'fixed-values'
  WorkCenterTypeCode_1 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Centro di lavoro'
  @sap.value.list : 'standard'
  WorkCenter : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Divisione'
  @sap.value.list : 'standard'
  Plant_1 : String(4);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOpPlannedTotalQuantity'
  SumOpPlannedTotalQuantity : Decimal(13, 3);
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
  @sap.label : 'SumOpTotalConfirmedReworkQty'
  SumOpTotalConfirmedReworkQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di produzione'
  @sap.quickinfo : 'Unità di misura di produzione'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'OperationIsDeleted'
  OperationIsDeleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'PC val.per tt.div.'
  @sap.quickinfo : 'Prodotto configurabile valido per tutte le divisioni'
  CrossPlantConfigurableProduct : String(40);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpExternalProcessingCurrency'
  @sap.label : 'OpExternalProcessingPrice'
  OpExternalProcessingPrice : Decimal(12, 3);
  to_Plant : Association to ZZ1_PRODUCTION_COCKPIT_API_CDS.I_Plant {  };
  to_WorkCenterType : Association to ZZ1_PRODUCTION_COCKPIT_API_CDS.I_WorkCenterType {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'ZZ1_C_MFG_MASTEROPER_SUM'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_MFG_MASTEROPER_SUM {
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  key MasterProductionOrder : String(12) not null;
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
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  key ManufacturingOrderOperation_2 : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sotto-operazione'
  @sap.quickinfo : 'Sotto-operazione dell''ordine di produzione'
  key ManufacturingOrderSubOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  key ManufacturingOrdSubOperation_2 : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione'
  @sap.quickinfo : 'Numero operazione'
  key MfgOrderOperationOrSubOp : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione o fase'
  @sap.quickinfo : 'Numero operazione o fase'
  key MfgOrderOperationOrSubOp_2 : String(4) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Codice fase'
  key MfgOrderOperationIsPhase : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione superiore'
  key MfgOrderPhaseSuperiorOperation : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Operazione superiore'
  key SuperiorOperation_2 : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria di ordine'
  @sap.quickinfo : 'Categoria ordine di produzione'
  key ManufacturingOrderCategory : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile di produzione'
  key ProductionSupervisor : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Responsabile MRP'
  key MRPController : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gr. resp. pian.'
  @sap.quickinfo : 'Gruppo di responsabili della pianificazione o reparto'
  key ResponsiblePlannerGroup : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Config. prodotto'
  @sap.quickinfo : 'Configurazione prodotto'
  key ProductConfiguration : String(18) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lotto di controllo'
  @sap.quickinfo : 'Numero lotto di controllo'
  key InspectionLot : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Importanza ordine'
  @sap.quickinfo : 'Codice importanza ordine'
  key ManufacturingOrderImportance : String(1) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo operazione'
  @sap.quickinfo : 'Testo operazione ordine di produzione'
  key MfgOrderOperationText : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID testo standard operazione'
  @sap.quickinfo : 'ID interno testo standard operazione'
  key OperationStandardTextCode : String(7) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Esiste testo esteso'
  @sap.quickinfo : 'Codice di ''esistenza testo esteso'''
  key OperationHasLongText : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Chiave lingua'
  key Language : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Flag di canc.'
  @sap.quickinfo : 'Flag di cancellazione'
  key OperationIsToBeDeleted : Boolean not null;
  @odata.Type : 'Edm.Byte'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di capacità'
  @sap.quickinfo : 'Numero delle capacità richieste'
  key NumberOfCapacities : Integer not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'N. bolle conf.'
  @sap.quickinfo : 'Numero bolle di conferma'
  key NumberOfConfirmationSlips : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Priorità'
  key OperationImportance : String(1) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nodo oper. sovraord.'
  @sap.quickinfo : 'Numero nodo dell''operazione sovraordinata'
  key SuperiorOperationInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisione'
  key Plant : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Int. centro lav.'
  @sap.quickinfo : 'ID interno centro di lavoro'
  key WorkCenterInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo centro lavoro'
  @sap.quickinfo : 'Tipo di centro di lavoro'
  key WorkCenterTypeCode : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di centro di lavoro'
  key WorkCenterTypeCode_2 : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profilo di controllo'
  @sap.quickinfo : 'Profilo di controllo operazione'
  key OperationControlProfile : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Dest. ricetta contr.'
  @sap.quickinfo : 'Destinatario ricetta di controllo'
  key ControlRecipeDestination : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'OperationConfirmation'
  key OperationConfirmation : String(1) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'NumberOfOperationConfirmations'
  key NumberOfOperationConfirmations : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Calendario fabbrica'
  @sap.quickinfo : 'ID calendario di fabbrica'
  key FactoryCalendar : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'CapacityRequirement'
  key CapacityRequirement : String(1) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'CapacityRequirementItem'
  key CapacityRequirementItem : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di modifica'
  key ChangeNumber : String(12) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'ObjectInternalID'
  key ObjectInternalID : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero fabbisogno'
  key OperationTrackingNumber : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo DO'
  @sap.quickinfo : 'Tipo distinta delle operazioni'
  key BillOfOperationsType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo'
  @sap.quickinfo : 'Chiave per gruppo di cicli'
  key BillOfOperationsGroup : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cont. gruppi cicli'
  @sap.quickinfo : 'Contatore gruppi cicli'
  key BillOfOperationsVariant : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sequenza distinta delle operazioni'
  key BillOfOperationsSequence : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Nodo ciclo'
  @sap.quickinfo : 'Numero del nodo ciclo'
  key BOOOperationInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Vers. ciclo lavoro'
  @sap.quickinfo : 'Versione ciclo di lavoro'
  key BillOfOperationsVersion : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria Db'
  @sap.quickinfo : 'Codice categoria distinta base'
  key BillOfMaterialCategory : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base'
  key BillOfMaterialInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Distinta base'
  key BillOfMaterialInternalID_2 : String(8) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione Db'
  @sap.quickinfo : 'Pos. distinta base'
  key BillOfMaterialItemNodeNumber : String(8) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore interno'
  key BOMItemNodeCount : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Lav. esterna'
  @sap.quickinfo : 'Indicatore: operazione elab. esterna con lavorazione esterna'
  key ExtProcgOperationHasSubcontrg : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Organizzazione acquisti'
  key PurchasingOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo acquisti'
  @sap.quickinfo : 'Gruppo acquisti per attività di elaborazione esterna'
  key PurchasingGroup : String(3) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Richiesta d''acquisto'
  key PurchaseRequisition : String(1) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione della richiesta d''acquisto'
  key PurchaseRequisitionItem : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. acquisto'
  @sap.quickinfo : 'Numero del documento acquisti'
  key PurchaseOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. ord. acq.'
  @sap.quickinfo : 'Numero posizione documento d''acquisto'
  key PurchaseOrderItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Record info'
  @sap.quickinfo : 'Record info acquisti'
  key PurchasingInfoRecord : String(10) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Il prezzo è fisso'
  @sap.quickinfo : 'I dati del record info acquisti sono fissi'
  key PurgInfoRecdDataIsFixed : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Categoria record info acquisti'
  key PurchasingInfoRecordCategory : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  key Supplier : String(10) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Destin. merci'
  key GoodsRecipientName : String(12) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Punto di scarico'
  key UnloadingPointName : String(25) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo merci'
  key MaterialGroup : String(9) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisa'
  @sap.quickinfo : 'Chiave divisa'
  @sap.semantics : 'currency-code'
  key OpExternalProcessingCurrency : String(5) not null;
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpExternalProcessingCurrency'
  @sap.label : 'NumberOfOperationPriceUnits'
  @sap.quickinfo : 'Quantità unità di prezzo materiale'
  key NumberOfOperationPriceUnits : Decimal(5, 0) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Società'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Settore contabile'
  key BusinessArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Controlling area'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Profit center'
  key ProfitCenter : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'CdC richiedente'
  @sap.quickinfo : 'Centro di costo richiedente'
  key RequestingCostCenter : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Voce di costo'
  key CostElement : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Variante CCST'
  @sap.quickinfo : 'Variante di calcolo costi'
  key CostingVariant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Schema CCST'
  key CostingSheet : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'N. CCST'
  @sap.quickinfo : 'N. calcolo costi per CCST senza struttura quantitativa'
  key CostEstimate : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisa oggetto'
  @sap.quickinfo : 'Divisa oggetto operazione network'
  @sap.semantics : 'currency-code'
  key ControllingObjectCurrency : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Classe dell''oggetto CO'
  key ControllingObjectClass : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Area funzionale'
  key FunctionalArea : String(16) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Sede fiscale'
  key TaxJurisdiction : String(15) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Voce retr. dip.'
  @sap.quickinfo : 'Voce retributiva dipendente'
  key EmployeeWageType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gr. retr. dipendente'
  @sap.quickinfo : 'Gruppo retributivo dipendente'
  key EmployeeWageGroup : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Idoneità dipendente'
  key EmployeeSuitability : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'N. mod. ril.tempi'
  @sap.quickinfo : 'Numero moduli di rilevazione tempi'
  key NumberOfTimeTickets : Decimal(3, 0) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ris. um.'
  @sap.quickinfo : 'Codice identificativo dipendente'
  key Personnel : String(8) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero dipendenti'
  key NumberOfEmployees : Decimal(5, 2) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cat. gr. attrezz.'
  @sap.quickinfo : 'Categoria gruppo attr. operazione'
  key OperationSetupGroupCategory : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Gruppo attrezzaggio'
  @sap.quickinfo : 'Gruppo attr. operazione'
  key OperationSetupGroup : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo attrezzaggio'
  @sap.quickinfo : 'Tipo attr. operazione'
  key OperationSetupType : String(2) not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Sovrapposiz.obblig.'
  @sap.quickinfo : 'Sovrapposizione obbligatoria'
  key OperationOverlappingIsRequired : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Sovrapp. facoltativa'
  @sap.quickinfo : 'Sovrapposizione facoltativa'
  key OperationOverlappingIsPossible : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prod.a flusso cont.'
  key OperationsIsAlwaysOverlapping : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'Sudd. obbligatoria'
  @sap.quickinfo : 'Suddivisione obbligatoria'
  key OperationSplitIsRequired : Boolean not null;
  @sap.required.in.filter : 'false'
  @sap.label : 'N. max suddivisioni'
  key MaximumNumberOfSplits : Decimal(3, 0) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Strat.riduzione'
  @sap.quickinfo : 'Strategia riduzione lead time operazione'
  key LeadTimeReductionStrategy : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Livello di riduzione'
  @sap.quickinfo : 'Livello di riduzione che riduce lead time dell''operazione'
  key OpSchedldReductionLevel : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. prod. combinato'
  @sap.quickinfo : 'Ordine prod. principale comb.'
  key CprodOrd : String(12) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.text : 'WorkCenterInternalID_1_Text'
  @sap.label : 'ID oggetto'
  @sap.quickinfo : 'ID oggetto della risorsa'
  WorkCenterInternalID_1 : String(8);
  @sap.label : 'Testo centro lavoro'
  @sap.quickinfo : 'Testo centro di lavoro'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenterInternalID_1_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_WorkCenterType/WorkCenterTypeCode_Text'
  @sap.label : 'Tipo oggetto'
  @sap.quickinfo : 'CIM Resource Object Type'
  @sap.value.list : 'fixed-values'
  WorkCenterTypeCode_1 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Centro di lavoro'
  @sap.value.list : 'standard'
  WorkCenter : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Divisione'
  @sap.value.list : 'standard'
  Plant_1 : String(4);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'SumOpPlannedTotalQuantity'
  SumOpPlannedTotalQuantity : Decimal(13, 3);
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
  @sap.label : 'SumOpTotalConfirmedReworkQty'
  SumOpTotalConfirmedReworkQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di produzione'
  @sap.quickinfo : 'Unità di misura di produzione'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'OperationIsDeleted'
  OperationIsDeleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'PC val.per tt.div.'
  @sap.quickinfo : 'Prodotto configurabile valido per tutte le divisioni'
  CrossPlantConfigurableProduct : String(40);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OpExternalProcessingCurrency'
  @sap.label : 'OpExternalProcessingPrice'
  OpExternalProcessingPrice : Decimal(12, 3);
  to_Plant : Association to ZZ1_PRODUCTION_COCKPIT_API_CDS.I_Plant {  };
  to_WorkCenterType : Association to ZZ1_PRODUCTION_COCKPIT_API_CDS.I_WorkCenterType {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'ZZ1_C_MFG_ORDEROPE'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_MFG_ORDEROPE {
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID interno ordine'
  @sap.quickinfo : 'ID interno dell''ordine'
  key MfgOrderInternalID : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID int. operazione'
  @sap.quickinfo : 'Identificatore interno di un''operazione o attività'
  key OrderOperationInternalID : String(8) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  MasterProductionOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine di produzione'
  @sap.quickinfo : 'ID ordine di produzione'
  ManufacturingOrder : String(12);
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
  @sap.quickinfo : 'Numero del documento acquisti'
  PurchaseOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Pos. ord. acq.'
  @sap.quickinfo : 'Numero posizione documento d''acquisto'
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
  @sap.label : 'Prezzo'
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
  @sap.label : 'Prima data inizio effettiva schedulata'
  OpErlstSchedldExecStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prima ora inizio esecuzione schedulata'
  OpErlstSchedldExecStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prima ora inizio elaborazione schedulata'
  OpErlstSchedldProcgStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prima ora inizio elaborazione schedulata'
  OpErlstSchedldProcgStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prima data inizio disattr. schedulata'
  @sap.quickinfo : 'Prima data inizio disattrezzaggio schedulata'
  OpErlstSchedldTrdwnStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prima ora inizio disattr. schedulata'
  @sap.quickinfo : 'Prima ora inizio disattrezzaggio schedulata'
  OpErlstSchedldTrdwnStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prima data di fine esec. pianificata'
  @sap.quickinfo : 'Prima data di fine esecuzione pianificata'
  OpErlstSchedldExecEndDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prima ora di fine esecuzione pianificata'
  OpErlstSchedldExecEndTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ultima data inizio esecuzione schedulata'
  @sap.quickinfo : 'Ultima data di inizio esecuzione schedulata'
  OpLtstSchedldExecStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ultima ora inizio esecuzione schedualta'
  @sap.quickinfo : 'Ultima ora di inizio esecuzione schedulata'
  OpLtstSchedldExecStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ultima data inizio elaborazione pianif.'
  @sap.quickinfo : 'Ultima data di inizio dell''elaborazione pianificata'
  OpLtstSchedldProcgStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora inizio di elab. schedulata p. ultima'
  @sap.quickinfo : 'Ora di inizio di elaborazione schedulata per ultima'
  OpLtstSchedldProcgStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data inizio dis. schedulata per ultima'
  @sap.quickinfo : 'Data di inizio disattrezzaggio schedulata per ultima'
  OpLtstSchedldTrdwnStrtDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ultima ora inizio disattrezzaggio pian.'
  @sap.quickinfo : 'Ultima ora di inizio del disattrezzaggio pianificato'
  OpLtstSchedldTrdwnStrtTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data fine esec. pianificata per ultima'
  @sap.quickinfo : 'Data fine esecuzione pianificata per ultima'
  OpLtstSchedldExecEndDte : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora fine esec. pianificata per ultima'
  @sap.quickinfo : 'Ora fine esecuzione pianificata per ultima'
  OpLtstSchedldExecEndTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data iniziale prev. + presto'
  @sap.quickinfo : 'Prima data d''inizio prev. pianificata'
  SchedldFcstdEarliestStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prima ora iniziale prev.'
  @sap.quickinfo : 'Prima ora d''inizio prevista pianificata'
  SchedldFcstdEarliestStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prima data finale prev.'
  @sap.quickinfo : 'Prima data di fine prev. pianificata'
  SchedldFcstdEarliestEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prima ora utile di fine prevista'
  @sap.quickinfo : 'Prima ora di fine prev. pianificata'
  SchedldFcstdEarliestEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ultima data di inizio prevista'
  @sap.quickinfo : 'Ultima data di inizio prevista pianificata'
  LatestSchedldFcstdStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ultima ora di inizio prevista'
  @sap.quickinfo : 'Ultima ora di inizio prevista pianificata'
  SchedldFcstdLatestStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ultima data di fine prevista'
  @sap.quickinfo : 'Ultima data di fine prevista pianificata'
  LatestSchedldFcstdEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ultima ora di fine prevista'
  @sap.quickinfo : 'Ultima ora di fine prevista pianificata'
  SchedldFcstdLatestEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data inizio conferm.'
  @sap.quickinfo : 'Data di inizio dell''operazione confermata'
  OperationConfirmedStartDate : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data fine confermata'
  @sap.quickinfo : 'Data fine confermata operazione'
  OperationConfirmedEndDate : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data di inizio esecuzione confermata'
  @sap.quickinfo : 'Data confermata di inizio dell''esecuzione'
  OpActualExecutionStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora di inizio esecuzione confermata'
  OpActualExecutionStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data di fine attrezzaggio confermata'
  OpActualSetupEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora di fine attrezzaggio confermata'
  OpActualSetupEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data di inizio elaborazione confermata'
  OpActualProcessingStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora di inizio elaborazione confermata'
  OpActualProcessingStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data di fine elaborazione confermata'
  @sap.quickinfo : 'Data di fine di elaborazione confermata'
  OpActualProcessingEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora fine eff. elab. confermata'
  @sap.quickinfo : 'Ora di fine di elaborazione confermata'
  OpActualProcessingEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data inizio disattrezzaggio confermata'
  @sap.quickinfo : 'Data di inizio del disattrezzaggio confermata'
  OpActualTeardownStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora inizio disattrezzaggio confermata'
  @sap.quickinfo : 'Ora di inizio del disattrezzaggio confermata'
  OpActualTeardownStartTme : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data di fine esecuzione confermata'
  OpActualExecutionEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora di fine esecuzione confermata'
  OpActualExecutionEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data fine prev.'
  @sap.quickinfo : 'Data fine prev. effettiva'
  ActualForecastEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora fine prev.'
  @sap.quickinfo : 'Ora fine prev. effettiva'
  ActualForecastEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prima data in. att.'
  @sap.quickinfo : 'Prima data di inizio attesa schedulata'
  EarliestScheduledWaitStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prima ora in. att.'
  @sap.quickinfo : 'Prima ora di inizio attesa schedulata'
  EarliestScheduledWaitStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Prima data fine att.'
  @sap.quickinfo : 'Prima data di fine attesa schedulata'
  EarliestScheduledWaitEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Prima ora fine att.'
  @sap.quickinfo : 'Prima ora di fine attesa schedulata'
  EarliestScheduledWaitEndTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'UltDtInizioAttPoss'
  @sap.quickinfo : 'Ultima data di inizio attesa schedulata possibile'
  LatestScheduledWaitStartDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ult. ora inizio att.'
  @sap.quickinfo : 'Ultima ora di inizio attesa schedulata'
  LatestScheduledWaitStartTime : Time;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ult.data fine attesa'
  @sap.quickinfo : 'Ultima data di fine attesa schedulata'
  LatestScheduledWaitEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ultima ora fine att.'
  @sap.quickinfo : 'Ultima ora di fine attesa schedulata'
  LatestScheduledWaitEndTime : Time;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM durata pausa'
  @sap.quickinfo : 'Unità per durata pausa'
  @sap.semantics : 'unit-of-measure'
  BreakDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BreakDurationUnit'
  @sap.label : 'Tempo recupero'
  PlannedBreakDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BreakDurationUnit'
  @sap.label : 'Tempo recupero'
  @sap.quickinfo : 'Tempo di recupero confermato'
  ConfirmedBreakDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di tempo minimo di sovrapposizione'
  @sap.quickinfo : 'Unità del tempo minimo di sovrapposizione'
  @sap.semantics : 'unit-of-measure'
  OverlapMinimumDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OverlapMinimumDurationUnit'
  @sap.label : 'Tempo min. sovrapp.'
  @sap.quickinfo : 'Tempo minimo di sovrapp.'
  OverlapMinimumDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM tmp.max attesa'
  @sap.quickinfo : 'Unità del tempo di attesa massimo'
  @sap.semantics : 'unit-of-measure'
  MaximumWaitDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MaximumWaitDurationUnit'
  @sap.label : 'Tmpo max di attesa'
  @sap.quickinfo : 'Tempo massimo di attesa'
  MaximumWaitDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM tempo att. rich.'
  @sap.quickinfo : 'Unità di misura del tempo di attesa richiesto'
  @sap.semantics : 'unit-of-measure'
  MinimumWaitDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumWaitDurationUnit'
  @sap.label : 'Tempo attesa minimo'
  MinimumWaitDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM tempo trasf. std'
  @sap.quickinfo : 'Unità del tempo di trasferimento standard'
  @sap.semantics : 'unit-of-measure'
  StandardMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'StandardMoveDurationUnit'
  @sap.label : 'Tmpo trasf. standard'
  StandardMoveDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Utà durata coda std'
  @sap.quickinfo : 'Unità per la durata coda standard'
  @sap.semantics : 'unit-of-measure'
  StandardQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'StandardQueueDurationUnit'
  @sap.label : 'Tempo coda standard'
  @sap.quickinfo : 'Tempo di coda standard'
  StandardQueueDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità dur. coda min.'
  @sap.quickinfo : 'Unità per durata coda minima'
  @sap.semantics : 'unit-of-measure'
  MinimumQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumQueueDurationUnit'
  @sap.label : 'Tempo minimo di coda'
  MinimumQueueDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'UM tempo trasf. min.'
  @sap.quickinfo : 'Unità del tempo minimo di trasferimento'
  @sap.semantics : 'unit-of-measure'
  MinimumMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumMoveDurationUnit'
  @sap.label : 'Tempo min.di trasf.'
  @sap.quickinfo : 'Tempo minimo di trasferimento'
  MinimumMoveDuration : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'OperationStandardDurationUnit'
  @sap.label : 'Durata standard'
  @sap.quickinfo : 'Durata standard dell''operazione'
  OperationStandardDuration : Decimal(5, 1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Utà durata std'
  @sap.quickinfo : 'Unità durata standard'
  @sap.semantics : 'unit-of-measure'
  OperationStandardDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumDurationUnit'
  @sap.label : 'Durata minima'
  @sap.quickinfo : 'Durata minima dell''attività'
  MinimumDuration : Decimal(5, 1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità per durata minima'
  @sap.quickinfo : 'Unità per la durata minima'
  @sap.semantics : 'unit-of-measure'
  MinimumDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'MinimumDurationUnit'
  @sap.label : 'Tempo trasf.'
  @sap.quickinfo : 'Tempo trasferimento utilizzato per la schedulazione'
  ScheduledMoveDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo trasp.'
  @sap.quickinfo : 'Unità di misura per tempo di trasporto'
  @sap.semantics : 'unit-of-measure'
  ScheduledMoveDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Tempo di coda'
  @sap.quickinfo : 'Tempo di coda con cui viene eseguita la schedulazione'
  ScheduledQueueDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo coda'
  @sap.quickinfo : 'Unità di misura per tempo di coda'
  @sap.semantics : 'unit-of-measure'
  ScheduledQueueDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Tempo di attesa'
  @sap.quickinfo : 'Tempo di attesa per la schedulazione'
  ScheduledWaitDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo attesa'
  @sap.quickinfo : 'Unità di misura per tempo di attesa'
  @sap.semantics : 'unit-of-measure'
  ScheduledWaitDurationUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Durata consegna'
  @sap.quickinfo : 'Durata consegna pianificata del materiale in giorni'
  PlannedDeliveryDuration : Decimal(3, 0);
  @sap.required.in.filter : 'false'
  @sap.label : 'Tempo attrezzaggio'
  OpPlannedSetupDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo attr.'
  @sap.quickinfo : 'Unità di misura tempo attrezzaggio'
  @sap.semantics : 'unit-of-measure'
  OpPlannedSetupDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Tempo di elab.'
  @sap.quickinfo : 'Tempo di elaborazione'
  OpPlannedProcessingDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità tempo lavor.'
  @sap.quickinfo : 'Unità di misura del tempo di lavorazione'
  @sap.semantics : 'unit-of-measure'
  OpPlannedProcessingDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Disattrezzare'
  OpPlannedTeardownDurn : Double;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'UM disattrezzaggio'
  @sap.quickinfo : 'Unità di misura disattrezzaggio'
  @sap.semantics : 'unit-of-measure'
  OpPlannedTeardownDurnUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ActualForecastDurationUnit'
  @sap.label : 'Durata previsione effettiva'
  @sap.quickinfo : 'Durata di previsione dell''attività da conferma'
  ActualForecastDuration : Decimal(5, 1);
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
  @sap.label : 'Scostamento inizio'
  @sap.quickinfo : 'Scostamento inizio sotto-operazione'
  StartDateOffsetDuration : Decimal(5, 0);
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
  @sap.label : 'Scostamento fine'
  @sap.quickinfo : 'Scostamento fine sotto-operazione'
  EndDateOffsetDuration : Decimal(5, 0);
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
  @sap.label : 'Denominatore'
  @sap.quickinfo : 'Denominatore per conversione UM ciclo di lavoro e operazione'
  OpQtyToBaseQtyDnmntr : Decimal(5, 0);
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Numeratore per conversione UM ciclo di lavoro e operazione'
  OpQtyToBaseQtyNmrtr : Decimal(5, 0);
  @sap.required.in.filter : 'false'
  @sap.label : 'Scarto'
  @sap.quickinfo : 'Fattore di scarto'
  OperationScrapPercent : Decimal(5, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità di base'
  OperationReferenceQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità operazione'
  @sap.quickinfo : 'Quantità totale operazione'
  OpPlannedTotalQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Scarto previsto'
  @sap.quickinfo : 'Quantità di scarto prevista nell''operazione'
  OpPlannedScrapQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Quantità ottenuta pianificata'
  OpPlannedYieldQuantity : Decimal(14, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Qtà ott. conf.'
  @sap.quickinfo : 'Qtà ottenuta confermata totale'
  OpTotalConfirmedYieldQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Scarto confermato'
  @sap.quickinfo : 'Scarto tot. confermato'
  OpTotalConfirmedScrapQty : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'ProductionUnit'
  @sap.label : 'Rifinitura conf.'
  @sap.quickinfo : 'Quantità rifinitura confermata totale'
  OperationConfirmedReworkQty : Decimal(13, 3);
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
  @sap.label : 'Quantità di lavoro confermata 1'
  @sap.quickinfo : 'Quantità di lavoro già confermata (attività) 1'
  OpConfirmedWorkQuantity1 : Decimal(13, 3);
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
  @sap.label : 'Quantità di lavoro confermata 2'
  @sap.quickinfo : 'Quantità di lavoro già confermata (attività) 2'
  OpConfirmedWorkQuantity2 : Decimal(13, 3);
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
  @sap.label : 'Quantità di lavoro confermata 3'
  @sap.quickinfo : 'Quantità di lavoro già confermata (attività) 3'
  OpConfirmedWorkQuantity3 : Decimal(13, 3);
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
  @sap.label : 'Quantità di lavoro confermata 4'
  @sap.quickinfo : 'Quantità di lavoro già confermata (attività) 4'
  OpConfirmedWorkQuantity4 : Decimal(13, 3);
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
  @sap.label : 'Quantità di lavoro confermata 5'
  @sap.quickinfo : 'Quantità di lavoro già confermata (attività) 5'
  OpConfirmedWorkQuantity5 : Decimal(13, 3);
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
  @sap.label : 'Quantità di lavoro confermata 6'
  @sap.quickinfo : 'Quantità di lavoro già confermata (attività) 6'
  OpConfirmedWorkQuantity6 : Decimal(13, 3);
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
  @sap.label : 'Quantità di lavoro standard 1'
  WorkCenterStandardWorkQty1 : Decimal(9, 3);
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
  @sap.label : 'Quantità di lavoro standard 2'
  WorkCenterStandardWorkQty2 : Decimal(9, 3);
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
  @sap.label : 'Quantità di lavoro standard 3'
  WorkCenterStandardWorkQty3 : Decimal(9, 3);
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
  @sap.label : 'Quantità di lavoro standard 4'
  WorkCenterStandardWorkQty4 : Decimal(9, 3);
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
  @sap.label : 'Quantità di lavoro standard 5'
  WorkCenterStandardWorkQty5 : Decimal(9, 3);
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
  @sap.label : 'Quantità di lavoro standard 6'
  WorkCenterStandardWorkQty6 : Decimal(9, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di attività centro di costo 6'
  CostCtrActivityType6 : String(6);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Quantità lavoro previsto 1'
  ForecastWorkQuantity1 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Quantità lavoro previsto 2'
  ForecastWorkQuantity2 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Quantità di lavoro di previsione 3'
  ForecastWorkQuantity3 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Quantità lavoro previsto 4'
  ForecastWorkQuantity4 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Quantità lavoro previsto 5'
  ForecastWorkQuantity5 : Decimal(9, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'WorkCenterStandardWorkQtyUnit6'
  @sap.label : 'Quantità di lavoro previsto 6'
  ForecastWorkQuantity6 : Decimal(9, 3);
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
  @sap.label : 'Qtà di processo'
  @sap.quickinfo : 'Qtà confermata/attività per business process'
  BusinessProcessConfirmedQty : Decimal(13, 3);
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
  @sap.label : 'Rimanente quantità di business process'
  @sap.quickinfo : 'Quantità residua per business process'
  BusinessProcessRemainingQty : Decimal(13, 3);
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
  @sap.label : 'Campo utente qtà'
  @sap.quickinfo : 'Campo utente quantità (lunghezza 10,3)'
  FreeDefinedQuantity1 : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità per campi quantità'
  @sap.semantics : 'unit-of-measure'
  FreeDefinedQuantity2Unit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedQuantity2Unit'
  @sap.label : 'Campo utente qtà'
  @sap.quickinfo : 'Campo utente quantità (lunghezza 10,3)'
  FreeDefinedQuantity2 : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità campi valore'
  @sap.semantics : 'currency-code'
  FreeDefinedAmount1Currency : String(5);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedAmount1Currency'
  @sap.label : 'Campo utente val.'
  @sap.quickinfo : 'Campo utente valori (lunghezza 10,3)'
  FreeDefinedAmount1 : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Campo utente unità'
  @sap.quickinfo : 'Campo utente: unità campi valore'
  @sap.semantics : 'currency-code'
  FreeDefinedAmount2Currency : String(5);
  @sap.required.in.filter : 'false'
  @sap.unit : 'FreeDefinedAmount2Currency'
  @sap.label : 'Campo utente val.'
  @sap.quickinfo : 'Campo utente valori (lunghezza 10,3)'
  FreeDefinedAmount2 : Decimal(13, 3);
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
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.text : 'WorkCenterInternalID_1_Text'
  @sap.label : 'ID oggetto'
  @sap.quickinfo : 'ID oggetto della risorsa'
  WorkCenterInternalID_1 : String(8);
  @sap.label : 'Testo centro lavoro'
  @sap.quickinfo : 'Testo centro di lavoro'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkCenterInternalID_1_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_WorkCenterType/WorkCenterTypeCode_Text'
  @sap.label : 'Tipo oggetto'
  @sap.quickinfo : 'CIM Resource Object Type'
  @sap.value.list : 'fixed-values'
  WorkCenterTypeCode_1 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.text : 'to_Plant/PlantName'
  @sap.label : 'Divisione'
  @sap.value.list : 'standard'
  Plant_1 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Centro di lavoro'
  @sap.value.list : 'standard'
  WorkCenter : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Material'
  @sap.quickinfo : 'Codice materiale per ordine'
  @sap.value.list : 'standard'
  Material : String(40);
  to_Plant : Association to ZZ1_PRODUCTION_COCKPIT_API_CDS.I_Plant {  };
  to_WorkCenterType : Association to ZZ1_PRODUCTION_COCKPIT_API_CDS.I_WorkCenterType {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'ZZ1_C_UNION_PROD_COMP'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_UNION_PROD_COMP {
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Impegno'
  @sap.quickinfo : 'Numero dell''impegno / del fabbisogno dipendente'
  key Reservation : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione impegno'
  key ReservationItem : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di record impegno'
  key RecordType : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di fabbisogno'
  requirementtype : String(2);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Documento d''acquisto'
  PurchaseOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione del documento d''acquisto'
  PurchaseOrderItem : String(5);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Schedulazione'
  @sap.quickinfo : 'Contatore sched.'
  PurchaseOrderScheduleLine : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Materiale'
  @sap.quickinfo : 'Codice materiale'
  Material : String(40);
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità misura base'
  @sap.quickinfo : 'Unità di misura di base'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantità fabbisogno'
  RequiredQuantity : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantità prelevata'
  WithdrawnQuantity : Decimal(13, 3);
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data fabbisogno'
  @sap.quickinfo : 'Data fabbisogno componente materiale'
  RequirementDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Ora fabbisogno'
  @sap.quickinfo : 'Ora fabbisogno del componente del materiale'
  RequirementTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Divisione'
  Plant : String(4);
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data dell''ultimo fabbisogno'
  LatestRequirementDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Numero di posizione distinta base'
  BillOfMaterialItemNumber_2 : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Crit. class.'
  @sap.quickinfo : 'Criterio di classificazione'
  SortField : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Cat. pos .dist. base'
  @sap.quickinfo : 'Categoria di posizione distinta base'
  BOMItemCategory : String(1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Posizione dummy'
  @sap.quickinfo : 'Indicatore posizione dummy'
  MaterialComponentIsPhantomItem : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Merce sfusa'
  @sap.quickinfo : 'Indicatore: merce sfusa'
  IsBulkMaterialComponent : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di valutazione stock speciale'
  @sap.quickinfo : 'Tipo di valutazione stock inventario speciale'
  InventorySpecialStockValnType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tp. stock speciale'
  @sap.quickinfo : 'Tipo di stock inventario speciale'
  InventorySpecialStockType : String(1);
  @sap.required.in.filter : 'false'
  @sap.label : 'Prel. fin.'
  @sap.quickinfo : 'Prelievo finale dell''impegno'
  ReservationIsFinallyIssued : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'UM acquisizione'
  @sap.quickinfo : 'Unità di misura di registrazione'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.required.in.filter : 'false'
  @sap.unit : 'EntryUnit'
  @sap.label : 'Quantità'
  @sap.quickinfo : 'Quantità in unità di misura di acquisizione'
  QuantityInEntryUnit : Decimal(13, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore per la conversione in unità di mis. di base'
  MaterialQtyToBaseQtyNmrtr : Decimal(5, 0);
  @sap.required.in.filter : 'false'
  @sap.label : 'Denominatore'
  @sap.quickinfo : 'Denom. per la conversione in unità di misura di base'
  MaterialQtyToBaseQtyDnmntr : Decimal(5, 0);
  @sap.required.in.filter : 'false'
  @sap.label : 'Scarto comp. (%)'
  @sap.quickinfo : 'Scarto del componente in percentuale'
  ComponentScrapInPercent : Decimal(5, 2);
  @sap.required.in.filter : 'false'
  @sap.label : 'Scarto oper. in %'
  @sap.quickinfo : 'Scarto operazione'
  OperationScrapInPercent : Decimal(5, 2);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Qtà per contr. disp.'
  @sap.quickinfo : 'Quantità confermata per contr. disponibilità in UMM'
  ConfdQtyForATPInBaseUoM : Decimal(15, 3);
  @sap.required.in.filter : 'false'
  @sap.label : 'Scostamento nel lead time'
  LeadTimeOffset : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Magazzino'
  StorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Area di approvvigionamento produzione'
  ProductionSupplyArea : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Partita'
  @sap.quickinfo : 'Numero partita'
  Batch : String(10);
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo posizione'
  @sap.quickinfo : 'Testo posizione distinta base (riga 1)'
  BOMItemDescription : String(40);
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo posizione 2'
  @sap.quickinfo : 'Testo posizione distinta base (riga 2)'
  BOMItemText2 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Codice canc.'
  @sap.quickinfo : 'Indicatore di cancellazione nel documento acquisti'
  PurchasingDocumentDeletionCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine di produzione'
  @sap.quickinfo : 'ID ordine di produzione'
  ManufacturingOrder : String(12);
  @sap.required.in.filter : 'false'
  @sap.label : 'Testo ordine'
  @sap.quickinfo : 'Testo ordine di produzione'
  ManufacturingOrderText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di ordine'
  ManufacturingOrderType : String(4);
  @sap.required.in.filter : 'false'
  @sap.label : 'Flag di canc.'
  @sap.quickinfo : 'Flag di cancellazione'
  IsMarkedForDeletion : Boolean;
  @sap.required.in.filter : 'false'
  @sap.label : 'Parte mancante'
  MaterialComponentIsMissing : Boolean;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data di cr. ordine'
  @sap.quickinfo : 'Data di creazione ordine'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Autore'
  @sap.quickinfo : 'Nome autore acquisizione'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'PC val.per tt.div.'
  @sap.quickinfo : 'Prodotto configurabile valido per tutte le divisioni'
  Product : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Società'
  CompanyCode : String(4);
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data inizio pian.'
  @sap.quickinfo : 'Data inizio pianificata per ordine di produzione'
  MfgOrderPlannedStartDate : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data inizio sched.'
  @sap.quickinfo : 'Data inizio schedulata per ordine di produzione'
  MfgOrderScheduledStartDate : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data fine schedulata'
  @sap.quickinfo : 'Data fine schedulata per ordine di produzione'
  MfgOrderScheduledEndDate : Date;
  @sap.display.format : 'Date'
  @sap.required.in.filter : 'false'
  @sap.label : 'Data fine confermata'
  @sap.quickinfo : 'Data di fine confermata ordine di produzione'
  MfgOrderConfirmedEndDate : Date;
  @sap.required.in.filter : 'false'
  @sap.label : 'Unità di produzione'
  @sap.quickinfo : 'Unità di misura di produzione'
  @sap.semantics : 'unit-of-measure'
  ProductionUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Esercizio stagionale'
  ProductSeasonYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Stagione'
  ProductSeason : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  MasterProductionOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Collezione'
  @sap.quickinfo : 'Collezione fashion'
  ProductCollection : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tema'
  @sap.quickinfo : 'Tema fashion'
  ProductTheme : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ordine prod. princ.'
  @sap.quickinfo : 'Numero ordine di produzione principale'
  FshMprodOrd : String(12);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Ord. prod. combinato'
  @sap.quickinfo : 'Ordine prod. principale comb.'
  CprodOrd : String(12);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Contatore'
  @sap.quickinfo : 'Contatore generale dell''ordine'
  OrderIntBillOfOperationsItem : String(8);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'Int. centro lav.'
  @sap.quickinfo : 'ID interno centro di lavoro'
  WorkCenterInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Tipo di centro di lavoro'
  WorkCenterTypeCODE_2_1 : String(2);
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
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID int. operazione'
  @sap.quickinfo : 'Identificatore interno di un''operazione o attività'
  OrderOperationInternalID : String(8);
  @sap.display.format : 'NonNegative'
  @sap.required.in.filter : 'false'
  @sap.label : 'ID interno ordine'
  @sap.quickinfo : 'ID interno dell''ordine'
  OrderInternalID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Fornitore'
  @sap.quickinfo : 'Numero conto del fornitore'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Segmento di stock'
  StockSegment : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Segmento di stock'
  ParentStockSegment : String(40);
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Segmento fabbisogno'
  RequirementSegment : String(40);
  @sap.required.in.filter : 'false'
  @sap.label : 'MRPController'
  MRPController : String(1);
  @sap.required.in.filter : 'false'
  @sap.unit : 'BaseUnit'
  @sap.label : 'TotalAllocQty'
  TotalAllocQty : Decimal(13, 3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'ZZ1_PRODUCTION_COCKPIT_API'
entity ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_PRODUCTION_COCKPIT_API {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
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
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.required.in.filter : 'false'
  @sap.label : 'Conto Co.Ge.'
  @sap.quickinfo : 'Conto Co.Ge. per scarico dei costi semplice'
  GLAccount : String(10);
  to_ZZ1_C_COMBINEDPRODORDER : Association to ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_COMBINEDPRODORDER {  };
  to_ZZ1_C_COMBORDER_COMP : Association to many ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_COMBORDER_COMP {  };
  to_ZZ1_C_MASTERORDER_COMP : Association to many ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_MASTERORDER_COMP {  };
  to_ZZ1_C_MASTERPRODORDER : Association to ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_MASTERPRODORDER {  };
  to_ZZ1_C_MFG_COMBINEDOPER_SUM : Association to many ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_MFG_COMBINEDOPER_SUM {  };
  to_ZZ1_C_MFG_MASTEROPER_SUM : Association to many ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_MFG_MASTEROPER_SUM {  };
  to_ZZ1_C_MFG_ORDEROPE : Association to many ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_MFG_ORDEROPE {  };
  to_ZZ1_C_UNION_PROD_COMP : Association to many ZZ1_PRODUCTION_COCKPIT_API_CDS.ZZ1_C_UNION_PROD_COMP {  };
};

