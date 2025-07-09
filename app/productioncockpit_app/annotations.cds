using CatalogService as service from '../../srv/cat-service';
annotate service.ZZ1_I_COMBPRODORDAPI with @(
    UI.LineItem #tableMacro : [
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
    ],
    UI.SelectionFields #filterBarMacro : [
        Product,
    ],
);

