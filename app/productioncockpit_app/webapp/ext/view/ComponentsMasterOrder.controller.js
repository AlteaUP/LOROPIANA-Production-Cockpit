sap.ui.define(
    [
        'sap/fe/core/PageController',
        'sap/ui/model/json/JSONModel'
    ],
    function(PageController, JSONModel) {
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
                this.byId("TableComponents").attachSelectionChange(function (oEvent) {
                    if(oEvent.getParameters().selectedContext.length > 0){
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::replacementCompMasterAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::integrationCompMasterAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::deleteCompMasterAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::closeCompMasterAction").setEnabled(true);                        
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::replacementCompMasterAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::integrationCompMasterAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::deleteCompMasterAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::closeCompMasterAction").setEnabled(false);                        
                    }
                });
            },

            onAfterRendering: function() {                
                sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--FilterBarMasterComp-content-btnSearch").firePress()
            },

            onReplacementCompMaster: function(){
                if(oController.pReplacementCompMasterDialog === null || oController.pReplacementCompMasterDialog === undefined){
                    oController.pReplacementCompMasterDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.ReplacementCompMasterDialog", oController);
                    oController.getView().addDependent(oController.pReplacementCompMasterDialog);
                }

                oController.pReplacementCompMasterDialog.open();

                 var selectedComponentsMasterArray = []
                 for(var i=0; i<oController.byId("TableComponents").getSelectedContexts().length; i++){
                    selectedComponentsMasterArray.push(oController.byId("TableComponents").getSelectedContexts()[i].getObject())
                 }

                 var oTable = oController.byId("ReplacementCompMasterTableId");
                    
                var oModel = new JSONModel();
                oModel.setData({ SelectedComponentsMaster: selectedComponentsMasterArray})
                oTable.setModel(oModel);
            },

            onCloseReplacementCompMasterDialog: function(){
                oController.pReplacementCompMasterDialog.close();
            }, 

            onConfirmReplacementCompMasterDialog: function(){
                oController.pReplacementCompMasterDialog.close();
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
