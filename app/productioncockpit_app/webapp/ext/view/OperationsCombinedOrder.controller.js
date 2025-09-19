sap.ui.define(
    [
        'sap/fe/core/PageController'
    ],
    function(PageController) {
        'use strict';

        var oController;

        return PageController.extend('productioncockpitapp.ext.view.Operations', {
            /**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf productioncockpitapp.ext.view.Operations
             */
            onInit: function () {
                oController = this;
                this.getView().attachModelContextChange(() => {
                    const ctx = this.getView().getBindingContext();
                    if(ctx !== undefined && ctx !== null){
                        var newPathSplitted = ctx.sPath.split("/"); 
                        var newPath = newPathSplitted[0] + "/" + newPathSplitted[1];
                        ctx.sPath = newPath
                    }
                    console.log("View binding context:", ctx && ctx.getPath());
                });
                this.byId("TableCombinedOperations").attachSelectionChange(function (oEvent) {
                    if(oEvent.getParameters().selectedContext.length > 0){
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::changeWCCombAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::addPhaseCombAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::deletePhaseCombAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::movePhaseCombAction").setEnabled(true);                        
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::changeWCCombAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::addPhaseCombAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::deletePhaseCombAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::movePhaseCombAction").setEnabled(false);                        
                    }
                });
            }

            /**
             * Similar to onAfterRendering, but this hook is invoked before the controller's View is re-rendered
             * (NOT before the first rendering! onInit() is used for that one!).
             * @memberOf productioncockpitapp.ext.view.Operations
             */
            //  onBeforeRendering: function() {
            //
            //  },

            /**
             * Called when the View has been rendered (so its HTML is part of the document). Post-rendering manipulations of the HTML could be done here.
             * This hook is the same one that SAPUI5 controls get after being rendered.
             * @memberOf productioncockpitapp.ext.view.Operations
             */
            //  onAfterRendering: function() {
            //
            //  },

            /**
             * Called when the Controller is destroyed. Use this one to free resources and finalize activities.
             * @memberOf productioncockpitapp.ext.view.Operations
             */
            //  onExit: function() {
            //
            //  }
        });
    }
);
