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

