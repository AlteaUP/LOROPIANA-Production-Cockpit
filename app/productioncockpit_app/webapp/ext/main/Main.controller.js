sap.ui.define(
    [
        'sap/fe/core/PageController'
    ],
    function(PageController) {
        'use strict';

        var oController;

        return PageController.extend('productioncockpitapp.ext.main.Main', {
            /**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf productioncockpitapp.ext.main.Main
             */
            onInit: function () {
            //      PageController.prototype.onInit.apply(this, arguments); // needs to be called to properly initialize the page controller
                this.byId("IconTabFilterId").setSelectedKey("master");
                oController = this;
            //      PageController.prototype.onInit.apply(this, arguments); // needs to be called to properly initialize the page controller
                this.byId("IconTabFilterId").setSelectedKey("master");
                this.byId("Table1").attachSelectionChange(function (oEvent) {
                    if(oEvent.getParameters().selectedContext.length > 0){
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table1-content::CustomAction::componentsAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table1-content::CustomAction::operationsAction").setEnabled(true);
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table1-content::CustomAction::componentsAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table1-content::CustomAction::operationsAction").setEnabled(false);
                    }
                });
            },

            /**
             * Similar to onAfterRendering, but this hook is invoked before the controller's View is re-rendered
             * (NOT before the first rendering! onInit() is used for that one!).
             * @memberOf productioncockpitapp.ext.main.Main
             */
            //  onBeforeRendering: function() {
            //
            //  },

            /**
             * Called when the View has been rendered (so its HTML is part of the document). Post-rendering manipulations of the HTML could be done here.
             * This hook is the same one that SAPUI5 controls get after being rendered.
             * @memberOf productioncockpitapp.ext.main.Main
             */
            //  onAfterRendering: function() {
            //
            //  },

            /**
             * Called when the Controller is destroyed. Use this one to free resources and finalize activities.
             * @memberOf productioncockpitapp.ext.main.Main
             */
            //  onExit: function() {
            //
            //  }

            selectIconTabFilter: function(oEvent){
                if (oEvent.getSource().getSelectedKey() === "order") {
                    // Ottieni la tabella
                    var oTable = this.byId("Table"); // ID della tabella
                    var oBinding = oTable.getRowBinding(); // oTable.getBinding("rows") per Grid/Table classiche
                    var filterArray = []
            
                    // Costruisci i filtri (in base al tuo scenario)
                    if(this.byId("FilterBarMaster").getFilters().filters.length > 0){
                        for(var i = 0; i < this.byId("FilterBarMaster").getFilters().filters.length; i++){
                            var oFilter = new sap.ui.model.Filter(this.byId("FilterBarMaster").getFilters().filters[i].sPath, sap.ui.model.FilterOperator.EQ, this.byId("FilterBarMaster").getFilters().filters[i].oValue1);
                            filterArray.push(oFilter)
                            // Applica il filtro
                            if (oBinding) {
                                oBinding.filter(filterArray);
                            }
                        }
                    } else {
                        oBinding.filter([]);
                    }
                                
                } else if(oEvent.getSource().getSelectedKey() === "combined"){
                    var oTable = this.byId("Table2"); // ID della tabella
                    var oBinding = oTable.getRowBinding(); // oTable.getBinding("rows") per Grid/Table classiche
                    var filterArray = []
            
                    // Costruisci i filtri (in base al tuo scenario)
                    if(this.byId("FilterBarMaster").getFilters().filters.length > 0){
                        for(var i = 0; i < this.byId("FilterBarMaster").getFilters().filters.length; i++){
                            if(this.byId("FilterBarMaster").getFilters().filters[i].sPath === 'MasterProductionOrder'){
                                if(this.byId("Table1").getMDCTable().getRowBinding() !== undefined){
                                    var value = this.byId("Table1").getMDCTable().getRowBinding().aContexts[0].getValue().CombinedOrder
                                    var oFilter = new sap.ui.model.Filter("CombinedOrder", sap.ui.model.FilterOperator.EQ, value);
                                    filterArray.push(oFilter)
                                }
                            } else {
                                var oFilter = new sap.ui.model.Filter(this.byId("FilterBarMaster").getFilters().filters[i].sPath, sap.ui.model.FilterOperator.EQ, this.byId("FilterBarMaster").getFilters().filters[i].oValue1);
                                filterArray.push(oFilter)
                            }
                            if (oBinding) {
                                oBinding.filter(filterArray);
                            }
                        }
                    } else {
                        oBinding.filter([]);
                    }
                }
                /*if(oEvent.getSource().getSelectedKey() === 'master'){
                    this.byId("FilterBarMaster").setVisible(true);
                    this.byId("FilterBarCombined").setVisible(false);
                } else if(oEvent.getSource().getSelectedKey() === 'combined') {
                    this.byId("FilterBarMaster").setVisible(false);
                    this.byId("FilterBarCombined").setVisible(true);
                }*/
            } 

        });
    }
);
