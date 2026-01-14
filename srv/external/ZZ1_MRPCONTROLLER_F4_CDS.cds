/* checksum : 9493440cd0530eeb2ef13ea756df41d0 */
@cds.external : true
@Aggregation.ApplySupported : { Transformations: [ 'aggregate', 'groupby', 'filter' ], Rollup: #None }
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
@PDF.Features : {
  DocumentDescriptionReference: '../../../../default/iwbep/common/0001/$metadata',
  DocumentDescriptionCollection: 'MyDocumentDescriptions',
  ArchiveFormat: true,
  Border: true,
  CoverPage: true,
  FitToPage: true,
  FontName: true,
  FontSize: true,
  Margin: true,
  Padding: true,
  Signature: true,
  HeaderFooter: true,
  ResultSizeDefault: 20000,
  ResultSizeMaximum: 20000
}
@Capabilities.KeyAsSegmentSupported : true
@Capabilities.AsynchronousRequestsSupported : true
service ZZ1_MRPCONTROLLER_F4_CDS {};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'CDS for MRP Controller Matchcode'
@Capabilities.SearchRestrictions.Searchable : true
@Capabilities.SearchRestrictions.UnsupportedExpressions : #phrase
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity ZZ1_MRPCONTROLLER_F4_CDS.ZC_RFM_MRPCONTROLLER_F4 {
  @Common.IsUpperCase : true
  @Common.Label : 'Divisione'
  @Common.Heading : 'Div.'
  key Plant : String(4) not null;
  @Common.Text : MRPControllerName
  @Common.IsUpperCase : true
  @Common.Label : 'Responsabile MRP'
  @Common.Heading : 'R.MRP'
  key MRPController : String(3) not null;
  @Common.Label : 'Nome resp. MRP'
  @Common.QuickInfo : 'Nome responsabile MRP'
  MRPControllerName : String(18) not null;
};

