sap.ui.define(
    [
        'sap/fe/core/PageController'
    ],
    function(PageController) {
        'use strict';

        var oController;
        var keyRouting;

        return PageController.extend('productioncockpitapp.ext.view.Components', {
            /**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf productioncockpitapp.ext.view.Components
             */
            onInit: function () {
                this.getView().attachModelContextChange(() => {
                    const ctx = this.getView().getBindingContext();
                    if(ctx !== undefined && ctx !== null){
                        var newPathSplitted = ctx.sPath.split("/"); 
                        var newPath = newPathSplitted[0] + "/" + newPathSplitted[1];
                        ctx.sPath = newPath
                    }
                    console.log("View binding context:", ctx && ctx.getPath());
                });
            }

            /*onInit: function () {
                oController = this;
                keyRouting = ""
                console.log("ENTRATOOOOOO")
            //      PageController.prototype.onInit.apply(this, arguments); // needs to be called to properly initialize the page controller
                const oComponent = this.getOwnerComponent().getExtensionComponent();

                this.oRouter = oComponent.getRouter();
                this.oRouter.getRoute("ZZ1_C_MASTERORDER_COMPComponentsPage").attachPatternMatched(this.onObjectMatched, this);
            },

            onObjectMatched: function(oEvent) {
                console.log("objectMatched")
                oController.keyRouting = oEvent.getParameter("arguments").ZZ1_C_MASTERORDER_COMPKey
            },*/


            /**
             * Similar to onAfterRendering, but this hook is invoked before the controller's View is re-rendered
             * (NOT before the first rendering! onInit() is used for that one!).
             * @memberOf productioncockpitapp.ext.view.Components
             */
            //  onBeforeRendering: function() {
            //
            //  },

            /**
             * Called when the View has been rendered (so its HTML is part of the document). Post-rendering manipulations of the HTML could be done here.
             * This hook is the same one that SAPUI5 controls get after being rendered.
             * @memberOf productioncockpitapp.ext.view.Components
             */
            /*
            modifyDataBeforeRebind: function(oEvent){
                console.log("keyRouting "+oController.keyRouting)
                if(oController.keyRouting.indexOf(";") > -1){
                    var keyRoutingSplit = oController.keyRouting.split(";")
                    var filter = {}
                    var filters = []
                    for(var i=0; i<keyRoutingSplit.length; i++){
                        filter = new sap.ui.model.Filter("FshMprodOrd", sap.ui.model.FilterOperator.EQ, keyRoutingSplit[i])
                        filters.push(filter)
                    }
                    oEvent.mParameters.collectionBindingInfo.collectionBindingInfo.filters = filters
                } else {
                    oEvent.mParameters.collectionBindingInfo.collectionBindingInfo.filters = [new sap.ui.model.Filter("FshMprodOrd", sap.ui.model.FilterOperator.EQ, oController.keyRouting)]
                }
                
                
                console.log("FUNCTION modifyRebind")
            },*/

            /**
             * Called when the Controller is destroyed. Use this one to free resources and finalize activities.
             * @memberOf productioncockpitapp.ext.view.Components
             */
            //  onExit: function() {
            //
            //  }
        });
    }
);
