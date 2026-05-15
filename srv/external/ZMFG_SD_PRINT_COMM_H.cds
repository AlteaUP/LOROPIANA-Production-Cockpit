/* checksum : 8a374f62172fbb66f793ccfe923107e4 */
@cds.external : true
type ZMFG_SD_PRINT_COMM_H.printcommhCbAControl {
  @Common.Label : 'Dynamic CbA-Control'
  @Common.Heading : 'Dynamic Create by Association Control'
  @Common.QuickInfo : 'Dynamic Create via Association Control Property'
  to_print : Boolean not null;
};

@cds.external : true
type ZMFG_SD_PRINT_COMM_H.EntityControl {
  @Common.Label : 'Dyn. Method Control'
  @Common.Heading : 'Dynamic Method Control'
  @Common.QuickInfo : 'Dynamic Method Property'
  Deletable : Boolean not null;
  @Common.Label : 'Dyn. Method Control'
  @Common.Heading : 'Dynamic Method Control'
  @Common.QuickInfo : 'Dynamic Method Property'
  Updatable : Boolean not null;
};

@cds.external : true
@Aggregation.ApplySupported.Transformations : [ 'aggregate', 'groupby', 'filter' ]
@Aggregation.ApplySupported.Rollup : #None
@Common.ApplyMultiUnitBehaviorForSortingAndFiltering : true
@Capabilities.FilterFunctions : [
  'eq',
  'ne',
  'gt',
  'ge',
  'lt',
  'le',
  'and',
  'or',
  'contains',
  'startswith',
  'endswith',
  'any',
  'all'
]
@Capabilities.SupportedFormats : [ 'application/json', 'application/pdf' ]
@PDF.Features.DocumentDescriptionReference : '../../../../default/iwbep/common/0001/$metadata'
@PDF.Features.DocumentDescriptionCollection : 'MyDocumentDescriptions'
@PDF.Features.ArchiveFormat : true
@PDF.Features.Border : true
@PDF.Features.CoverPage : true
@PDF.Features.FitToPage : true
@PDF.Features.FontName : true
@PDF.Features.FontSize : true
@PDF.Features.Margin : true
@PDF.Features.Padding : true
@PDF.Features.Signature : true
@PDF.Features.HeaderFooter : true
@PDF.Features.ResultSizeDefault : 20000
@PDF.Features.ResultSizeMaximum : 20000
@Capabilities.KeyAsSegmentSupported : true
@Capabilities.AsynchronousRequestsSupported : true
service ZMFG_SD_PRINT_COMM_H {};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Custom entity per Stampa Commessa'
@Capabilities.NavigationRestrictions.RestrictedProperties : [
  {
    NavigationProperty: to_print,
    InsertRestrictions: { Insertable: ![__CreateByAssociationControl/to_print] }
  }
]
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.FilterRestrictions.NonFilterableProperties : [ '__CreateByAssociationControl', '__EntityControl' ]
@Capabilities.SortRestrictions.NonSortableProperties : [ '__CreateByAssociationControl', '__EntityControl' ]
@Capabilities.ReadRestrictions.Readable : false
@Capabilities.DeleteRestrictions.Deletable : ![__EntityControl/Deletable]
@Capabilities.UpdateRestrictions.Updatable : ![__EntityControl/Updatable]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity ZMFG_SD_PRINT_COMM_H.printcommh {
  @Common.IsUpperCase : true
  @Common.Label : 'non utilizzato'
  @Common.QuickInfo : 'Campo di testo a tre caratteri per IDocs'
  key id : String(3) not null;
  @Core.Computed : true
  @UI.HiddenFilter : true
  @UI.Hidden : true
  @Common.Label : 'Dynamic CbA-Control'
  @Common.Heading : 'Dynamic Create by Association Control'
  @Common.QuickInfo : 'Dynamic Create via Association Control Property'
  __CreateByAssociationControl : ZMFG_SD_PRINT_COMM_H.printcommhCbAControl;
  @Core.Computed : true
  @UI.HiddenFilter : true
  @UI.Hidden : true
  @Common.Label : 'Dyn. Method Control'
  @Common.Heading : 'Dynamic Method Control'
  @Common.QuickInfo : 'Dynamic Method Property'
  __EntityControl : ZMFG_SD_PRINT_COMM_H.EntityControl;
  @Common.Composition : true
  to_print : Composition of many ZMFG_SD_PRINT_COMM_H.printcommi on to_print.parent = $self;
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Entity stampa commessa da cruscotto'
@Capabilities.NavigationRestrictions.RestrictedProperties : [
  { NavigationProperty: parent, InsertRestrictions: { Insertable: false } }
]
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.FilterRestrictions.NonFilterableProperties : [ '__EntityControl' ]
@Capabilities.SortRestrictions.NonSortableProperties : [ '__EntityControl' ]
@Capabilities.ReadRestrictions.Readable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : ![__EntityControl/Deletable]
@Capabilities.UpdateRestrictions.Updatable : ![__EntityControl/Updatable]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity ZMFG_SD_PRINT_COMM_H.printcommi {
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'non utilizzato'
  @Common.QuickInfo : 'Campo di testo a tre caratteri per IDocs'
  key id : String(3) not null;
  @Common.Label : 'Combined Order'
  @Common.IsUpperCase : true
  @Common.QuickInfo : 'Campo di testo di 12 caratteri'
  key cprodOrd : String(12) not null;
  @Common.Label : 'Plant'
  @Common.IsUpperCase : true
  @Common.Heading : 'Div.'
  @Common.QuickInfo : 'Divisione'
  key plant : String(4) not null;
  @Common.Label : 'Radio Button Type'
  @Common.IsUpperCase : true
  @Common.QuickInfo : 'Indicatore a una posizione'
  rtype : String(1) not null;
  @Common.Label : 'User'
  @Common.IsUpperCase : true
  @Common.Heading : 'Nome utente'
  @Common.QuickInfo : 'Nome utente'
  uname : String(12) not null;
  @Core.Computed : true
  @UI.HiddenFilter : true
  @UI.Hidden : true
  @Common.Label : 'Dyn. Method Control'
  @Common.Heading : 'Dynamic Method Control'
  @Common.QuickInfo : 'Dynamic Method Property'
  __EntityControl : ZMFG_SD_PRINT_COMM_H.EntityControl;
  parent : Association to one ZMFG_SD_PRINT_COMM_H.printcommh on parent.id = id;
};

