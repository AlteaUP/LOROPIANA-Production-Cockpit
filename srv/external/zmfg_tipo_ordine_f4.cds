/* checksum : ad5a217bc3c096a6876c07164fae1055 */
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
service zmfg_tipo_ordine_f4 {};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'View for order type'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity zmfg_tipo_ordine_f4.ZZMFG_TIPO_ORDINE {
  @Common.Label : 'Tipo di ordine'
  @Common.Text : OrderType
  @Common.IsUpperCase : true
  @Common.ValueListReferences : [
    '../../../../srvd_f4/sap/i_ordertypetext/0001;ps=''srvd-zmfg_tipo_ordine_f4-0001'';va=''com.sap.gateway.srvd.zmfg_tipo_ordine_f4.v0001.et-zzmfg_tipo_ordine.ordertype''/$metadata'
  ]
  @Common.Heading : 'Type'
  @Common.QuickInfo : 'Order Type'
  key OrderType : String(4) not null;
  @Common.Label : 'Chiave lingua'
  @Common.Text : Language
  @Common.ValueListReferences : [
    '../../../../srvd_f4/sap/i_ordertypetext/0001;ps=''srvd-zmfg_tipo_ordine_f4-0001'';va=''com.sap.gateway.srvd.zmfg_tipo_ordine_f4.v0001.et-zzmfg_tipo_ordine.language''/$metadata'
  ]
  @Common.Heading : 'Language'
  @Common.QuickInfo : 'Language Key'
  key Language : String(2) not null;
  @Common.Label : 'Nome tipo di ordine'
  @Common.QuickInfo : 'Name of an Order Type'
  OrderTypeName : String(40) not null;
};

