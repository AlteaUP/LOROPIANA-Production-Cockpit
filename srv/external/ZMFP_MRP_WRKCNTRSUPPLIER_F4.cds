/* checksum : 81e357d4fc8120347bc3d85bc0bbd5ad */
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
service ZMFP_MRP_WRKCNTRSUPPLIER_F4 {};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'CDS for Workcenters Suppliers'
@Capabilities.SearchRestrictions.Searchable : true
@Capabilities.SearchRestrictions.UnsupportedExpressions : #phrase
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity ZMFP_MRP_WRKCNTRSUPPLIER_F4.ZC_RFM_WORKCENTERSUPPLIER {
  @Common.IsUpperCase : true
  @Common.Label : 'Work Center'
  key workcenter : String(8) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Object ID'
  @Common.Heading : 'ID'
  @Common.QuickInfo : 'Object ID of the resource'
  key WorkCenterInternalID : String(8) not null;
  @Common.Label : 'Work Center Text'
  @Common.Heading : 'Text'
  key workcentertext : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Plant'
  @Common.Heading : 'Plnt'
  key plant : String(4) not null;
  @Common.Text : SupplierName
  @Common.IsUpperCase : true
  @Common.ValueListReferences : [
    '../../../../srvd_f4/sap/i_supplier/0001;ps=''srvd-zmfp_mrp_wrkcntrsupplier_f4-0001'';va=''com.sap.gateway.srvd.zmfp_mrp_wrkcntrsupplier_f4.v0001.et-zc_rfm_workcentersupplier.supplier''/$metadata'
  ]
  @Common.Label : 'Supplier'
  @Common.QuickInfo : 'Account Number of Supplier'
  key Supplier : String(10) not null;
  @Common.Label : 'Name of Supplier'
  @Common.Heading : 'Supplier'
  SupplierName : String(80) not null;
};

