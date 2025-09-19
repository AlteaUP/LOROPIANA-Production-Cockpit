using CatalogService as service from '../../srv/cat-service';
annotate service.ZZ1_I_COMBPRODORDAPI with @(
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
            Label : 'MasterProductionOrder',
        },
        {
            $Type : 'UI.DataField',
            Value : CombinedOrder,
            Label : 'CombinedOrder',
        },
        {
            $Type : 'UI.DataField',
            Value : ActualDeliveredQuantity,
            Label : 'ActualDeliveredQuantity',
        },
        {
            $Type : 'UI.DataField',
            Value : CrossPlantConfigurableProduct,
            Label : 'CrossPlantConfigurableProduct',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductCollection,
            Label : 'ProductCollection',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductSeason,
            Label : 'ProductSeason',
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
        {
            $Type : 'UI.DataField',
            Value : TotMfgOrderPlannedTotalQty,
            Label : 'TotMfgOrderPlannedTotalQty',
        },
    ],
    UI.SelectionFields #filterBarMacro1 : [
        MasterProductionOrder,
        ProductionPlant,
        MRPController,
    ],
);

annotate service.ZZ1_I_COMBPRODORDAPI with {
    ManufacturingOrder @Common.Label : 'ManufacturingOrder'
};

annotate service.ZZ1_C_COMBINEDPRODORDER with @(
    UI.LineItem #tableMacro2 : [
        {
            $Type : 'UI.DataField',
            Value : CombinedOrder,
            Label : 'CombinedOrder',
        },
        {
            $Type : 'UI.DataField',
            Value : CrossPlantConfigurableProduct,
            Label : 'CrossPlantConfigurableProduct',
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
            Value : ProductSeason,
            Label : 'ProductSeason',
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
        {
            $Type : 'UI.DataField',
            Value : TotMfgOrderPlannedTotalQty,
            Label : 'TotMfgOrderPlannedTotalQty',
        },
    ]
);

annotate service.ZZ1_C_MASTERPRODORDER with {
    ProductionPlant @Common.Label : 'ProductionPlant'
};

annotate service.ZZ1_C_MASTERPRODORDER with {
    MRPController @Common.Label : 'MRPController'
};

annotate service.ZZ1_C_MASTERORDER_COMP with @(
    UI.SelectionFields #MasterComp : [Material],
    UI.LineItem #Componenti : [
    ],
    UI.LineItem #tableMacroComponents : [
        {
            $Type : 'UI.DataField',
            Value : FshMprodOrd,
            Label : 'FshMprodOrd',
        },
        {
            $Type : 'UI.DataField',
            Value : Material,
            Label : 'Material',
        },
        {
            $Type : 'UI.DataField',
            Value : EntryUnit,
            Label : 'EntryUnit',
        },
        {
            $Type : 'UI.DataField',
            Value : ComponentScrapInPercent,
            Label : 'ComponentScrapInPercent',
        },
        {
            $Type : 'UI.DataField',
            Value : OperationScrapInPercent,
            Label : 'OperationScrapInPercent',
        },
        {
            $Type : 'UI.DataField',
            Value : StockSegment,
            Label : 'StockSegment',
        },
    ],
);

annotate service.ZZ1_C_MFG_MASTEROPE with @(
    UI.LineItem #tableMacroOperations : [
        {
            $Type : 'UI.DataField',
            Value : MaterialGroup,
            Label : 'MaterialGroup',
        },
        {
            $Type : 'UI.DataField',
            Value : BillOfOperationsSequence,
            Label : 'BillOfOperationsSequence',
        },
        {
            $Type : 'UI.DataField',
            Value : ManufacturingOrderOperation,
            Label : 'ManufacturingOrderOperation',
        },
        {
            $Type : 'UI.DataField',
            Value : ManufacturingOrderOperation_2,
            Label : 'ManufacturingOrderOperation_2',
        },
    ]
);

annotate service.ZZ1_C_MFG_COMBINEDOPE with @(
    UI.LineItem #tableMacroCombinedOperations : [
        {
            $Type : 'UI.DataField',
            Value : MaterialGroup,
            Label : 'MaterialGroup',
        },
        {
            $Type : 'UI.DataField',
            Value : BillOfOperationsSequence,
            Label : 'BillOfOperationsSequence',
        },
        {
            $Type : 'UI.DataField',
            Value : ManufacturingOrderOperation,
            Label : 'ManufacturingOrderOperation',
        },
        {
            $Type : 'UI.DataField',
            Value : ManufacturingOrderOperation_2,
            Label : 'ManufacturingOrderOperation_2',
        },
    ]
);

annotate service.ZZ1_C_COMBORDER_COMP with @(
    UI.SelectionFields #CombinedComp : [Material],
    UI.LineItem #tableMacroCombinedComponents : [
        {
            $Type : 'UI.DataField',
            Value : Material,
            Label : 'Material',
        }
    ]
);

annotate service.ZZ1_C_MFG_OrderComp  with @(
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


