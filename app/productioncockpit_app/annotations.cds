using CatalogService as service from '../../srv/cat-service';
annotate service.ZZ1_PRODUCTION_COCKPIT_API with @(
    UI.LineItem #tableMacro : [
        {
            $Type : 'UI.DataField',
            Value : ManufacturingOrder,
            Label : 'ManufacturingOrder',
        },
        {
            $Type : 'UI.DataField',
            Value : CprodOrd,
            Label : 'CprodOrd',
        },
        {
            $Type : 'UI.DataField',
            Value : CompanyCode,
            Label : 'CompanyCode',
        },
        {
            $Type : 'UI.DataField',
            Value : Material,
            Label : 'Material',
        },
        {
            $Type : 'UI.DataField',
            Value : Product,
        },
        {
            $Type : 'UI.DataField',
            Value : ProductSeason,
            Label : 'ProductSeason',
        },
        {
            $Type : 'UI.DataField',
            Value : ActualDeliveredQuantity,
            Label : 'ActualDeliveredQuantity',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductCollection,
            Label : 'ProductCollection',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductSeasonYear,
            Label : 'ProductSeasonYear',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductTheme,
            Label : 'ProductTheme',
        },

    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Componenti',
            ID : 'Componenti',
            Target : 'to_ZZ1_C_MASTERORDER_COMP/@UI.LineItem#Componenti',
        },
    ],
);

annotate service.ZZ1_C_MASTERPRODORDER with @(
    UI.LineItem #tableMacro1 : [
        {
            $Type : 'UI.DataField',
            Value : MasterProductionOrder,
            Label : 'Master Order',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductionPlant,
            Label : 'Plant Produttivo',
        },
        {
            $Type : 'UI.DataField',
            Value : ManufacturingOrderType,
            Label : 'Tipo Ordine',
        },
        {
            $Type : 'UI.DataField',
            Value : StockSegment,
            Label : 'Segmento di Stock',
        },
        {
            $Type : 'UI.DataField',
            Value : RowCriticalityValue,
            Criticality : RowCriticality,
            Label : '{i18n>criticalComponents}',
             ![@HTML5.CssDefaults] : {
                width : '3rem',
            }
        },
       /*  {
            $Type : 'UI.DataField',
            Value : ActualDeliveredQuantity,
            Label : 'ActualDeliveredQuantity',
        }, */
        {
            $Type : 'UI.DataField',
            Value : CrossPlantConfigurableProduct,
            Label : 'Prodotto Finito',
        },
         {
            $Type : 'UI.DataField',
            Value : ProductCollection,
            Label : 'Collezione',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductSeason,
            Label : 'Stagione',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductSeasonYear,
            Label : 'Anno',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductTheme,
            Label : 'Tema',
        },
        {
            $Type : 'UI.DataField',
            Value : TotMfgOrderPlannedTotalQty,
            Label : 'Quantità Totale Ordine',
        },
        {
            $Type : 'UI.DataField',
            Value : CreationDate,
            Label : 'CreationDate',
        },
        {
            $Type : 'UI.DataField',
            Value : OrderPersonalization,
            Label : 'OrderPersonalization',
            ![@UI.hidden] : true
        },
    ],
    UI.SelectionFields #filterBarMacro1 : [
        ProductionPlant,
        CombinedOrder,
        MasterProductionOrder,
        ManufacturingOrderType,
        StockSegment,
        CrossPlantConfigurableProduct,
        ProductSeason,
        ProductSeasonYear,
        ProductCollection,
        ProductTheme,
        MRPController,
        OrderIsReleased,
        OrderHasMissingComponents,
        OrganizationBPName1,
        CreationDate
    ],

    Capabilities.FilterRestrictions : {
        RequiredProperties : [
            ProductionPlant
        ]
    }
);

annotate service.ZZ1_PRODUCTION_COCKPIT_API with {
    ManufacturingOrder @Common.Label : 'ManufacturingOrder'
};

annotate service.ZZ1_C_COMBINEDPRODORDER with @(
    UI.LineItem #tableMacro2 : [
        {
            $Type : 'UI.DataField',
            Value : CombinedOrder,
            Label : 'Ordine Combinato',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductionPlant,
            Label : 'Plant Produttivo',
        },
        {
            $Type : 'UI.DataField',
            Value : ManufacturingOrderType,
            Label : 'Tipo Ordine',
        },
        {
            $Type : 'UI.DataField',
            Value : StockSegment,
            Label : 'Segmento di Stock',
        },
        {
            $Type : 'UI.DataField',
            Value : RowCriticalityValue,
            Criticality : RowCriticality,
            Label : '{i18n>criticalComponents}',
             ![@HTML5.CssDefaults] : {
                width : '3rem',
            }
        },
        {
            $Type : 'UI.DataField',
            Value : CrossPlantConfigurableProduct,
            Label : 'Prodotto Finito',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductCollection,
            Label : 'Collezione',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductSeason,
            Label : 'Stagione',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductSeasonYear,
            Label : 'Anno',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductTheme,
            Label : 'Tema',
        },
        {
            $Type : 'UI.DataField',
            Value : TotMfgOrderPlannedTotalQty,
            Label : 'Quantità Totale Ordine',
        },
        {
            $Type : 'UI.DataField',
            Value : OrganizationBPName1,
            Label : 'Fornitore della fase principale',
        },
        {
            $Type : 'UI.DataField',
            Value : CreationDate,
            Label : 'CreationDate',
        }
    ]
);

annotate CatalogService.ZZ1_C_MASTERPRODORDER with {
    ProductionPlant @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ZC_RFM_PRODUCTION_PLANT_F4',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : ProductionPlant,
                    ValueListProperty : 'Plant',
                },
                {
                    $Type: 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'PlantName'
                }
            ],
            Label : '{i18n>plant}',
        },
        Common.ValueListWithFixedValues : false
)};

annotate CatalogService.ZZ1_C_MASTERPRODORDER with {
    MRPController @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ZC_RFM_MRPCONTROLLER_F4',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : MRPController,
                    ValueListProperty : 'MRPController',
                },
                {
                    $Type: 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'MRPControllerName'
                }
            ],
            Label : '{i18n>MRPController}',
        },
        Common.ValueListWithFixedValues : false
)};

annotate service.ZZ1_C_MASTERORDER_COMP with @(
    UI.SelectionFields #MasterComp : [Material],
    UI.DataPoint #radialChart                  : {
        Value      : chart_percent,
        Criticality: chart_criticality,
    },
    UI.Chart #radialChart                      : {
        Title            : 'chart_percent',
        Description      : 'chart_percent',
        ChartType        : #Donut,
        Measures         : [chart_percent],
        MeasureAttributes: [{
            $Type    : 'UI.ChartMeasureAttributeType',
            Measure  : chart_percent,
            Role     : #Axis1,
            DataPoint: '@UI.DataPoint#radialChart',
        }]
    },
    UI.LineItem #Componenti : [
    ],
    UI.LineItem #tableMacroComponents : [
        {
            $Type : 'UI.DataField',
            Value : FshMprodOrd,
            Label : '{i18n>fshMprodOrd}',
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : Material,
            Label : 'Materiale',
            ![@HTML5.CssDefaults]: {width: '9rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : ProductDescription,
            Label : 'Desc. Materiale',
            ![@HTML5.CssDefaults]: {width: '20rem',
            },
        }, 
        {
            $Type : 'UI.DataField',
            Value : Batch,
            Label : 'Batch',
        },
        {
            $Type                : 'UI.DataFieldForAnnotation',
            Target               : '@UI.Chart#radialChart',
            Label                : '{i18n>Availability}',
            ![@HTML5.CssDefaults]: {width: '5rem',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : TotalQuantityInEntryUnit,
            Label : 'Quantità Tot Fabbisogno',
        },
        {
            $Type : 'UI.DataField',
            Value : EntryUnit,
            Label : 'Unità di Misura',
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : NOTE,
            Label : 'Note',
        },
        {
            $Type : 'UI.DataField',
            Value : REASON,
            Label : 'Motivo',
        },
        {
            $Type : 'UI.DataField',
            Value : ReservationIsFinallyIssued,
            Label : 'Chiusura Fabbisogno',
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : Plant,
            Label : 'Plant',
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : Lgort1,
            Label : 'Magazzino',
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
    ],
);

annotate service.ZZ1_C_MASTERORDER_COMP with @(
    UI.SelectionFields #MasterKitting : [Material],
    UI.LineItem #tableMacroKitting : [
        {
            $Type : 'UI.DataField',
            Value : FshMprodOrd,
            Label : '{i18n>masterOrder}',
            ![@HTML5.CssDefaults] : {
                width : '5%',
            },
        },        
        {
            $Type : 'UI.DataField',
            Value : Material,
            Label : '{i18n>material}',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductDescription,
            Label : '{i18n>materialDescription}',
            ![@HTML5.CssDefaults] : {
                width : '15%',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : TotalWithdrawnQuantity,
            Label : '{i18n>qty}'
        },
        {
            $Type : 'UI.DataField',
            Value : TotalQuantityInEntryUnit,
            Label : '{i18n>totalQty}',
        },
        {
            $Type : 'UI.DataField',
            Value : EntryUnit,
            Label : '{i18n>unitMeasure}',
        },
        {
            $Type : 'UI.DataField',
            Value : Plant,
            Label : '{i18n>plant}',
        },
        {
            $Type : 'UI.DataField',
            Value : StorageLocation,
            Label : '{i18n>storageLocation}',
        },
        {
            $Type : 'UI.DataField',
            Value : RequirementSegment,
            Label : '{i18n>stockSegment}',
        },
        {
            $Type : 'UI.DataField',
            Value : Batch,
            Label : '{i18n>batch}',
        },
    ],
);

annotate service.ZZ1_C_COMBORDER_COMP with @(
    UI.SelectionFields #CombinedKitting : [Material],
    UI.LineItem #tableMacroCombinedKitting : [
        {
            $Type : 'UI.DataField',
            Value : CprodOrd,
            Label : '{i18n>masterOrder}',
            ![@HTML5.CssDefaults] : {
                width : '5%',
            },
        },        
        {
            $Type : 'UI.DataField',
            Value : Material,
            Label : '{i18n>material}',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductDescription,
            Label : '{i18n>materialDescription}',
            ![@HTML5.CssDefaults] : {
                width : '15%',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : TotalWithdrawnQuantity,
            Label : '{i18n>qty}'
        },
        {
            $Type : 'UI.DataField',
            Value : TotalQuantityInEntryUnit,
            Label : '{i18n>totalQty}',
        },
        {
            $Type : 'UI.DataField',
            Value : EntryUnit,
            Label : '{i18n>unitMeasure}',
        },
        {
            $Type : 'UI.DataField',
            Value : Plant,
            Label : '{i18n>plant}',
        },
        {
            $Type : 'UI.DataField',
            Value : StorageLocation,
            Label : '{i18n>storageLocation}',
        },
        {
            $Type : 'UI.DataField',
            Value : RequirementSegment,
            Label : '{i18n>stockSegment}',
        },
        {
            $Type : 'UI.DataField',
            Value : Batch,
            Label : '{i18n>batch}',
        },
    ],
);

annotate service.ZZ1_C_MFG_MASTEROPER_SUM with @(
    UI.LineItem #tableMacroOperations : [
        {
            $Type : 'UI.DataField',
            Value : ObjectInternalID,
            Criticality : RowCriticality,
            Label : '{i18n>statusProgress}',
             ![@HTML5.CssDefaults] : {
                width : '3rem',
            }
        },
        {
            $Type : 'UI.DataField',
            Value : MasterProductionOrder,
            Label : '{i18n>masterProductionOrder}',
            ![@HTML5.CssDefaults] : {
                width : '3%',
            }
        },
        {
            $Type : 'UI.DataField',
            Value : ManufacturingOrderOperation,
            Label : '{i18n>manufacturingOrderOperation}',
        },
        {
            $Type : 'UI.DataField',
            Value : ManufacturingOrderSequence,
            Label : '{i18n>manufacturingOrderSequence}',
        },
        {
            $Type : 'UI.DataField',
            Value : WorkCenter,
            Label : '{i18n>workCenter}',
        },
        {
            $Type : 'UI.DataField',
            Value : WorkCenterInternalID,
            Label : '{i18n>workCenterInternalID}',
        },
        {
            $Type : 'UI.DataField',
            Value : WorkCenterInternalID_1_Text,
            Label : '{i18n>workCenterInternalID_1_Text}',
            ![@HTML5.CssDefaults] : {
                width : '10%',
            }
        },
        {
            $Type : 'UI.DataField',
            Value : OpExternalProcessingPrice,
            Label : '{i18n>price}',
        },
        {
            $Type : 'UI.DataField',
            Value : SumOpPlannedTotalQuantity,
            Label : '{i18n>sumOpPlannedTotalQuantity}',
        },
        {
            $Type : 'UI.DataField',
            Value : SumOpTotalConfirmedYieldQty,
            Label : '{i18n>sumOpTotalConfirmedYieldQty}',
        },
        {
            $Type : 'UI.DataField',
            Value : SumOpTotalConfirmedReworkQty,
            Label : '{i18n>sumOpTotalConfirmedReworkQty}',
        },
        {
            $Type : 'UI.DataField',
            Value : SumOpTotalConfirmedScrapQty,
            Label : '{i18n>sumOpTotalConfirmedScrapQty}',
        },
        {
            $Type : 'UI.DataField',
            Value : Plant,
            Label : '{i18n>plant}',
        },
        {
            $Type : 'UI.DataField',
            Value : flagPurchaseOrder,
            Label : '{i18n>flagPurchaseOrder}',
        },
        {
            $Type : 'UI.DataField',
            Value : PurchaseOrder,
            Label : '{i18n>purchaseOrder}',
        },
    ]
);

annotate service.ZZ1_C_MFG_COMBINEDOPER_SUM with @(
    UI.LineItem #tableMacroCombinedOperations : [
        {
            $Type : 'UI.DataField',
            Value : ObjectInternalID,
            Criticality : RowCriticality,
            Label : '{i18n>statusProgress}',
             ![@HTML5.CssDefaults] : {
                width : '3rem',
            }
        },
        {
            $Type : 'UI.DataField',
            Value : CprodOrd,
            Label : '{i18n>cprodOrd}',
            ![@HTML5.CssDefaults] : {
                width : '3%',
            }
        },
        {
            $Type : 'UI.DataField',
            Value : ManufacturingOrderOperation,
            Label : '{i18n>manufacturingOrderOperation}',
        },
        {
            $Type : 'UI.DataField',
            Value : ManufacturingOrderSequence,
            Label : '{i18n>manufacturingOrderSequence}',
        },
        {
            $Type : 'UI.DataField',
            Value : WorkCenter,
            Label : '{i18n>workCenter}',
        },
        {
            $Type : 'UI.DataField',
            Value : WorkCenterInternalID,
            Label : '{i18n>workCenterInternalID}',
        },
        {
            $Type : 'UI.DataField',
            Value : WorkCenterInternalID_1_Text,
            Label : '{i18n>workCenterInternalID_1_Text}',
            ![@HTML5.CssDefaults] : {
                width : '10%',
            }
        },
        {
            $Type : 'UI.DataField',
            Value : OpExternalProcessingPrice,
            Label : '{i18n>price}',
        },
        {
            $Type : 'UI.DataField',
            Value : SumOpPlannedTotalQuantity,
            Label : '{i18n>sumOpPlannedTotalQuantity}',
        },
        {
            $Type : 'UI.DataField',
            Value : SumOpTotalConfirmedYieldQty,
            Label : '{i18n>sumOpTotalConfirmedYieldQty}',
        },
        {
            $Type : 'UI.DataField',
            Value : SumOpTotalConfirmedReworkQty,
            Label : '{i18n>sumOpTotalConfirmedReworkQty}',
        },
        {
            $Type : 'UI.DataField',
            Value : SumOpTotalConfirmedScrapQty,
            Label : '{i18n>sumOpTotalConfirmedScrapQty}',
        },
        {
            $Type : 'UI.DataField',
            Value : Plant,
            Label : '{i18n>plant}',
        },
    ]
);

annotate service.ZZ1_C_COMBORDER_COMP with @(
    UI.SelectionFields #CombinedComp : [Material],
         UI.DataPoint #radialChart                  : {
        Value      : chart_percent,
        Criticality: chart_criticality,
    },
    UI.Chart #radialChart                      : {
        Title            : 'chart_percent',
        Description      : 'chart_percent',
        ChartType        : #Donut,
        Measures         : [chart_percent],
        MeasureAttributes: [{
            $Type    : 'UI.ChartMeasureAttributeType',
            Measure  : chart_percent,
            Role     : #Axis1,
            DataPoint: '@UI.DataPoint#radialChart',
        }]
    },
    UI.LineItem #tableMacroCombinedComponents : [
        {
            $Type : 'UI.DataField',
            Value : CprodOrd,
            Label : 'Ord. Comb.',
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : Material,
            Label : 'Materiale',
            ![@HTML5.CssDefaults]: {width: '9rem'}
        },  
        {
            $Type : 'UI.DataField',
            Value : ProductDescription,
            Label : 'Desc. Materiale',
            ![@HTML5.CssDefaults]: {width: '20rem',
            },
        }, 
        {
            $Type : 'UI.DataField',
            Value : Batch,
            Label : 'Batch',
        },
        {
            $Type                : 'UI.DataFieldForAnnotation',
            Target               : '@UI.Chart#radialChart',
            Label                : '{i18n>Availability}',
            ![@HTML5.CssDefaults]: {width: '5rem',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : TotalQuantityInEntryUnit,
            Label : 'Quantità Tot Fabbisogno',
        },
        {
            $Type : 'UI.DataField',
            Value : EntryUnit,
            Label : 'Unità di Misura',
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : NOTE,
            Label : 'Note',
        },
        {
            $Type : 'UI.DataField',
            Value : REASON,
            Label : 'Motivo',
        },
        {
            $Type : 'UI.DataField',
            Value : ReservationIsFinallyIssued,
            Label : 'Chiusura Fabbisogno',
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : Plant,
            Label : 'Plant',
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : Lgort1,
            Label : 'Magazzino',
            ![@HTML5.CssDefaults]: {width: '5rem'}
        }
    ]
);

annotate service.ZZ1_C_UNION_PROD_COMP  with @(
    UI.LineItem #tableMacroComponentsorder : [
        {
            $Type : 'UI.DataField',
            Value : Material,
            Label : 'Material',
        },
        {
            $Type : 'UI.DataField',
            Value : MaterialGroup,
            Label : 'MaterialGroup',
        },
        {
            $Type : 'UI.DataField',
            Value : ManufacturingOrderOperation,
            Label : 'ManufacturingOrderOperation',
        }
    ]
);

annotate service.ZZ1_C_MFG_ORDEROPE  with @(
    UI.LineItem #tableMacroOperationsorder : [
        {
            $Type : 'UI.DataField',
            Value : MaterialGroup,
            Label : 'MaterialGroup',
        },
        {
            $Type : 'UI.DataField',
            Value : ManufacturingOrder,
            Label : 'ManufacturingOrder',
        },
        {
            $Type : 'UI.DataField',
            Value : ManufacturingOrderOperation,
            Label : 'ManufacturingOrderOperation',
        }
    ]
);


