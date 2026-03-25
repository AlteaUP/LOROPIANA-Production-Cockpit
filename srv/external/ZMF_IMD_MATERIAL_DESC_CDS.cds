/* checksum : 3de5c03bcbec7cd246c898945d1e1aac */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZMF_IMD_MATERIAL_DESC_CDS {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'MFG - Material Master Data'
entity ZMF_IMD_MATERIAL_DESC_CDS.ZMF_IMD_MATERIAL_DESC {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key matnr : String(40) not null;
  @sap.label : 'Material Description'
  maktx : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material description'
  @sap.quickinfo : 'Material Description in Uppercase for Matchcodes'
  maktg : String(40);
  @sap.label : 'Description'
  color_descr : String(30);
  @sap.label : 'Description'
  mbus_descr : String(30);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  ersda : Date;
  @sap.label : 'Created At Time'
  @sap.quickinfo : 'Time of Creation'
  created_at_time : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Name of Person Responsible for Creating the Object'
  ernam : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Last Change'
  @sap.quickinfo : 'Date of Last Change'
  laeda : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed By'
  @sap.quickinfo : 'Name of Person Who Changed Object'
  aenam : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Compl. maint. status'
  @sap.quickinfo : 'Maintenance status of complete material'
  vpsta : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance Status'
  pstat : String(15);
  @sap.label : 'DF at client level'
  @sap.quickinfo : 'Flag Material for Deletion at Client Level'
  lvorm : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Type'
  mtart : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry'
  mbrsh : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group'
  matkl : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Old material number'
  bismt : String(40);
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  meins : String(3);
  @sap.label : 'Order Unit'
  @sap.quickinfo : 'Purchase Order Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  bstme : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document'
  @sap.quickinfo : 'Document number (without document management system)'
  zeinr : String(22);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Type'
  @sap.quickinfo : 'Document type (without Document Management system)'
  zeiar : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Version'
  @sap.quickinfo : 'Document version (without Document Management system)'
  zeivr : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Page Format'
  @sap.quickinfo : 'Page Format of Document (without Document Management system)'
  zeifo : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Change No.'
  @sap.quickinfo : 'Document change number (without document management system)'
  aeszn : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Page Number'
  @sap.quickinfo : 'Page Number of document (without Document Management system)'
  blatt : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Number Of Sheets'
  @sap.quickinfo : 'Number Of Sheets (without Document Management system)'
  blanz : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Prod./insp. memo'
  @sap.quickinfo : 'Production/inspection memo'
  ferth : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Page format'
  @sap.quickinfo : 'Page Format of Production Memo'
  formt : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Size/dimensions'
  groes : String(32);
  @sap.label : 'Basic Material'
  wrkst : String(48);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry Std Desc.'
  @sap.quickinfo : 'Industry Standard Description (such as ANSI or ISO)'
  normt : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lab/Office'
  @sap.quickinfo : 'Laboratory/Design Office'
  labor : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing value key'
  @sap.quickinfo : 'Purchasing Value Key'
  ekwsl : String(4);
  @sap.label : 'Gross Weight'
  brgew : Decimal(13, 3);
  @sap.label : 'Net Weight'
  ntgew : Decimal(13, 3);
  @sap.label : 'Unit of Weight'
  @sap.semantics : 'unit-of-measure'
  gewei : String(3);
  @sap.label : 'Volume'
  volum : Decimal(13, 3);
  @sap.label : 'Volume Unit'
  @sap.semantics : 'unit-of-measure'
  voleh : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Container reqmts'
  @sap.quickinfo : 'Container requirements'
  behvo : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage conditions'
  raube : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Temp. conditions'
  @sap.quickinfo : 'Temperature conditions indicator'
  tempb : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Low-Level Code'
  disst : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportation Group'
  tragr : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Haz. material number'
  @sap.quickinfo : 'Hazardous material number'
  stoff : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  spart : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Competitor'
  kunnr : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'EAN Number'
  @sap.quickinfo : 'European Article Number (EAN) - obsolete!!!!!'
  eannr : String(13);
  @sap.label : 'GR slips quantity'
  @sap.quickinfo : 'Quantity: Number of GR/GI slips to be printed'
  wesch : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Procurement rule'
  bwvor : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Source of supply'
  @sap.quickinfo : 'Source of Supply'
  bwscl : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Season'
  @sap.quickinfo : 'Season Category'
  saiso : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Label type'
  etiar : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Label form'
  etifo : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Field deactivated'
  @sap.quickinfo : 'Deactivated'
  entar : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'EAN/UPC'
  @sap.quickinfo : 'International Article Number (EAN/UPC)'
  ean11 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'EAN Category'
  @sap.quickinfo : 'Category of International Article Number (EAN)'
  numtp : String(2);
  @sap.label : 'Length'
  laeng : Decimal(13, 3);
  @sap.label : 'Width'
  breit : Decimal(13, 3);
  @sap.label : 'Height'
  hoehe : Decimal(13, 3);
  @sap.label : 'Unit of Dimension'
  @sap.quickinfo : 'Unit of Dimension for Length/Width/Height'
  @sap.semantics : 'unit-of-measure'
  meabm : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Hierarchy'
  prdha : String(18);
  @sap.label : 'Net Change Costing'
  @sap.quickinfo : 'Stock Transfer Net Change Costing'
  aeklk : Boolean;
  @sap.label : 'CAD Indicator'
  cadkz : Boolean;
  @sap.label : 'QM in Procur. Active'
  @sap.quickinfo : 'QM in Procurement Is Active'
  qmpur : Boolean;
  @sap.label : 'Allowed Pkg wt'
  @sap.quickinfo : 'Allowed packaging weight'
  ergew : Decimal(13, 3);
  @sap.label : 'Unit of weight'
  @sap.quickinfo : 'Unit of weight (allowed packaging weight)'
  @sap.semantics : 'unit-of-measure'
  ergei : String(3);
  @sap.label : 'Allowed Volume'
  @sap.quickinfo : 'Allowed packaging volume'
  ervol : Decimal(13, 3);
  @sap.label : 'Volume unit'
  @sap.quickinfo : 'Volume unit (allowed packaging volume)'
  @sap.semantics : 'unit-of-measure'
  ervoe : String(3);
  @sap.label : 'Excess wt tolerance'
  @sap.quickinfo : 'Excess Weight Tolerance for Handling unit'
  gewto : Decimal(3, 1);
  @sap.label : 'Excess volume tol.'
  @sap.quickinfo : 'Excess Volume Tolerance of the Handling Unit'
  volto : Decimal(3, 1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Var. Order Unit'
  @sap.quickinfo : 'Variable Purchase Order Unit Active'
  vabme : String(1);
  @sap.label : 'Revision Level Assgd'
  @sap.quickinfo : 'Revision Level Has Been Assigned to the Material'
  kzrev : Boolean;
  @sap.label : 'Configrable Material'
  @sap.quickinfo : 'Configurable Material'
  kzkfg : Boolean;
  @sap.label : 'Batch Management'
  @sap.quickinfo : 'Batch Management Requirement Indicator'
  xchpf : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Packaging Mat. Type'
  @sap.quickinfo : 'Packaging Material Type'
  vhart : String(4);
  @sap.label : 'Maximum level'
  @sap.quickinfo : 'Maximum level (by volume)'
  fuelg : Decimal(3, 0);
  @sap.label : 'Stackability factor'
  @sap.quickinfo : 'Stacking factor'
  stfak : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Matl Grp Pack.Matls'
  @sap.quickinfo : 'Material Group: Packaging Materials'
  magrv : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  begru : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Valid-From Date'
  datab : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Deletion date'
  liqdt : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Season Year'
  saisj : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Price Band Category'
  plgtp : String(2);
  @sap.label : 'With Empties BOM'
  @sap.quickinfo : 'Empties Bill of Material'
  mlgut : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ext. Material Group'
  @sap.quickinfo : 'External Material Group'
  extwg : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cross-plant CM'
  @sap.quickinfo : 'Cross-Plant Configurable Material'
  satnr : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Category'
  attyp : String(2);
  @sap.label : 'Co-Product'
  kzkup : Boolean;
  @sap.label : 'Follow-up material'
  @sap.quickinfo : 'Indicator: The material has a follow-up material'
  kznfm : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pricing Ref. Matl'
  @sap.quickinfo : 'Pricing Reference Material'
  pmata : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'X-Plant Status'
  @sap.quickinfo : 'Cross-Plant Material Status'
  mstae : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'X-distr.chain status'
  @sap.quickinfo : 'Cross-Distribution-Chain Material Status'
  mstav : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Valid from'
  @sap.quickinfo : 'Date from which the cross-plant material status is valid'
  mstde : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Valid from'
  @sap.quickinfo : 'Date from which the X-distr.-chain material status is valid'
  mstdv : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax classification'
  @sap.quickinfo : 'Tax classification of the material'
  taklv : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Catalog Profile'
  rbnrm : String(9);
  @sap.label : 'Min. Rem. Shelf Life'
  @sap.quickinfo : 'Minimum Remaining Shelf Life'
  mhdrz : Decimal(4, 0);
  @sap.label : 'Total shelf life'
  mhdhb : Decimal(4, 0);
  @sap.label : 'Storage percentage'
  mhdlp : Decimal(3, 0);
  @sap.label : 'Content Unit'
  @sap.quickinfo : 'Content unit'
  @sap.semantics : 'unit-of-measure'
  inhme : String(3);
  @sap.label : 'Net Contents'
  inhal : Decimal(13, 3);
  @sap.label : 'ComparisonPriceUnit'
  @sap.quickinfo : 'Comparison price unit'
  vpreh : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Labeling matl grpg'
  @sap.quickinfo : 'IS-R Labeling: material grouping (deactivated in 4.0)'
  etiag : String(18);
  @sap.label : 'Gross Contents'
  @sap.quickinfo : 'Gross contents'
  inhbr : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conversion Method'
  @sap.quickinfo : 'Quantity Conversion Method'
  cmeth : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Internal object no.'
  @sap.quickinfo : 'Internal object number'
  cuobf : String(18);
  @sap.label : 'Environmentally rlvt'
  @sap.quickinfo : 'Environmentally Relevant'
  kzumw : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product allocation'
  @sap.quickinfo : 'Product allocation determination procedure'
  kosch : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pricing profile'
  @sap.quickinfo : 'Pricing profile for variants'
  sprof : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Qual.f.FreeGoodsDis.'
  @sap.quickinfo : 'Material qualifies for discount in kind'
  nrfhg : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mfr Part Number'
  @sap.quickinfo : 'Manufacturer Part Number'
  mfrpn : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Manufacturer'
  @sap.quickinfo : 'Number of a Manufacturer'
  mfrnr : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Int. material number'
  @sap.quickinfo : 'Number of firm''s own (internal) inventory-managed material'
  bmatn : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mfr Part Profile'
  mprof : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Units of meas. usage'
  @sap.quickinfo : 'Units of measure usage'
  kzwsm : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rollout'
  @sap.quickinfo : 'Rollout in a Season'
  saity : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'DG indicator profile'
  @sap.quickinfo : 'Dangerous Goods Indicator Profile'
  profl : String(3);
  @sap.label : 'Highly viscous'
  @sap.quickinfo : 'Indicator: Highly Viscous'
  ihivi : Boolean;
  @sap.label : 'In bulk/liquid'
  @sap.quickinfo : 'Indicator: In Bulk/Liquid'
  iloos : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serialization level'
  @sap.quickinfo : 'Level of Explicitness for Serial Number'
  serlv : String(1);
  @sap.label : 'Closed'
  @sap.quickinfo : 'Packaging Material is Closed Packaging'
  kzgvh : Boolean;
  @sap.label : 'Appr.Batch Recd Req.'
  @sap.quickinfo : 'Approved Batch Record Required'
  xgchp : Boolean;
  @sap.label : 'Assign effect. vals'
  @sap.quickinfo : 'Assign effectivity parameter values/ override change numbers'
  kzeff : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Comp. Level'
  @sap.quickinfo : 'Material completion level'
  compl : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Period Ind. for SLED'
  @sap.quickinfo : 'Period Indicator for Shelf Life Expiration Date'
  iprkz : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rounding rule SLED'
  @sap.quickinfo : 'Rounding rule for calculation of SLED'
  rdmhd : String(1);
  @sap.label : 'Product Composition'
  @sap.quickinfo : 'Indicator: Product composition printed on packaging'
  przus : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gen. item cat. grp'
  @sap.quickinfo : 'General item category group'
  mtpos_mara : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Log. variants'
  @sap.quickinfo : 'Generic Material with Logistical Variants'
  bflme : String(1);
  @sap.label : 'Material locked'
  @sap.quickinfo : 'Material Is Locked'
  matfi : Boolean;
  @sap.label : 'CM Relevant'
  @sap.quickinfo : 'Relevant for Configuration Management'
  cmrel : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Assortment List Type'
  bbtyp : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Expiration Date'
  sled_bbd : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'EAN Variant'
  @sap.quickinfo : 'Global Trade Item Number Variant'
  gtin_variant : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Generic Material'
  @sap.quickinfo : 'Material Number of the Generic Material in Prepack Materials'
  gennr : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ref. mat. for pckg'
  @sap.quickinfo : 'Reference material for materials packed in same way'
  rmatp : String(40);
  @sap.label : 'GDS-Relevant'
  @sap.quickinfo : 'Indicator: Global Data Synchronization-Relevant'
  gds_relevant : Boolean;
  @sap.label : 'Origin Acceptance'
  @sap.quickinfo : 'Acceptance At Origin'
  weora : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard HU Type'
  hutyp_dflt : String(4);
  @sap.label : 'Pilferable'
  pilferable : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Whse Stor. Condition'
  @sap.quickinfo : 'Warehouse Storage Condition'
  whstc : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'WH Material Group'
  @sap.quickinfo : 'Warehouse Material Group'
  whmatgr : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Handling Indicator'
  hndlcode : String(4);
  @sap.label : 'Relevant for HS'
  @sap.quickinfo : 'Relevant for Hazardous Substances'
  hazmat : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Handling Unit Type'
  hutyp : String(4);
  @sap.label : 'Varb. Tare Weight'
  @sap.quickinfo : 'Variable Tare Weight'
  tare_var : Boolean;
  @sap.label : 'Maximum Capacity'
  @sap.quickinfo : 'Maximum Allowed Capacity of Packaging Material'
  maxc : Decimal(15, 3);
  @sap.label : 'Overcapacity Toler.'
  @sap.quickinfo : 'Overcapacity Tolerance of the Handling Unit'
  maxc_tol : Decimal(3, 1);
  @sap.label : 'Max. Pack. Length'
  @sap.quickinfo : 'Maximum Packing Length of Packaging Material'
  maxl : Decimal(15, 3);
  @sap.label : 'Max. Pack. Width'
  @sap.quickinfo : 'Maximum Packing Width of Packaging Material'
  maxb : Decimal(15, 3);
  @sap.label : 'Max. Pack. Height'
  @sap.quickinfo : 'Maximum Packing Height of Packaging Material'
  maxh : Decimal(15, 3);
  @sap.label : 'Unit of Measurement'
  @sap.quickinfo : 'Unit of Measure for Maximum Packing Length/Width/Height'
  @sap.semantics : 'unit-of-measure'
  maxdim_uom : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cntry/Reg of Origin'
  @sap.quickinfo : 'Country/Region of Origin of Material (Non-Preferential Ori.)'
  herkl : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Freight Grp'
  @sap.quickinfo : 'Material Freight Group'
  mfrgr : String(8);
  @sap.label : 'Quarant. Per.'
  @sap.quickinfo : 'Quarantine Period'
  qqtime : Decimal(3, 0);
  @sap.label : 'Time Unit'
  @sap.quickinfo : 'Time Unit for Quarantine Period'
  @sap.semantics : 'unit-of-measure'
  qqtimeuom : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Quality Inspec. Grp'
  @sap.quickinfo : 'Quality Inspection Group'
  qgrp : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Serial No. Profile'
  @sap.quickinfo : 'Serial Number Profile'
  serial : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Form Name'
  ps_smartform : String(30);
  @sap.label : 'Logistics UoM'
  @sap.quickinfo : 'EWM CW: Logistics Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  logunit : String(3);
  @sap.label : 'CW-Relevant'
  @sap.quickinfo : 'EWM CW: Material Is a Catch Weight Material'
  cwqrel : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'CW Profile'
  @sap.quickinfo : 'EWM CW: Catch Weight Profile for Entering CW Quantity'
  cwqproc : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Catch Wt Tol. Grp'
  @sap.quickinfo : 'Catch Weight Tolerance Group'
  cwqtolgr : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Adjust. Profile'
  @sap.quickinfo : 'Adjustment Profile'
  adprof : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Intel. Property'
  @sap.quickinfo : 'ID for an Intellectual Property (CRM Product)'
  ipmipproduct : String(40);
  @sap.label : 'Var. Price Allowed'
  @sap.quickinfo : 'Variant Price Allowed (for Material Master)'
  allow_pmat_igno : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Medium'
  medium : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commodity'
  commodity : String(18);
  @sap.label : 'Animal Origin'
  @sap.quickinfo : 'Indicator: Contains Non-Textile Parts of Animal Origin'
  animal_origin : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'TexCompActive'
  @sap.quickinfo : 'Indicator: New Textile Composition Function'
  textile_comp_ind : String(1);
  @sap.label : 'Last Changed Time'
  @sap.quickinfo : 'Time of Last Change'
  last_changed_time : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'External Representation of Material Number'
  matnr_external : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chemical Compliance Relevance Indicator'
  chml_cmplnc_rlvnce_ind : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Logl Material Cat.'
  @sap.quickinfo : 'Category of a Logistical Material'
  logistical_mat_category : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Material No.'
  @sap.quickinfo : 'Material Number of a Sales Material'
  sales_material : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tag Type'
  @sap.quickinfo : 'Identification Tag Type'
  identification_tag_type : String(2);
  @sap.label : 'Product OID'
  @sap.quickinfo : 'Data element for OID of product'
  productoid : String(128);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Migration Status'
  @sap.quickinfo : 'Silent Data migration status from MARA table'
  sdm_version : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Seg. Structure'
  @sap.quickinfo : 'Segmentation Structure'
  sgt_csgr : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Seg. Strategy'
  @sap.quickinfo : 'Segmentation Strategy'
  sgt_covsa : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Segmentation Status'
  @sap.quickinfo : 'Segmentation Material Master Status'
  sgt_stat : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Seg. Scope'
  @sap.quickinfo : 'Segmentation Strategy Scope'
  sgt_scope : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Seg. Relevant'
  @sap.quickinfo : 'Segmentation Relevant'
  sgt_rel : String(1);
  @sap.label : 'Gamma'
  zz1_gamma_prd : String(40);
  @sap.label : 'Altezza Utile Pezza'
  zz1_altezzautilepezza_prd : Decimal(15, 3);
  @sap.label : 'Altezza Ut Pezza UoM'
  @sap.quickinfo : 'Altezza Utile Pezza (Unit)'
  @sap.semantics : 'unit-of-measure'
  zz1_altezzautilepezza_prdu : String(3);
  @sap.label : 'Tipo Pelliccia'
  zz1_tipo_pelliccia_prd : String(1);
  @sap.label : 'Altezza Teor Pezza'
  @sap.quickinfo : 'Altezza Teorica Pezza'
  zz1_altezzateoricapezz_prd : Decimal(15, 3);
  @sap.label : 'Altezza Teor Pez UoM'
  @sap.quickinfo : 'Altezza Teorica Pezza (Unit)'
  @sap.semantics : 'unit-of-measure'
  zz1_altezzateoricapezz_prdu : String(3);
  @sap.label : 'Gola'
  zz1_gola_prd : String(18);
  @sap.label : 'Coda'
  zz1_coda_prd : String(18);
  @sap.label : 'Lunghezza Teorica'
  zz1_lunghezzateorica_prd : Decimal(15, 3);
  @sap.label : 'Lunghezza Teoric UoM'
  @sap.quickinfo : 'Lunghezza Teorica (Unit)'
  @sap.semantics : 'unit-of-measure'
  zz1_lunghezzateorica_prdu : String(3);
  @sap.label : 'Kit'
  zz1_kit_value_prd : String(1);
  @sap.label : 'Titolo Filato'
  zz1_titolo_filato_prd : String(3);
  @sap.label : 'Grammatura'
  zz1_grammatura_prd : Decimal(15, 3);
  @sap.label : 'Grammatura UoM'
  @sap.quickinfo : 'Grammatura (Unit)'
  @sap.semantics : 'unit-of-measure'
  zz1_grammatura_prdu : String(3);
  @sap.label : 'Dichiarazione 3'
  zz1_dichiarazione3_prd : String(3);
  @sap.label : 'Contiene pelle'
  zz1_contiene_pelle_prd : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Numero di fili'
  zz1_numerofili_prd : String(3);
  @sap.label : 'Fether'
  zz1_zpiuma_prd : String(1);
  @sap.label : 'Materiale_Critico'
  zz1_materiale_critico_prd : String(1);
  @sap.label : 'Business Line'
  zz1_businessline_prd : String(5);
  @sap.label : 'Codice Terzista Prod'
  @sap.quickinfo : 'Codice Terzista Produzione'
  zz1_codiceterzistaprod_prd : String(10);
  @sap.label : 'Lavorazione'
  zz1_lavorazione_prd : String(5);
  @sap.label : 'Water Resistant'
  zz1_water_resistant_prd : String(1);
  @sap.label : 'Spessore Pellame'
  zz1_spessorepellame_prd : Decimal(15, 3);
  @sap.label : 'Spessore Pellame UoM'
  @sap.quickinfo : 'Spessore Pellame (Unit)'
  @sap.semantics : 'unit-of-measure'
  zz1_spessorepellame_prdu : String(3);
  @sap.label : 'Terzista Campionario'
  zz1_terzistacampionari_prd : String(10);
  @sap.label : 'Tipo Gestione'
  zz1_tipo_gestione_prd : String(1);
  @sap.label : 'Punto'
  zz1_punto_prd : String(3);
  @sap.label : 'Flag Gestione Fiscal'
  @sap.quickinfo : 'Flag Gestione Fiscale'
  zz1_flag_gest_fiscale_prd : String(1);
  @sap.label : 'Numero Lavaggio'
  zz1_numerolavaggio_prd : String(5);
  @sap.label : 'Contiene Pelliccia'
  zz1_contienepelliccia_prd : String(1);
  @sap.label : 'Business Unit'
  zz1_businessunit_prd : String(5);
  @sap.label : 'Tipo Struttura'
  zz1_tipostruttura_prd : String(5);
  @sap.label : 'Codice Terzista Prot'
  @sap.quickinfo : 'Codice Terzista Prototipia'
  zz1_codiceterzistaprot_prd : String(10);
  @sap.label : 'Default Supplier'
  @sap.quickinfo : 'Default Default Supplier'
  zz1_lifnr_prd : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. Char. Number'
  @sap.quickinfo : 'Internal Charactieristic Number for Color Characteristics'
  color_atinn : String(30);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. Char. Number'
  @sap.quickinfo : 'Internal Char. Number for Characteristics for Main Sizes'
  size1_atinn : String(30);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. Char. Number'
  @sap.quickinfo : 'Internal Char. Number for Characteristics for Second Sizes'
  size2_atinn : String(30);
  @sap.label : 'Color'
  @sap.quickinfo : 'Characteristic Value for Colors of Variants'
  color : String(18);
  @sap.label : 'Main Size'
  @sap.quickinfo : 'Characteristic Value for Main Sizes of Variants'
  size1 : String(18);
  @sap.label : 'Second Size'
  @sap.quickinfo : 'Characteristic Value for Second Size for Variants'
  size2 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Proj Code'
  zzproj : String(7);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Proj Description'
  zzprojdesc : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Macro Business'
  zzmacrobusi : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business'
  zzbusi : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Category'
  zzcategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Segment'
  zzsubsegm : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Color'
  zzcolor : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Line'
  zzlinea : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Production'
  zzprodspec : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Family'
  zzfamiglia : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Class Description'
  zzclasse : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sub Category'
  zzsubclasse : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Macro Type'
  zzmacrotipo : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commercial Model'
  zzmodcomm : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commercial Material'
  zztescomm : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cites'
  zzcites : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Declaration'
  zzdichi : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mid Code Usa'
  zzmidusa : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stitching'
  zzstitching : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Package'
  zzpackage : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gender'
  zzgenere : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Appeso/Steso'
  @sap.quickinfo : 'Disposition'
  zzdispo : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Principal Comp.'
  @sap.quickinfo : 'Principal Composition'
  zztipocomp : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcodecomp : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Size Grid'
  zztaglia : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Size'
  zztagliadesc : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sale Code'
  zzobsoleto : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Use'
  zzuso : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Top/Bottom'
  zztopbot : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Twin item'
  zzmatgm : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon01 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos01 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon02 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos02 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon03 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos03 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon04 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos04 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon05 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos05 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon06 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos06 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon07 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos07 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon08 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos08 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon09 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos09 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon10 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos10 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon11 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos11 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon12 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos12 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon13 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos13 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon14 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos14 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  zzcompon15 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Composition'
  zzcompos15 : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preferential origin'
  zzop : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Design Flow'
  zzdesignflow : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Macro Category'
  zzmacrocategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Birth Date Year'
  zzbirthdate_year : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Birth Date Season'
  zzbirthdate_season : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mix Code'
  zzimpasto : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dye Type'
  @sap.quickinfo : 'Dyeing Type'
  zztipotintura : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Selvedge'
  @sap.quickinfo : 'Standard Cimossa of article'
  zzcodice5std : String(8);
  @sap.label : 'Min. Finished Weight'
  @sap.quickinfo : 'Minimum Finished Weight'
  zzpesfinmin : Decimal(13, 3);
  @sap.label : 'Max Finished Weight'
  @sap.quickinfo : 'Maximum Finished Weight'
  zzpesfinmax : Decimal(13, 3);
  @sap.label : 'Real Finished Weight'
  zzpesfinreale : Decimal(13, 3);
  @sap.label : 'Finished wgt. GR/SQM'
  zzpesfinitogrmq : Decimal(13, 3);
  @sap.label : 'MIN Finished Width'
  zzaltfinmin : Decimal(13, 3);
  @sap.label : 'MAX Finished Width'
  zzaltfinmax : Decimal(13, 3);
  @sap.label : 'Useful width'
  zzaltutile : Decimal(13, 3);
  @sap.label : 'Packing Type'
  @sap.semantics : 'unit-of-measure'
  zztipconf : String(3);
  @sap.label : 'of'
  @sap.quickinfo : 'Pack Quantity'
  zzqtconf : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Yarn fineness'
  zzfinezzafil : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiber fineness'
  zzfinezzafibre : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Class. 1'
  @sap.quickinfo : '1° Style Tech. Class.'
  zzclastech1 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Class. 2'
  @sap.quickinfo : '2° Style Tech. Class.'
  zzclastech2 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Class. 3'
  @sap.quickinfo : '3° Style Tech. Class.'
  zzclastech3 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Class. 4'
  @sap.quickinfo : '4° Style Tech. Class.'
  zzclastech4 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Class. 5'
  @sap.quickinfo : '5° Style Tech. Class.'
  zzclastech5 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Class. 6'
  @sap.quickinfo : '6° Style Tech. Class.'
  zzclastech6 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Class. 7'
  @sap.quickinfo : '7° Style Tech. Class.'
  zzclastech7 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Price Cat. 1'
  @sap.quickinfo : '8° Style Tech. Class.'
  zzclastech8 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Class. 9'
  @sap.quickinfo : '9° Style Tech. Class.'
  zzclastech9 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Class. 10'
  @sap.quickinfo : '10° Style Tech. Class.'
  zzclastech10 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Inv. Class. 1'
  @sap.quickinfo : 'Billing Classification 1'
  zzclasfattes1 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Inv. Class. 2'
  @sap.quickinfo : 'Billing Classification 2'
  zzclasfattes2 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Inv. Class. 3'
  @sap.quickinfo : 'Billing Classification 3'
  zzclasfattes3 : String(3);
  @sap.label : 'Made in LP'
  @sap.quickinfo : 'Made in LoroPiana'
  zzmade_loropiana : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Family'
  @sap.quickinfo : 'SAP Product Family'
  zzfamigliasapgenerico : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Class. 1'
  @sap.quickinfo : 'Commercial Classification 1'
  zzclascomm1 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Class. 2'
  @sap.quickinfo : 'Commercial Classification 2'
  zzclascomm2 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Class. 3'
  @sap.quickinfo : 'Commercial Classification 3'
  zzclascomm3 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Class. 4'
  @sap.quickinfo : 'Commercial Classification 4'
  zzclascomm4 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Class. 5'
  @sap.quickinfo : 'Commercial Classification 5'
  zzclascomm5 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Class. 6'
  @sap.quickinfo : 'Commercial Classification 6'
  zzclascomm6 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Class. 7'
  @sap.quickinfo : 'Commercial Classification 7'
  zzclascomm7 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Class. 8'
  @sap.quickinfo : 'Commercial Classification 8'
  zzclascomm8 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Class. 9'
  @sap.quickinfo : 'Commercial Classification 9'
  zzclascomm9 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Class. 10'
  @sap.quickinfo : 'Commercial Classification 10'
  zzclascomm10 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Theo. Mix Code'
  @sap.quickinfo : 'Theorical Mix Code'
  zzimpastoteorico : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Base Color'
  zzfondo : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bunch'
  @sap.quickinfo : 'Bunch Code'
  zzbunch : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Page nr.'
  @sap.quickinfo : 'Page Number'
  zzpagina : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Step'
  zzgradino : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequence'
  zzsequenza : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Color Cost'
  zzcolorecosto : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Season Status'
  @sap.quickinfo : 'Season Article Status Changed'
  zzstagstato : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User ERP Status'
  @sap.quickinfo : 'User Change ERP Status'
  zzutestato : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User ERP Update'
  @sap.quickinfo : 'User Change ERP system'
  zzutevariaz : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Upd ERP Date'
  @sap.quickinfo : 'Date Change ERP system'
  zzdatavariaz : Date;
  @sap.label : 'Trademark'
  @sap.quickinfo : 'Trademark Flag'
  zzflagmarchio : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Class 1 Val.Art.'
  @sap.quickinfo : 'Class 1 Valuation Article'
  zzclassval1 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Class. 12'
  @sap.quickinfo : '12° Style Tech. Class.'
  zzclasstech12 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'GB18401 Variant'
  zzvariantegb : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Price Cat. 2'
  @sap.quickinfo : 'Class by Price List'
  zzclasslisvend2 : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'ID Barcode'
  @sap.quickinfo : 'ID Article BARCODE'
  zzbarcode : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Id. Art. Comm.'
  @sap.quickinfo : 'Internal ID code for Commercial Articles'
  zzidgeartco : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Decl. 2'
  @sap.quickinfo : 'Declaration 2'
  zzdich2 : String(3);
  @sap.label : 'Fur'
  zzfur : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Flammable'
  zzflammable : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ownership'
  zzownership : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Category'
  zzsalescat : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'NRF Color Code'
  zznrfcol : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Color Family'
  zzfamily_col : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Lifecycle Status'
  @sap.quickinfo : 'Lifecycle Status (related art.)'
  zzlifecycstatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Physical Status'
  @sap.quickinfo : 'Phisical Status'
  zzphisicalstat : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Knitted / Woven'
  zzknitted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Royalty'
  zzroyalty : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm.Tr.Code'
  @sap.quickinfo : 'Commercial treatment code'
  zzcomm_trat : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'End Of Life'
  zzendoflife : String(10);
  @sap.label : 'NRF Size Code'
  zznrftg : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ess.LifeC. Manag.'
  @sap.quickinfo : 'Essential Lifecycle management'
  zzesslifecycle : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Essential phase'
  zzessphase : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Knitt. Progr.'
  @sap.quickinfo : 'Knitted Program'
  zzknitted_prog : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Parts in invoice'
  zzpartsinv : String(5);
};

