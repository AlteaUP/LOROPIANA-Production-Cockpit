/* checksum : 283f5759b59e77ed147a835efda97aa9 */
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
service zmfp_mrp_plant_f4 {};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'CDS for Production Plants Matchcode'
@Capabilities.SearchRestrictions.Searchable : true
@Capabilities.SearchRestrictions.UnsupportedExpressions : #phrase
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity zmfp_mrp_plant_f4.ZC_RFM_PRODUCTION_PLANT_F4 {
  @Common.Text : PlantName
  @Common.IsUpperCase : true
  @Common.ValueListReferences : [
    '../../../../srvd_f4/sap/i_plant/0001;ps=''srvd-zmfp_mrp_plant_f4-0001'';va=''com.sap.gateway.srvd.zmfp_mrp_plant_f4.v0001.et-zc_rfm_production_plant_f4.plant''/$metadata'
  ]
  @Common.Label : 'Plant'
  @Common.Heading : 'Plnt'
  key Plant : String(4) not null;
  @Common.Label : 'Plant Name'
  PlantName : String(30) not null;
};

