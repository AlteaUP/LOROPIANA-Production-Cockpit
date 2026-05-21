/* checksum : d1080ecdb2a1b40c60fd7bd9bfab4698 */
@cds.external : true
type zmfg_sb_released_corders_h.CORDHCbAControl {
  @Common.Label : 'Dynamic CbA-Control'
  @Common.Heading : 'Dynamic Create by Association Control'
  @Common.QuickInfo : 'Dynamic Create via Association Control Property'
  to_ril_cord : Boolean not null;
};

@cds.external : true
type zmfg_sb_released_corders_h.EntityControl {
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
service zmfg_sb_released_corders_h {};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Released orders after process'
@Capabilities.NavigationRestrictions.RestrictedProperties : [
  {
    NavigationProperty: to_ril_cord,
    InsertRestrictions: { Insertable: ![__CreateByAssociationControl/to_ril_cord] }
  }
]
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.FilterRestrictions.NonFilterableProperties : [ '__CreateByAssociationControl', '__EntityControl' ]
@Capabilities.SortRestrictions.NonSortableProperties : [ '__CreateByAssociationControl', '__EntityControl' ]
@Capabilities.ReadRestrictions.Readable : false
@Capabilities.DeleteRestrictions.Deletable : ![__EntityControl/Deletable]
@Capabilities.UpdateRestrictions.Updatable : ![__EntityControl/Updatable]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity zmfg_sb_released_corders_h.CORDH {
  @Common.IsUpperCase : true
  @Common.Label : 'R/2 table'
  @Common.Heading : 'R2tab'
  key id : String(5) not null;
  @Core.Computed : true
  @UI.HiddenFilter : true
  @UI.Hidden : true
  @Common.Label : 'Dynamic CbA-Control'
  @Common.Heading : 'Dynamic Create by Association Control'
  @Common.QuickInfo : 'Dynamic Create via Association Control Property'
  __CreateByAssociationControl : zmfg_sb_released_corders_h.CORDHCbAControl;
  @Core.Computed : true
  @UI.HiddenFilter : true
  @UI.Hidden : true
  @Common.Label : 'Dyn. Method Control'
  @Common.Heading : 'Dynamic Method Control'
  @Common.QuickInfo : 'Dynamic Method Property'
  __EntityControl : zmfg_sb_released_corders_h.EntityControl;
  @Common.Composition : true
  to_ril_cord : Composition of many zmfg_sb_released_corders_h.CORDI on to_ril_cord.parent = $self;
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Released orders after process items'
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
entity zmfg_sb_released_corders_h.CORDI {
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'R/2 table'
  @Common.Heading : 'R2tab'
  key id : String(5) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Combined Prod. Order'
  @Common.Heading : 'Combined Production Order'
  @Common.QuickInfo : 'Combined Master Production Order'
  key combined_order : String(12) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Plant'
  @Common.Heading : 'Plnt'
  werks : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'R/2 table'
  @Common.Heading : 'R2tab'
  flag_error : String(5) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Char255'
  msg : String(255) not null;
  @Core.Computed : true
  @UI.HiddenFilter : true
  @UI.Hidden : true
  @Common.Label : 'Dyn. Method Control'
  @Common.Heading : 'Dynamic Method Control'
  @Common.QuickInfo : 'Dynamic Method Property'
  __EntityControl : zmfg_sb_released_corders_h.EntityControl;
  parent : Association to one zmfg_sb_released_corders_h.CORDH on parent.id = id;
};

